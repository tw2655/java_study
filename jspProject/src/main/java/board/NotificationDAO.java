package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class NotificationDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public NotificationDAO() {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uid = "oracle";
		String upw = "oracle";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, uid, upw);
			System.out.println("Connect");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	private void exit() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (ps != null) {
				ps.close();
			}
			
		} catch (Exception e) {e.printStackTrace();}
	}
	
	
	public ArrayList<NotificationDTO> selectAll() {
		ArrayList<NotificationDTO> notifications = new ArrayList<NotificationDTO>();
		String query = "select * from notification order by num desc";
		try {
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				// num, title, create_date, content
				NotificationDTO dto = new NotificationDTO(rs.getInt("num"), rs.getString("title"), rs.getString("create_date"), rs.getString("content"));
				notifications.add(dto);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			exit();
		}
		
		return notifications;
	}
}

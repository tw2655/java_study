package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class EventDAO {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public EventDAO() {
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
	
	
	public ArrayList<EventDTO> selectAll() {
		ArrayList<EventDTO> events = new ArrayList<EventDTO>();
		String query = "select * from event order by num desc";
		try {
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				// num, title, start_date, end_date
				EventDTO dto = new EventDTO(rs.getInt("num"), rs.getString("title"), rs.getString("start_date"), rs.getString("end_date"));
				events.add(dto);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			exit();
		}
		
		return events;
	}
}

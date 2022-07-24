package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AccommoDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;

	public AccommoDAO() {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "oracle";
		String pw = "oracle";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, pw);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<AccommoDTO> addAccommScore(ArrayList<AccommoDTO> accommoList) {
		String query = "SELECT TRUNC(avg(score), 1) score, count(*) cnt FROM review WHERE accomm_num = ?";
		
		try {
			for (AccommoDTO accommo : accommoList) {
				ps = conn.prepareStatement(query);
				ps.setInt(1, accommo.getNum());
				rs = ps.executeQuery();

				if(rs.next()) {
					accommo.setScore(rs.getDouble("score"));
					accommo.setReviewCnt(rs.getInt("cnt"));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return accommoList;
	}
	
	public ArrayList<AccommoDTO> addPrice(String sort, String whereQuery) {
		ArrayList<AccommoDTO> list = new ArrayList<>();
		String query = "";
		
		if(sort == null || sort == "" || sort.equals("SCORE")) {
			query = "SELECT a.accomm_num, ROUND(AVG(r.s_price), -3) result_s_price, ROUND(AVG(r.d_price), -3) result_d_price "
					+ "FROM accommodation a JOIN room r ON a.accomm_num = r.accomm_num " + whereQuery
					+ "GROUP BY a.accomm_num";
		}else if(sort.equals("LOWPRICE")) {
			query = "SELECT a.accomm_num, MIN(r.s_price) result_s_price, MIN(r.d_price) result_d_price "
					+ "FROM accommodation a JOIN room r ON a.accomm_num = r.accomm_num " + whereQuery
					+ "GROUP BY a.accomm_num";
		}else {
			query = "SELECT a.accomm_num, MAX(r.s_price) result_s_price, MAX(r.d_price) result_d_price "
					+ "FROM accommodation a JOIN room r ON a.accomm_num = r.accomm_num " + whereQuery
					+ "GROUP BY a.accomm_num";
		}
		System.out.println(query);
		
		try {
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();

			while (rs.next()) {
				AccommoDTO dto = new AccommoDTO();
				dto.setNum(rs.getInt("accomm_num"));
				dto.setsPrice(rs.getInt("result_s_price"));
				dto.setdPrice(rs.getInt("result_d_price"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	public ArrayList<AccommoDTO> addInfo(ArrayList<AccommoDTO> accommoList) {
		String query = "SELECT * FROM accommodation WHERE accomm_num = ?";
		
		try {
			for (int i = 0; i < accommoList.size(); i++) {
				AccommoDTO accommo = accommoList.get(i);
				
				ps = conn.prepareStatement(query);
				ps.setInt(1, accommo.getNum());
				rs = ps.executeQuery();

				if(rs.next()) {
					accommo.setName(rs.getString("name"));
					accommo.setAddress(rs.getString("address"));
					accommo.setThumnail(rs.getString("thumnail"));
					accommoList.set(i, accommo);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return accommoList;
	}
	
	//인덱스 -> 분리
	public ArrayList<AccommoDTO> filterByArea(String whereQuery) {
		ArrayList<AccommoDTO> list = new ArrayList<>();
		String query = "SELECT accomm_num FROM accommodation " + whereQuery;
		System.out.println(query);
		
		try {
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				AccommoDTO dto = new AccommoDTO();
				dto.setNum(rs.getInt("accomm_num"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
	public ArrayList<AccommoDTO> filterByDate(String whereQuery) {
		ArrayList<AccommoDTO> list = new ArrayList<>();
		String query = "SELECT accomm_num FROM accommodation " + whereQuery;
		System.out.println(query);
		
		try {
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				AccommoDTO dto = new AccommoDTO();
				dto.setNum(rs.getInt("accomm_num"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	 public ArrayList<AccommoDTO> filterByCondi(String whereQuery) {
		 ArrayList<AccommoDTO> list = new ArrayList<>();
		 String query = "SELECT DISTINCT accomm_num FROM accomm_condition " + whereQuery;
		 System.out.println(query);
		 
		 try {
				ps = conn.prepareStatement(query);
				rs = ps.executeQuery();
				
				while (rs.next()) {
					AccommoDTO dto = new AccommoDTO();
					dto.setNum(rs.getInt("accomm_num"));
					list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					if(rs != null) rs.close();
					if(ps != null) ps.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			return list;
	 }
	 
	 public ArrayList<AccommoDTO> filterBySearch(String whereQuery) {
			ArrayList<AccommoDTO> list = new ArrayList<>();
			String query = "SELECT a.accomm_num FROM accommodation a JOIN accomm_condition ac ON a.accomm_num = ac.accomm_num "
					+ "JOIN condition c ON ac.condi_num = c.num " + whereQuery;
			System.out.println(query);
			
			try {
				ps = conn.prepareStatement(query);
				rs = ps.executeQuery();
				
				while (rs.next()) {
					AccommoDTO dto = new AccommoDTO();
					dto.setNum(rs.getInt("accomm_num"));
					list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					if(rs != null) rs.close();
					if(ps != null) ps.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			return list;
		}

}

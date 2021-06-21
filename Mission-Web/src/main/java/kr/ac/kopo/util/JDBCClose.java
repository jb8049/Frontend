package kr.ac.kopo.util;


import java.sql.Connection;
import java.sql.Statement;

public class JDBCClose {
	
	public static void close(Connection conn, Statement pstmt) { // PreparedStatement, Statement 둘 다 사용하니까.. pstmt로 변수 설정 해놓으면 편함
		
		
		// 조금이라도 덜 수정하려고 pstmt라고 적음
		
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		if(conn !=null) {
				try {
					conn.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
		}
		
		
		
	}
}
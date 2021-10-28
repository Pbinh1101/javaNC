package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DungChung {
	public Connection cn;
	public void KetNoi() throws Exception{
		//B1: Xac dinh HQTCSDl
    	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    	System.out.println("Da xac dinh HQLCSDL");
    	//B2: Ket Noi
    	String url="jdbc:sqlserver://DESKTOP-CR0ABC5:1433;databaseName=QlSach;user=sa; password=123";
    	cn=DriverManager.getConnection(url);
    	System.out.println("Da ket noi");
	}
}

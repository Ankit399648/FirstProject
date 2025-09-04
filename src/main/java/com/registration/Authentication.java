package com.registration;

import java.sql.*;

import com.mysql.cj.jdbc.ServerPreparedStatement;

public class Authentication {
	
	Connection con;
	
	public Authentication() {
		String url="jdbc:mysql://localhost:3306/javabackend";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,"root","root");
		} 
		catch (Exception e) {
			System.out.println("Error starts here");
			e.printStackTrace();
		}
	}
	
	public boolean singup(String uname, String email, String password) {
		try {
			String query="select * from firstprojectauth where email=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				return false;
			}
			query= "insert into firstprojectauth (uname,email,password) values (?,?,?)";
			System.out.println("uname: "+uname+" email: "+email+" pass:"+password);
			ps=con.prepareStatement(query);
			ps.setString(1, uname);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.execute();
			return true;
		} 
		catch (Exception e) {
			System.out.println("Error starts here");
			e.printStackTrace();
		}
		return false;
	}
	
	
	public boolean login(String uname, String password) {
		try {
			String query="select * from firstprojectauth where uname=? and password=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, uname);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				return true;
			}
			return false;
		}
		catch(Exception e) {
			System.out.println("Error");
			e.printStackTrace();
		}
		return false;
	}
}

package com.ontimepizza.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ontimepizza.common.dto.ErrorDto;
import com.ontimepizza.dto.LoginDto;

public class LoginDao {
	private Connection con;
	private PreparedStatement psmt;
	private LoginDto login;
	private ErrorDto errordto;

	public LoginDao(LoginDto login, Connection con, ErrorDto errorDto) {
		this.con = con;
		this.errordto = errorDto;
		this.login = login;
	}

	public LoginDto verifyuser() {

		String query = "SELECT * FROM login WHERE username=? and password=?";
		LoginDto userInDb = null;
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, login.getUsername());
			psmt.setString(2, login.getPassword());
			ResultSet rs = psmt.executeQuery();
			while (rs.next()) {
				userInDb = new LoginDto();
				userInDb.setUsername("username");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return userInDb;

	}
}

package com.ontimepizza.listner;
import java.sql.Connection;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.ontimepizza.common.DBConnect;
import com.ontimepizza.common.dto.ErrorDto;

public class DBListner implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext  sc= sce.getServletContext();
		String driver=sc.getInitParameter("driver");
		String dburl=sc.getInitParameter("connectionString");
		String user=sc.getInitParameter("user");
		String password=sc.getInitParameter("password");
		
		ErrorDto errorDto=new ErrorDto();
		errorDto.setHasError(false);
		
		DBConnect connectDB= new DBConnect (driver,dburl,user,password,errorDto);
		Connection con = connectDB.getDbConnection();
		
		sc.setAttribute("con", con);
		sc.setAttribute("dbError", errorDto);
	}

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {

	}
}

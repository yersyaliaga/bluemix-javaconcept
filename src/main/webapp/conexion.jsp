<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>conexion</title>
</head>
<body>
<%
	Connection conexion =null;
	Statement sql = null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conexion =DriverManager.getConnection("jdbc:mysql://us-cdbr-iron-east-03.cleardb.net/ad_1357cae8a73862a","bb5df39a9a2922","336eb748");
		sql= conexion.createStatement();
		

	} catch (Exception e) {
		

	}
%>

</body>
</html>
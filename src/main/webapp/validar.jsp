<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <%@ page import ="java.sql.*" %>
<%
    String usuario = request.getParameter("usuario");    
    String clave = request.getParameter("clave");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://us-cdbr-iron-east-03.cleardb.net/ad_1357cae8a73862a","bb5df39a9a2922","336eb748");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from usuarios where usuario='" + usuario + "' and clave='" + clave + "'");
    if (rs.next()) {
        session.setAttribute("usuario", usuario);
         response.sendRedirect("bienvenido.jsp");
    } else {
       response.sendRedirect("error.jsp");
    }
%>
    </body>
</html>    


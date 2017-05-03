<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@include file="conexion.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
.mensaje_registrado{
	background: #99FF00;
	text-align: center;
	padding: 20px;
	font-size: 28px;
	margin: 30px auto;
	width: 450px;
}
.mensaje_error{
	background: #FF0000;
	text-align: center;
	padding: 20px;
	font-size: 28px;
	margin: 30px auto;
	width: 450px;
}
</style>
<title>Insert title here</title>
</head>
<body>
<%
		

	String codigo = request.getParameter("txtcodigo");
	String user = request.getParameter("txtusuario");
	String clave = request.getParameter("txtclave");
	
	if(codigo!=null && user!=null && clave!=null){
	
		
	String query = "insert into usuarios(codigo,usuario,clave) values('"+codigo+"','"+user+"','"+clave+"')";
	sql.executeUpdate(query);		
	if(sql != null){
		out.println("<div class='mensaje_registrado'>Usuario Registrado<br><img src='icon/check.png'></div>");
	}
	else{
		out.println("<div class='mensaje_error'>Error al Registrar<br><img src='icon/dialog-warning.png'></div>");
	}
	}
	
%>
<center><a href="index.jsp">Retornar</a></center>
</body>
</html>

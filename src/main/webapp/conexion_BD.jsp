
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>conexion</title>
        <style type="text/css">
            .mensaje_si{
                background: #00CCFF;
                text-align: center;
                padding: 20px;
                font-size: 28px;
            }
            .mensaje_no{
                background: #D8D8D8;
                text-align: center;
                padding: 20px;
                font-size: 28px;
            }
        </style>
    </head>
    <body>
        <%
            Connection conexion = null;
            Statement sql = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conexion = DriverManager.getConnection("jdbc:mysql://us-cdbr-iron-east-03.cleardb.net/ad_1357cae8a73862a", "bb5df39a9a2922", "336eb748");
                sql = conexion.createStatement();
                out.println("<div class='mensaje_si'>Conexión establecida<br><img src='icon/ConnectTo.png'></div>");

            } catch (Exception e) {
                out.println("<div class='mensaje_no'>Error en la Conexion <br><img src='icon/error.png'><br>" + e + "</div>");

            }
        %>

    </body>
</html>
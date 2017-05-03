<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form id="form_911240" class="appnitro"  method="post" action="validar.jsp">
					<div class="form_description">
			<h2>Inicio de Sesion</h2>
			<p></p>
		</div>						
			<ul >
			
					<li id="li_1" >
		<label class="description" for="element_1">Usuario </label>
		<div>
			<input id="element_1" name="usuario" class="element text small" type="text" maxlength="255" value=""/> 
		</div> 
		</li>		<li id="li_2" >
		<label class="description" for="element_2">Contraseña </label>
		<div>
			<input id="password" name="clave" class="element text small" type="password" maxlength="255" value=""/> 
		</div> 
		</li>
               
					<li class="buttons">
			   
			    
				<input id="saveForm" class="button_text" type="submit" name="submit" value="Ingresar" />
		</li>
			</ul>
		</form>	
</body>
</html>
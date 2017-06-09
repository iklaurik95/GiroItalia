<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eliminar corredor</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
</head>
<%@ page import="eus.azterketa.modelo.*"%>
<%@ page import="java.util.*"%>
<%
		
	if(request.getParameter("nombreApellido") != null){ //Eliminar botoiasakatzerakoan hau ejekutatuko da.
		String nombreApellido = request.getParameter("nombreApellido");
		String [] partes = nombreApellido.split(", ");
		String nombre = partes[0];
		String apellido = partes[1];
		
		ModeloCorredor modeloCorredor = new ModeloCorredor();
		
		if(modeloCorredor.comprobar(nombre,apellido)){
			modeloCorredor.eliminar(nombre,apellido);
		}else{
			System.out.print("El corredor no existe");
		}
	}
		

%>
<body>
	<div class="container">
		<br> <br>
		<div class="row">
			<div class="col-md-12">
				<div class="jumbotron">
					<h1>Eliminar corredor</h1>
					<h6>Escriba un nombre corredor y se eliminará de la base de datos junto con sus resultados de etapa</h6>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 col-md-offset-2">
				<form>
					<div class="form-group">
						<h3>
							<span class="label label-default">Nombre de corredor</span>
						</h3>
						<input type="text" class="form-control" id="" name="nombreApellido" placeholder="Nombre, Apellido"/>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" value="eliminar" name=""
								class="btn btn-default" />
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulario de resultados</title>
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
	ModeloCorredor modeloCorredor = new ModeloCorredor();
	ModeloEtapa modeloEtapa = new ModeloEtapa();
	
	ArrayList<Corredor> corredores = modeloCorredor.selectAll();
	ArrayList<Etapa> etapas = modeloEtapa.selectAll();
	


%>


<body>
	<div class="container">
		<br> <br>
		<div class="row">
			<div class="col-md-12">
				<div class="jumbotron">
					<h1>Resultados de etapa</h1>
					<h6>Formulario para introducir posiciones de corredores en
						etapas</h6>
				</div>

			</div>
		</div>
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<form action="">
					<div class="form-group">
						<h3>
							<span class="label label-default">Corredor</span>
						</h3>

						<select class="form-control" name="idCorredor">
						<%
							for(Corredor corredor:corredores){ 
						%>
							<option value="<%=corredor.getId()%>"><%=corredor.getNombre()%> <%=corredor.getApellido()%></option>
						<%
							}
						%>
						</select>

					</div>

					<div class="form-group">
						<h3>
							<span class="label label-default">Etapa</span>
						</h3>
						<%
							for(Etapa etapa:etapas){
						%>
						<div class="radio">
							<input type="radio" name="idEtapa" id="" value="<%=etapa.getId()%>"><%=etapa.getPueblo_salida()%> - <%=etapa.getPueblo_llegada()%></input>
						</div>
						<%
							}
						%>
					</div>
					
					<div class="form-group">
						<h3>
							<span class="label label-default">Posicion</span>
						</h3>
						<input type="text" class="form-control" id="" name="posicion"
							size="5" />
					</div>

					<div class="form-group">
						<button type="submit" value="guardar" class="btn btn-default">Guardar</button>
					</div>
				</form>
			</div>

		</div>
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<h2>Posicion de todos los corredores</h2>
				<table class="table">
					<tr>
						<th>id etapa</th>
						<th>id corredor</th>
						<th>posicion</th>
					</tr>
					<tr>
						<td>1</td>
						<td>1</td>
						<td>13</td>
					</tr>
					<tr>
						<td>1</td>
						<td>2</td>
						<td>4></td>
					</tr>
					<tr>
						<td>2</td>
						<td>4</td>
						<td>56</td>
					</tr>
				</table>
			</div>
		</div>
		<!-- row bukaera -->
	</div>
</body>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</html>
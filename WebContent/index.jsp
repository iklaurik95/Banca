<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulario Banca</title>
</head>
<%@ page import="eus.kutxa.modelo.*"%>
<%@ page import="java.util.*"%>
<%
	ModeloHerria modeloHerria = new ModeloHerria();
	ModeloBezero modeloBezero = new ModeloBezero();
		
	ArrayList<Herria> herriak = modeloHerria.select();
	ArrayList<Bezero> bezeroak = modeloBezero.selectAll();
	
	String izena = request.getParameter("nombre");
	String abizena = request.getParameter("apellido");
	//String herria = request.getParameter("ciudad");
	
	Bezero bezero = new Bezero();
	bezero.setIzena(izena);
	bezero.setAbizena(abizena);
	
%>

<body>
	<h1>AÑADIR CLIENTE</h1>
	<br>
	Nombre:<input type="text" name="nombre" value=""><br>
	Apellido:<input type="text" name="apellido" value="">
	<br>
	<input type="submit" name="eliminar" value="Eliminar">
	<br>
	<h3>
		<span class="label label-default">Ciudad</span>
	</h3>
		<div class="radio">
		<%for(Herria herria:herriak){ %>
			<input type="radio" name="ciudad" id="" value="<%=herria.getId()%>"><%=herria.getIzena()%></input>
		<%}%> 			
		</div>	
	<input type="submit" name="guardar" value="Guardar">
	<br>
	<h1>DATOS CLIENTE</h1>
	<br>
	<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<form action="">				
					<div class="form-group">
						<h3>
						Elige un cliente: <span class="label label-default"></span>
						</h3>

						<select class="form-control" name="cliente">
							<%for(Bezero bezero:bezeroak){ %>
							<%
							 
							%>
							<option value=""></option>
							<%}%> 
						</select>
					</div>
				</form>
			</div>
	</div>
	
	<div class="row">		
			<div class="col-md-10 col-md-offset-1">
				<h2>Datos cliente</h2>
				<table class="table">
					<tr>
						<th>izena</th>
						<th>abizena</th>
						<th>herria</th>
					</tr>
					
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>					
				</table>
			</div>
	</div>
	
	<div class="row">		
			<div class="col-md-10 col-md-offset-1">
				<h2>Cuenta cliente</h2>
				<table class="table">
					<tr>
						<th>id</th>
						<th>izena</th>
						<th>saldoa</th>
					</tr>
					
					<tr>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					
				</table>
			</div>
	</div>
</body>
</html>
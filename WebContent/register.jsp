<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<html>
<head>
<s:head />
<sx:head />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<sx:tabbedpanel id="formCrud">
		<sx:div label="MODULO CRUD REGISTER">
			<s:form action="alta.action" method="post">
				<s:push value="register">
					<s:hidden key="id" />
					<s:textfield key="nombre" label="NOMBRE" />
					<s:radio name="genero" label="GENERO"
						list="{'Masculino','Femenino'}" />
					<s:select name="ciudad" label="CIUDAD"
						list="{'Puebla','Oaxaca','Tlaxcala','Hidalgo'}" headerkey="1"
						headervalue="SeleccionaCiudad" />
					<s:textarea key="descripcion" label="DESCRIPCION" />
					<s:checkbox name="desarrollador"
						label="¿TIENE EXPERIENCIA EN SIABEL?"></s:checkbox>
					<s:submit value="Aceptar"></s:submit>
					<s:reset value="Limpiar"></s:reset>
				</s:push>
			</s:form>
			<h2>LISTADO DE PERSONAS</h2>
			<br>
			<table>
				<tr>
					<th>ID</th>
					<th>NOMBRE</th>
					<th>GENERO</th>
					<th>CIUDAD</th>
					<th>DESCRIPCIÓN</th>
					<th>DESARROLLADOR</th>
					<th>EDITAR</th>
					<th>ELIMINAR</th>
				</tr>
				<s:iterator value="listRegister">
					<tr>
						<td><s:property value="id" /></td>
						<td><s:property value="nombre" /></td>
						<td><s:property value="genero" /></td>
						<td><s:property value="ciudad" /></td>
						<td><s:property value="descripcion" /></td>
						<td><s:property value="desarrollador" /></td>
						<td><s:url id="editURL" action="editar">
								<s:param name="id" value="%{id}"></s:param>
							</s:url>
							<s:a href="%{editURL}">EDITAR</s:a>
						</td>
						<td><s:url id="deleteURL" action="baja">
								<s:param name="id" value="%{id}"></s:param>
							</s:url>
							<s:a href="%{deleteURL}">ELIMINAR</s:a>
						</td>
					</tr>
				</s:iterator>
			</table>
		</sx:div>
	</sx:tabbedpanel>
</body>
</html>
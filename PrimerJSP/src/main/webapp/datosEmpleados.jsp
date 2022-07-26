<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <jsp:include page="plantillas/cabecera.jsp"></jsp:include>
    
     <% if (request.getParameter("provincia")==null){ 
     	response.sendRedirect("altaEmpleado.jsp");
     	%>
     	<% } %>
     	
     <h2>Datos personales del empleado </h2>
     <ul>
     <li>Nombre: <%=request.getParameter("nombre") %></li>
     <li>Apellido: <%= request.getParameter("apellidos") %></li>
	 <li>Codigo Provincia: <%=request.getParameter("provincia") %></li>
	 <li>Conocimientos: 
	  <% String[] conocimientos=request.getParameterValues("conocimientos[]");
	  if (conocimientos ==null || conocimientos.length==0) { 
		%>
			No hay conocimientos marcados </li>
	   <%}else { %>
			<ul>
		<%for (String c : conocimientos) {
				out.println("<li>"+c+"</li>");
		}
		%>
			</ul>
			</li>
		<% } %>
				
	 <li>Fecha nacimiento <%=request.getParameter("fecha") %></li>
	 <li>Experiencia: <%=request.getParameter("experiencia") %></li>
    </ul>
 
    <jsp:include page="plantillas/pie.jsp"></jsp:include>
    
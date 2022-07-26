<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="plantillas/cabecera.jsp"></jsp:include>
 <h2>Datos personales del empleado </h2>
        <form action="datosEmpleados.jsp" method="get">
            <div>
                <label for="Nombre">Nombre:</label>
                <input type="text" name="nombre" id="nombre">
            </div>

            <div>
                <label for="apellidos">Apellidos:</label>
                <input type="text" name="apellidos" id="apellidos">
            </div>

            <div>
                <label for="provincia">Provincia: </label>
                <select name="provincia" id="provincia">
                    <option value="4">Almería</option>
                    <option value="11">Cádiz</option>
                    <option value="14" selected>Córdoba</option>
                    <option value="18">Granada</option>
                    <option value="21">Huelva</option>
                    <option value="23">Jaen</option>
                    <option value="29">Málaga</option>
                    <option value="41">Sevilla</option>
                </select>
            </div>
            <div>
                <label for="">Conocimientos:</label>
            </div>
            <div>
                <label for="java">Java</label>
                <input type="checkbox" name="conocimientos[]" id="java" value="java">
                <label for="sql">SQL</label>
                <input type="checkbox" name="conocimientos[]" id="sql" value="sql">
                <label for="html">HTML</label>
                <input type="checkbox" name="conocimientos[]" id="html" value="html">
                <label for="css">CSS</label>
                <input type="checkbox" name="conocimientos[]" id="css" value="css">
            </div>

            <div>
                <label for="fecha">Fecha Nacimiento:</label>
                <input type="date" name="fecha" id="fecha">
            </div>

            <div>
                <label for="experiencia">Experiencia (años):</label>
                <input type="number" name="experiencia" id="experiencia" 
                    value="0" min="0" max="50">
            </div>
            <input type="submit" value="Enviar">
        </form>

<jsp:include page="plantillas/pie.jsp"></jsp:include>
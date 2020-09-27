<%-- 
    Author     : JeffMenca
--%>
<%@page import="operations.Calculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<head>
    <title>Calculadora 201930643</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<center><h1>Calculadora</h1></center>
<h2>Ingrese los numeros</h2>
<body style="background-color:powderblue;">
    <form method="GET" action="index.jsp">
        <label>Numero 1: </label>
        <input type="text" name="numero1" />
        <br />
        <br />
        <label>Numero 2: </label>
        <input type="text" name="numero2" />
        <br />
        <h2>Ingrese el tipo de operacion</h2>
        <div>
            <input type="checkbox" name="suma" value="1" />Suma<br/>        
            <input type="checkbox" name="multiplicacion" value="1" />Multiplicacion<br/>
            <input type="checkbox" name="mayor" value="1" />Numero mayor<br/> 
            <input type="checkbox" name="potencia" value="1" />Potencia<br/> 
            <input type="checkbox" name="binarios" value="1" />Binarios<br/> 
        </div>
        <br />
        <input type="submit" value="Calcular" />
    </form>
    <% if (!(request.getParameter("numero1") == null) && !(request.getParameter("numero2") == null)) {
            try {
                int numero1 = Integer.parseInt(request.getParameter("numero1"));
                int numero2 = Integer.parseInt(request.getParameter("numero2"));
                Calculo calculo = new Calculo(numero1, numero2);
    %>

    <h2> Resultados: </h2>
    <%if (request.getParameter("suma") != null) {%>
    <h3>Suma: <%=calculo.getSuma()%></h3>
    <%}%>
    <%if (request.getParameter("multiplicacion") != null) {%>
    <h3>Multiplicacion: <%=calculo.getMultiplicacion()%></h3>
    <%}%>
    <%if (request.getParameter("mayor") != null) {%>
    <h3>Mayor: <%=calculo.getMayor()%></h3>
    <%}%>
    <%if (request.getParameter("potencia") != null) {%>
    <h3>Potencia: <%=calculo.getPotencia()%></h3>
    <%}%>
    <%if (request.getParameter("binarios") != null) {%>
    <h3>Numero 1 en binario: <%=calculo.getBinario1()%></h3>
    <h3>Numero 2 en binario: <%=calculo.getBinario2()%></h3>  
    <%}
    } catch (Exception e) {%>
    <h1>No ingreso numeros validos.</h1>
    <%}
        }%>
</body>




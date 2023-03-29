<%-- 
    Document   : jsp2
    Created on : 15 mar 2023, 21:31:02
    Author     : CrX26
--%>

<%@page import="org.cris.Datos"%>
<%@page import="org.cris.Negocio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        
    </head>
    <body>
        
        <h1 class="display-3"><center>Tabla de datos</center></h1>
       <hr>
<%
            Negocio negocio = new Negocio();
            int num =(int)(Math.random()*100);
            String cad = String.format("?num=%d", num);
        %>
      

        

        <table class="table table-striped"  class="table table-bordered">

  <tbody>
    <tr class="table-active">
        <td>Nombre</td>
        <td>Calificaciones</td>
     </tr>
    <%
                if (negocio.getLista() != null && !negocio.getLista().isEmpty()) {
                    for(Datos datito : negocio.getLista()){
            %>
        
        <tr>
              
      <td><%=datito.getNombre()%></td>
      <td><%=datito.getCal()%></td>
    </tr>
  </tbody>
  <%
                    }
                }
            %>
</table>
<div class="container">
  <div class="row">
    <div class="col align-self-start">
        <figure class="text-center">
  <blockquote class="blockquote">
      <a href="jsp1.jsp<%=cad%>" style="text-decoration: none" class="fs-3"><font color="black">Regresar a Jsp1 con dato</a>
  </blockquote>
</figure>
      
    </div>
  <div class="col align-self-center" >
         <figure class="text-center">
  <blockquote class="blockquote">
      <a href="jsp1.jsp" style="text-decoration: none" class="fs-3"><font color="black">Regresar a Jsp1 sin dato</a>
  </blockquote>
</figure>
     
    </div>
  </div>
</div>
       
        
        
    </body>
</html>

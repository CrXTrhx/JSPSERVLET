<%-- 
    Document   : jsp2
    Created on : 15 mar 2023, 21:31:02
    Author     : CrX26
--%>

<%@page import="java.util.List"%>
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
            int num =(int)(Math.random()*10);
            String cad = String.format("?num=%d", num);
            
            int i = 0;
            List<Datos> lista = null;
            String id = null;
            String borrar = null;
            session = request.getSession( true );
            
            if( session != null )
            {
                if( session.getAttribute("lista") != null )
                {
                    lista = (List)session.getAttribute( "lista" );
                }
            }
            id = request.getParameter( "id" );
            borrar = request.getParameter( "borrar" );
            if( "Submit".equals( borrar ) )
            {
                lista.remove( Integer.parseInt(id) );
            }
        %>
        <div class="container container-xl">
        <table class="table table-dark table-sm table-bordered border-white border-3">
            <tr>
                <td>#</td>
                <td>Id</td>
                <td>Nombre</td>
                <td>Calificaciones</td>
                <td>Email</td>
                <td>Contacto</td>
                <td>Estado</td>
                <td>Semestre</td>
                <td>Sexo</td>
                <td>Acciones</td>
            </tr>
            <%
              if( lista != null && !lista.isEmpty() )
              {
                for( Datos datos : lista)
                {
            %>
            <tr>
                <td><%=i + 1%></td>
                <td><%=i%></td>
                <td><%=datos.getNombre( )%></td>
                <td><%=datos.getCal()%></td>
                <td>
                    <a href="jsp2.jsp?id=<%=i%>&borrar=Submit">Borrar</a> 
                    <a href="jsp3.jsp?id=<%=i++%>&editar=Submit">Editar</a> 
                </td>
            </tr>
            <%
                }
              }
            %>
        </table>
        </div>
<div class="container-x">
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
    <div class="col align-self-center" >
         <figure class="text-center">
  <blockquote class="blockquote">
      <a href="jsp3.jsp" style="text-decoration: none" class="fs-3"><font color="black">Ir a Jsp3</a>
  </blockquote>
</figure>
     
    </div>
  </div>
</div>
    </body>
</html>

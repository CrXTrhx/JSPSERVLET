<%-- 
    Document   : jsp3
    Created on : 16 mar 2023, 13:04:14
    Author     : alumno
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.cris.Datos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String nombre = null;
            String calif = null;
            String sexo = null;
            String email = null;
            String tel = null;
            String semestre = null;
            String guardar = null;
            String id = null;
            String editar = null;
            String accion = "guardar";
            String actualizar = "guardar";
            Datos datos = null;
            Integer idx = null;
            List<Datos>lista = null;
            
            session = request.getSession( true );
            if( session != null )
            {
                if( session.getAttribute("lista") == null )
                {
                    session.setAttribute("lista", new ArrayList<Datos>());
                }
                lista = (List)session.getAttribute("lista");
            }
            nombre = request.getParameter( "nombre" );
            calif = request.getParameter( "calif" );
            sexo = request.getParameter( "sexo" );
            tel = request.getParameter( "tel" );
            email = request.getParameter( "email" );
            semestre = request.getParameter( "semestre" );
            guardar = request.getParameter( "guardar" );
            id = request.getParameter( "id" );
            editar = request.getParameter( "editar" );
            actualizar = request.getParameter( "actualizar" );
            
            if( "Submit".equals( editar ) )
            {
                idx = Integer.parseInt( id );
                if( idx < lista.size() )
                {
                    datos = lista.get( idx );
                }
                accion = "actualizar";
            }
            
            if( "Submit".equals( guardar ) || "Submit".equals( actualizar ) )
            {
                if( "Submit".equals( guardar ) )
                {
                    datos = new Datos( );
                }
                else
                {
                    datos = lista.get( Integer.parseInt( id ) );
                }
                datos.setNombre(nombre);
                datos.setCal( Float.parseFloat( calif ) ); 
                if( "Submit".equals( guardar ) )
                {
                    lista.add( datos );
                
        %>
                <h1>EXITO!</h1>
                <script>
                    console.log("Exito");
                </script>
                <a href="jsp2.jsp">Ir a jsp2 </a>
        <%
            }
            }
            if( datos == null )
            {
                datos = new Datos( );
                datos.setNombre( "" );
                datos.setCal( 0f );

            }
            if( !"Submit".equals( guardar ) && !"Submit".equals( actualizar ) )
            {
        %>  
        <div class="container xl">
  
        <form id="form1">
            
            <table border="1">
                <tr>
                    <td>Nombre</td>
                    <td><input id="nombre" name="nombre" value="<%=datos.getNombre()%>" type="text"/></td>

                </tr>
                <tr>
                    <td>Calificación</td>
                    <td><input id="calif" name="calif" value="<%=datos.getCal()%>" type="number"/>
                        <%
                            if( "Submit".equals( editar ) )
                            {
                        %>
                                <input type="hidden" name="id" id="id" value="<%=id%>" />
                        <%
                            }
                        %>
                    </td>
                </tr>
                <tr>
                    
                    <td>Sexo</td>
                    <td>
                        <input type="radio" id="sexo" name="sexo" value="Hombre">
                        <label for="sexo">Hombre</label><br>
                        <input type="radio" id="sexo" name="sexo" value="Mujer">
                        <label for="sexo">Mujer</label><br>
                        <input type="radio" id="sexo" name="sexo" value="Otro">
                        <label for="sexo">Otro</label>
                    </td>
                    
                </tr>
                
                <tr>
                    <td>
                        Email
                    </td>
                    <td>
                    <input type="email" id="email" name="email" value="<%=datos.getEmail()%>" placeholder="ejemplo@ejemplo.com">
                    </td>
                </tr>
                
                <tr>
                    <td>Contacto</td>
                    <td>
                        <input type="tel" id="tel" name="tel" pattern="[0-9]{2}-[0-9]{4}-[0-9]{4}" placeholder="12-3456-7891" value="<%=datos.getTel()%>">
                        <br>
                        <small>Formato 12-1234-1234</small>
                    </td>
                </tr>
                          
                <tr>
                    <td>Estado</td>
                    <td>
                        <div class="input-group mb-3">
                            <select class="form-select" id="inputGroupSelect01">
                              <option selected>Elige</option>
                              <option value="Aguascalientes">Aguascalientes</option>
                              <option value="Baja-California">Baja California</option>
                              <option value="Baja-California-Sur">Baja California Sur</option>
                              <option value="Campeche">Campeche</option>
                              <option value="Coahuila">Coahuila</option>
                              <option value="Colima">Colima</option>
                              <option value="Chiapas">Chiapas</option>
                              <option value="Chihuahua">Chihuahua</option>
                              <option value="Durango">Durango</option>
                              <option value="CDMX">CDMX</option>
                              <option value="Guanajuato">Guanajuato</option>
                              <option value="Guerrero">Guerrero</option>
                              <option value="Hidalgo">Hidalgo</option>
                              <option value="Jalisco">Jalisco</option>
                              <option value="México">México</option>
                              <option value="Michoacán">Michoacán</option>
                              <option value="Morelos">Morelos</option>
                              <option value="Nayarit">Nayarit</option>
                              <option value="Nuevo-León">Nuevo León</option>
                              <option value="Oaxaca">Oaxaca</option>
                              <option value="Puebla">Puebla</option>
                              <option value="Querétaro">Querétaro</option>
                              <option value="Quintana-Roo">Quintana Roo</option>
                              <option value="San-Luis-Potosí">San Luis Potosí</option>
                              <option value="Sinaloa">Sinaloa</option>
                              <option value="Sonora">Sonora</option>
                              <option value="Tabasco">Tabasco</option>
                              <option value="Tamaulipas">Tamaulipas</option>
                              <option value="Tlaxcala">Tlaxcala</option>
                              <option value="Veracruz">Veracruz</option>
                              <option value="Yucatán">Yucatán</option>
                              <option value="Zacatecas">Zacatecas</option>
                            </select>
                          </div>
                    </td>
                </tr>
                
                <tr>
                    <td>Semestre</td>
                    <td>
                    <input id="semestre" name="semestre" min="1" max="6" step="1" value="<%=datos.getSemestre()%>" type="number"/>
                        
                    </td>
                </tr>
                
                <tr>
                    <td colspan="2">
                        
                        <input type="submit" id="Guardar" name="<%=accion%>" />
                    </td>
                </tr>
            </table>
        </form>
</div>
        <%
            }
        %>
    </body>
</html>

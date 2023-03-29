<%-- 
    Document   : jsp1
    Created on : 13 mar 2023, 23:21:42
    Author     : CrX26
--%>

<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
               
        <h1 class="display-3"><center>Números</center></h1>
        <a href="jsp2.jsp" style="text-decoration: none" class="fs-3"><font color="black"><center>Ir a Jsp2</center></a>
        <hr>
         
   
      
  
    
      


                <% String num = request.getParameter("num");%>
                
                <%
                    int numero=0;
                    if (num != null && !num.isEmpty()) {
                            numero=Integer.parseInt(num);
                        }
                %>
                <%
                    if (num != null && !num.isEmpty()) {
                    List<Integer> numAle=new ArrayList<>();
                    for (int i = 0; i < numero; i++) {
                            int numerosAle=(int)(Math.random() * 100);
                            numAle.add(numerosAle);
                %>
                <div class="container" style="align-items: center" >
                <div class="row align-items-start" >
                     <div class="col">
                    <h2>El número es: <%=numerosAle%></h2>
                </div>
                <%
                    }
                    Collections.sort(numAle);
                %>
                <div class="col" >
                <h2>Los números ordenados son:</h2>
                
                <%
                    for(int numeAle : numAle){ %>
                    <h2><%out.print(numeAle);%></h2>
                <%
                    }
                    }
                    else{
                %>
                    <h1>Sin dato</h1></div></div>
                      </div>
                <%
                    }
                %>
                
                
                


    </body>
</html>

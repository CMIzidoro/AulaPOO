<%-- 
    Document   : indexCliente
    Created on : 9 de mai. de 2022, 21:38:39
    Author     : Fatec
--%>

<%@page import="model.cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Exception requestEx = null;
    ArrayList<cliente> listCliente = new ArrayList<>();
   
    int countCliente = 0;
 
    try{
     
        countCliente = cliente.getCount();
        listCliente = cliente.getList();
        
        
    }catch(Exception e){
        requestEx = e;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index - JDBC | artistas</title>
    </head>
    <body>
        <h1>JDBC</h1>
        <h2>Lista de Clientes</h2>
        <h2>Clientes <%=countCliente %> registros</h2>
        <%if(requestEx!=null){%>
        <<h3 style="color:red"><%= requestEx.getMessage() %> </h3>
        <%}%>
        <table border="1">
            <tr><th>id</th><th>name</th></tr>
            <%for(cliente a: listCliente){%>
            <tr>
                <td><%= a.getId() %></td>
                <td><%= a.getName() %></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>

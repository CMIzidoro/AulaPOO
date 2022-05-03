<%-- 
    Document   : Index
    Created on : 2 de mai. de 2022, 20:55:54
    Author     : Fatec
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.fatec.sp.gov.modelo.Disciplina"%>
<%
    Disciplina TG1 = new Disciplina("Trabalho de Gradução","TG1");
     Disciplina POO = new Disciplina("Programação orientada a Objeto","POO");
     Disciplina Cal = new Disciplina("Calculo","Cal");
     Disciplina Est = new Disciplina("Estrutura de dados","Est");
     Disciplina LabEng = new Disciplina("Laboratorio de Engenarioa de Software","LabEng");
     Disciplina LabBanco = new Disciplina("Laboratorio de Banco de dados","LabBanco");
     Disciplina PDisPoniveis = new Disciplina("Programação para DisPoniveis","PDM");
    Disciplina Topicos = new Disciplina("Topicos especificos","TE");
     ArrayList<Disciplina> lista = new ArrayList<>();
     lista.add(TG1);lista.add(POO);
      lista.add(LabEng);lista.add(Est);
       lista.add(LabBanco);lista.add(PDisPoniveis);
        lista.add(Topicos);lista.add(Cal);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>POO</title>
    </head>
    <body>
        <h1>Cassio Martinez </h1>
        <%java.util.Date now = new java.util.Date();%>
        <h3><%= now %></h3>
        <h2>Lista de pessoas</h2>
        
        <table border="1">
            <tr>
                <th>Nome disciplina</th>
                <th>Ementa</th>
            </tr>
            <%for(Disciplina p: lista){%>
            <tr>
                <td><%= p.getNome() %></td>
                <td><%= p.getSigla()%></td>
            </tr>
            <%}%>
        </table>
        
        
    </body>
</html>

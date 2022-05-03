<%-- 
    Document   : Index
    Created on : 2 de mai. de 2022, 20:55:54
    Author     : Fatec
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.fatec.sp.gov.modelo.Disciplina"%>
<%
    Disciplina TG1 = new Disciplina("Trabalho de Gradução","TTG003A","Quinta","O estudante elaborará, sob a orientação de docente, um Trabalho de Graduação, e o apresentará perante uma banca examinadora. As disciplinas de Projetos deverão subsidiar o trabalho de graduação, com temas e propostas de projetos, casos, etc.");
     Disciplina POO = new Disciplina("Programação orientada a Objeto","POO","Segunda","Conceitos e evolução da tecnologia de orientação a objetos. Limitações e diferenças entre o paradigma da programação estruturada em relação à orientação a objetos. Conceito de objeto, classe, métodos, atributos, herança, polimorfismo, agregação, associação, dependência, encapsulamento, mensagem e suas respectivas notações na linguagem padrão de representação da orientação a objetos. Implementação de algoritmos orientado a objetos utilizando linguagens de programação. Aplicação e uso das estruturas fundamentais da orientação a objetos.");
     Disciplina Cal = new Disciplina("Calculo","MCA002A","Quinta-feira","Função real de variável real. Limites e continuidade. Derivadas. Aproximação de funções. Integrais de Reimann. Métodos de integração. Aplicação de cálculo integral. Função real a mais de uma variável real. Derivadas parciais. Diferencial total. Elementos de equações diferenciais.");
     Disciplina Est = new Disciplina("Estrutura de dados","IED001A","Quarta-feira","Pilhas, filas, alocação dinâmica, recursividade, listas encadeadas, tabelas de espalhamento e árvores.");
     Disciplina LabEng = new Disciplina("Laboratorio de Engenarioa de Software","IES301A","Quarta-feira","Desenvolvimento de um software utilizando os conhecimentos adquiridos ao longo do curso. A elaboração deve abordar as disciplinas de requisitos, análise e projeto, implementação, implantação e gerência de projetos. O processo de desenvolvimento, assim como a técnica fica a critério de acordo entre professor e aluno.");
     Disciplina LabBanco = new Disciplina("Laboratorio de Banco de dados","IBD100A","Segunda-feira","Tecnologias emergentes de mercado que serão aplicadas em laboratório");
     Disciplina PDisPoniveis = new Disciplina("Programação para DisPoniveis","ILP513A","Terça","Ambientes de programação para dispositivos móveis. Emuladores. Interface gráfica, serviços baseados em localização, armazenamento de dados persistentes, serviços de telefonia e comunicação entre processos. Desenvolvimento de aplicações com J2ME.");
    Disciplina Topicos = new Disciplina("Topicos especificos","ITE002A","Sabado","Discussão e apresentação de temas atuais da área de Tecnologia da Informação, de interesse à formação dos profissionais. Inovações e aplicações diferenciadas em informática");
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
                <th>Sigla</th>
                <th>Dia da Semana</th>
                <th>Ementa</th>
            </tr>
            <%for(Disciplina p: lista){%>
            <tr>
                <td><%= p.getNome() %></td>
                <td><%= p.getSigla()%></td>
                <td><%= p.getDiaDaSemana()%></td>
                <td><%= p.getEmenta()%></td>
            </tr>
            <%}%>
        </table>
        
        
    </body>
</html>

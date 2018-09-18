<%-- 
    
    Created on : 03/09/2018, 08:24:29
    Author     : Daiana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="web.java.mapping.ListagemArquivos"%>

<%@page import="web.java.mapping.ListagemArquivos"%> 

<%@include file="/master/master.jsp" %>

<a href="/calendarioAluno.jsp"></a>
<br/>

<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SchoolShare | Calendario</title>
    </head>
    <body>
        <h1>Calendário</h1>
        
        
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script> 
<html>
<head>
    <meta charset="utf-8" />
    <title>Calendário jQuery</title>    
</head>
<body>
    <label>Data:<input type="text" id="calendario"/></label> <script>
$(function() {
    $( "#calendario" ).datepicker();
});
</script>

 </body>


<%@include file="/master/rodape.jsp" %>    
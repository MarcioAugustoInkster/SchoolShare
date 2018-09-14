<%@page import="web.java.admin.SessaoAdmin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="welcome-user-session">
  <%
      String pegaSessao = (String)SessaoAdmin.retornaSessao(request);
      
      out.println("Usuário:&nbsp;&nbsp;&nbsp;&nbsp;<label>");
      out.println(pegaSessao + "</label>");
      out.println("&nbsp;&nbsp;&nbsp;<label>|&nbsp;&nbsp;&nbsp</label>");
      out.println("<a href=\"/logoff\">");
      out.println("Encerrar Sessão</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
  %>
</div>

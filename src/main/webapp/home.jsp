<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2026-08-01
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session.getAttribute("username") == null){
//        response.sendRedirect("login.jsp");
        request.setAttribute("message", "Please Login First");
        request.getRequestDispatcher("login.jsp").forward(request,response);
    }
%>
<html>
<head>
    <title>J2EE Security | Home</title>
</head>
<body>
    <h1>J2EE Security Home</h1>
</body>
</html>

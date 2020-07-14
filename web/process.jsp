<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 7/14/2020
  Time: 12:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="bean.RegisterDao" language="java" %>
<jsp:useBean id="obj" class="bean.User"/>

<jsp:setProperty property="*" name="obj"/>

<%
    String email = request.getParameter("email");
    System.out.println(email);
    int status = RegisterDao.register(obj);
    System.out.println("email:" + obj);
    if (status > 0) {
        //out.print("You are successfully registered");
        response.sendRedirect("index.jsp?successful");
    } else {
        response.sendRedirect("index.jsp?error");
        //out.print("something went wrong");
        //out.print(status);
    }
%>

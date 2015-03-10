<%-- 
    Document   : viewProducts.jsp
    Created on : Mar 6, 2015, 10:00:40 PM
    Author     : Sayed Mahmud Raihan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (session.getAttribute("userName") == null) {// THen new user, show join now
        %>
        <jsp:include page="includePage/_joinNow.jsp"></jsp:include>
        <%
        } else {
        %>
        <%
            out.print("Welcome  " + session.getAttribute("userName"));
        %>
        <%
            }
        %>
    </body>
</html>

<%-- 
    Document   : index
    Created on : Feb 14, 2015, 1:38:41 PM
    Author     : Sayed Mahmud Raihan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.db_Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
        <link rel="stylesheet" href="CSS/bootstrap.min.css">
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
        <%
            Connection c = new db_Connection().getConnection();
            Statement st = c.createStatement();
            String getCategory = "SELECT * FROM  `category`  ";

            ResultSet rs = st.executeQuery(getCategory);
        %>
        <div>
            <ul id="leftsideNav">
                <li><a href="#"><strong>Categories</strong></a></li>

                <%
                    while (rs.next()) {
                        String category = rs.getString("cat_name");
                %>
                <li><a href="viewProducts_.jsp"><%= category%></a></li>
                    <%
                        }
                    %>
            </ul>
        </div>

    </body>
</html>

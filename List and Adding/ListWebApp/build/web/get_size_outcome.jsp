<%-- 
    Document   : get_size_outcome
    Created on : Feb 4, 2025, 3:08:38 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Size Outcome</title>
    </head>
    <body>
        <h1>Get Size!</h1>
        
        <%
            Integer size = (Integer)request.getAttribute("size");
        %>
        
        <p>
            The size of the list is <b><%=size%></b>.
        </p>
        
        <p>
            Please click <a href="menu.html">here</a> to go back to the menu or 
            <a href="index.html">here</a> to go to the main page.
        </p>
        
    </body>
</html>

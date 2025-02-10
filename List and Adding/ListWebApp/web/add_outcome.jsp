<%-- 
    Document   : add_outcome
    Created on : Feb 4, 2025, 2:59:25 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Outcome Page</title>
    </head>
    <body>
        <h1>Add Outcome</h1>
        
        <%
            String num = (String)request.getAttribute("numStr");
        %>
        
        <p>
            The number <b><%=num%></b> has been added to the list.
        </p>
        
        <p>
            Please click <a href="menu.html">here</a> to go back to the menu or 
            <a href="index.html">here</a> to go to the main page.
        </p>
    </body>
</html>

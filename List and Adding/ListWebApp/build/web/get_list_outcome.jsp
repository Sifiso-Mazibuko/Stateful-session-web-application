<%-- 
    Document   : get_list_outcome
    Created on : Feb 4, 2025, 3:14:11 PM
    Author     : user
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get list Page</title>
    </head>
    <body>
        <h1>Get List!</h1>
        
        <%
            List<Integer> list = (List<Integer>)request.getAttribute("list");
        %>
        
        <p>
            Below are the list numbers:
        </p>
        
        <table>
            <%
                for(Integer lists : list){
                
                    int num = lists;
                    %>
                    
                    <tr>
                        <td><b><%=num%></b></td>
                    </tr>
                    
                    <%
                }
            %>
        </table>
        
        <p>
            Please click <a href="menu.html">here</a> to go back to the menu or 
            <a href="index.html">here</a> to go to the main page.
        </p>
    </body>
</html>

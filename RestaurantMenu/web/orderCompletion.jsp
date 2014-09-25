<%-- 
    Document   : orderCompletion
    Created on : Sep 21, 2014, 7:38:34 PM
    Author     : Don
--%>

<%@page import="java.lang.reflect.Array"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Your Order</title>
    </head>
    <body>
        <h1>Thank you for your order. Verify this is correct</h1>
        
        
        <%
            
            Object obj = session.getAttribute("order");
            if(obj == null){
                out.println("Could not find order");
            } else {
                String[] list = (String[])session.getAttribute("order");
            for (String s : list){
                out.println(s);
            %>
            <br>
            <%
            }
            }
        
        %>
        
    </body>
</html>
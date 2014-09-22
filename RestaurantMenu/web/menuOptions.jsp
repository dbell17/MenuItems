<%-- 
    Document   : menuOptions
    Created on : Sep 20, 2014, 12:49:22 PM
    Author     : Don
--%>

<%@page import="model.MenuItem"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Options</title>
    </head>
    <body><center><br><br><br>
        <select>
            <%
                List<MenuItem> items = new ArrayList<MenuItem>();
                Object obj = request.getAttribute("menuItems");
                if (obj != null) {
                    items = (List<MenuItem>) obj;
                }

                for (MenuItem item : items) {
                    out.println("<option value='" + item.getName()
                            + ", " + item.getPrice() + "'>"
                            + item.getName() + ", " + item.getPrice() + "</option>");
                }
            %>
        </select>
    </center>
    </body>
</html>

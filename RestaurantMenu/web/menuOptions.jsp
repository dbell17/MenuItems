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
<%
    Object obj = request.getAttribute("menuItems");
    if (obj == null) {
        response.sendRedirect("MainController?action=getOriginalList");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Options</title>
    </head>
    <body><center><br><br><br>
        
            <%
                List<MenuItem> items = new ArrayList<MenuItem>();
                Object obj2 = request.getAttribute("menuItems");
                if (obj2 != null) {
                    items = (List<MenuItem>) obj2;
                }

                for (MenuItem item : items) {
                    out.println("<input type='checkbox' name='menuItemCheckbox' value='" + item.getName()
                            + ", " + item.getPrice()
                            + item.getName() + ", " + item.getPrice() );
                }
            %>
        
    </center>
    </body>
</html>

<%-- 
    Document   : menuOptions2
    Created on : Sep 21, 2014, 7:36:30 PM
    Author     : Don
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.MenuItem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <body>
        <form id='form1' name='form1' method='POST' action='MainController?action=processOrder'>
       
            <c:forEach var="item" items="${menuItems}" varStatus="rowCount">

                <input type ="checkbox" name="menuItemCheckbox" value="${item.name}, ${item.price}">${item.name}, ${item.price} <br>
            </c:forEach>
        
            <input type="submit" name="Submit" value="Submit"/>
        </form>
    </body>
</html>

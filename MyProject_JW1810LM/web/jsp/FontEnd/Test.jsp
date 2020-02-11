<%-- 
    Document   : Test
    Created on : Jul 30, 2019, 8:37:18 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <thead >
            <th>product name</th>
            </thead>
            <tbody>
               
                <tr>
                    <c:forEach items="${listCart}" var="cart">
                    <td>
                     ${cart.product.productName}
                    </td>
                    </c:forEach>
                </tr>
                
            </tbody>
        </table>
    </body>
</html>

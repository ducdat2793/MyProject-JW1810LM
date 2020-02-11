<%-- 
    Document   : SMSForm
    Created on : Aug 2, 2019, 8:30:12 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SMS with Spring MVC</title>
    </head>
    <body>
        <h1>Sending SMS with Spring MVC</h1>
        <form method="post" action="<%=request.getContextPath()%>/sms/sendSMS.htm">
            <table border="0" width="80%">
                <tr>
                    <td>Phone:</td>
                    <td><input type="text" name="phone" size="65" /></td>
                </tr>
                <tr>
                    <td>Message:</td>
                    <td><textarea cols="50" rows="10" name="message"></textarea></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Send SMS" />
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
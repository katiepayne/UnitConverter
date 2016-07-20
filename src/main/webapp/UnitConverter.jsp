<%-- 
    Document   : response
    Created on : Jul 9, 2016, 2:26:30 PM
    Author     : apprentice
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <title>Unit Converter</title>
    </head>
    <body>
        <div class="container">
            <h1>Results:</h1>

            <!-- Results Table -->
            <table class="table">
                <!-- Conversion Type Row -->
                <tr>
                    <!-- Label -->
                    <td>Conversion Type:</td>
                    <!-- Data -->
                    <td><c:out value="${param.operation}"/></td>
                </tr>
                <!-- From Row -->
                <tr>
                    <!-- Label -->
                    <td>From:</td>
                    <!-- Data -->
                    <td><c:out value="${from}"/></td>
                </tr>
                <!-- To Row -->
                <tr>
                    <!-- Label -->
                    <td>To:</td>
                    <!-- Data -->
                    <td><c:out value="${to}"/></td>
                </tr>
                <!-- Quantity Amount Row -->
                <tr>
                    <!-- Label -->
                    <td>Quantity Amount: </td>
                    <!-- Data -->
                    <td><fmt:formatNumber type="number" value="${quantity}"/></td>
                </tr>
                <tr>
                    <!-- Label -->
                    <td>Answer: </td>
                    <!-- Data -->
                    <td><fmt:formatNumber type="number" value="${answer}"/></td>
                </tr>
            </table>
            <hr>
            <button onclick="window.location='http://localhost:8080/UnitConverter';" class="form-control btn-primary">Convert Again?</button>
        </div>
    </body>
</html>

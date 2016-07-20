<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <title>Unit Converter</title>
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <h1>Unit Converter</h1>
                <hr/>
                <h1><small>Temperature Conversion:</small></h1>
                <br>
                <form class="form-inline" name="Temperature" action="UnitConverterServlet" method="post">
                    <div class="form-group">
                        <!-- Temp Quantity Selection-->
                        <label for="tempQty">Conversion Quantity:</label>
                        <input id="tempQty" class="form-control" type="text" name="quantityStr1" value="${param.quantityStr1}"/>${errorMessage1}

                        <!-- FROM Temp -->
                        <label for="fromTemp">From:</label>
                        <select id="fromTemp" class="form-control" name="fromTemp">
                            <option value="Celsius">Celsius</option>
                            <option value="Farenheit">Farenheit</option>
                            <option value="Kelvin">Kelvin</option>
                        </select>

                        <!-- TO Temp -->
                        <label for="toTemp">To:</label>
                        <select id="toTemp" class="form-control" name="toTemp">
                            <option value="Celsius">Celsius</option>
                            <option value="Farenheit">Farenheit</option>
                            <option value="Kelvin">Kelvin</option>
                        </select>

                        <input class="form-control" type="hidden" name="operation" value="temperature"/>
                        <input class="form-control btn-primary" type="submit" name="Convert"/>
                    </div>
                </form>
            </div>

            <div class="page-header">
                <h1><small>Mass Conversion:</small></h1>
                <br>
                <form class="form-inline" name="Mass" action="UnitConverterServlet" method="post">
                    <div class="form-group">
                        <!-- Mass Quantity Selection-->
                        <label for="massQty">Conversion Quantity:</label>
                        <input id="massQty" class="form-control" type="text" name="quantityStr2" value="${param.quantityStr2}"/>${errorMessage2}

                        <!-- FROM Mass -->
                        <label for="fromMass">From:</label>
                        <select id="fromMass" class="form-control" name="fromMass">
                            <option value="Kilogram">Kilogram</option>
                            <option value="Ounce">Ounce</option>
                            <option value="Pound">Pound</option>
                        </select>

                        <!-- TO Mass -->
                        <label for="toMass">To:</label>
                        <select id="toMass" class="form-control" name="toMass">
                            <option value="Kilogram">Kilogram</option>
                            <option value="Ounce">Ounce</option>
                            <option value="Pound">Pound</option>
                        </select>

                        <input class="form-control" type="hidden" name="operation" value="mass"/>
                        <input class="form-control btn-primary" type="submit" name="Convert"/>
                    </div>
                </form>
            </div>

            <div class="page-header">
                <h1><small>Volume Conversion:</small></h1>
                <br>
                <form class="form-inline" name="Volume" action="UnitConverterServlet" method="post">
                    <div class="form-group">
                        <!-- Volume Quantity Selection-->
                        <label for="volumeQty">Conversion Quantity:</label>
                        <input id="volumeQty" class="form-control" type="text" name="quantityStr3" value="${param.quantityStr3}"/>${errorMessage3}

                        <!-- FROM Volume -->
                        <label for="fromVolume">From:</label>
                        <select id="fromVolume" class="form-control" name="fromVolume">
                            <option value="Gallon">Gallon</option>
                            <option value="Quart">Quart</option>
                            <option value="Pint">Pint</option>
                        </select>

                        <!-- TO Volume -->
                        <label for="toVolume">To:</label>
                        <select id="toVolume" class="form-control" name="toVolume">
                            <option value="Gallon">Gallon</option>
                            <option value="Quart">Quart</option>
                            <option value="Pint">Pint</option>
                        </select>

                        <input class="form-control" type="hidden" name="operation" value="volume"/>
                        <input class="form-control btn-primary" type="submit" name="Convert"/>
                    </div>
                </form>
            </div>     
        </div>
    </body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CRUD app</title>
    <style type="text/css">
        body {
            margin: 0px;
            background: linear-gradient(lightcyan, darkcyan);
        }
        div {
            width: 100%;
        }
        h1 {
            text-align: center;
            font-size: 160px;
            font-weight: bold;
            padding-top: 7%;
            -webkit-margin-after: 5%;
        }
        .button {
            text-align: center;
        }
        a {
            font-size: 80px;
            color: white;
            background-color: darkcyan;
            box-shadow: 5px 5px darkslategrey;
            padding: 15px;
            border-radius: 20px;
            text-decoration: none;
        }
        a:hover {
            background-color: lightgreen;
        }
    </style>
</head>
<body>
<div>
    <h1>User Manager</h1>
    <div class="button">
        <a href="/users">ENTER</a>
    </div>
    <br/>
    <h3 style="text-align: center; margin-top: 7%">by Andrey Demyanenko</h3>
</div>
</body>
</html>
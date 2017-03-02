<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"%>
<html>
<head>
    <title>User Data</title>
    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-bottom-color: darkgray;
        }
        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: darkgray;
            color: #333;
            background-color: #ffffff;
        }
        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: darkgray;
            color: #333;
            background-color: #f0f0f0;
        }
    </style>
</head>
<body>

<a href="<c:url value='/users'/>">Back to Users</a>

<h1>User details</h1>

<table class="tg">
    <tr>
        <th width="60">ID</th>
        <th width="120">Name</th>
        <th width="60">Age</th>
        <th width="100">Admin</th>
        <th width="120">Created</th>
    </tr>
    <tr>
        <td>${user.id}</td>
        <td>${user.name}</td>
        <td>${user.age}</td>
        <td>${user.admin}</td>
        <td>${user.createdDate.toString()}</td>
    </tr>
</table>

</body>
</html>
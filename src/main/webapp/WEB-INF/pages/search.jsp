<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Search Results</title>

    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            text-align: center;
            padding: 10px 2px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: bold;
            padding: 10px 2px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }

        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>
</head>
<body>
<a href="<c:url value='/users'/>">Back to Users</a>

<c:if test="${!empty listUsers}">
    <h1>Users List</h1>
    <table class="tg">
        <tr>
            <th width="30">ID</th>
            <th width="120">Name</th>
            <th width="50">Age</th>
            <th width="50">Admin</th>
            <th width="160">Created </th>
        </tr>
        <c:forEach items="${listUsers}" var="user">
            <tr>
                <td>${user.id}</td>
                <td style="text-align:left; padding-left: 5px"><a href="/userdata/${user.id}" target="_blank">${user.name}</a></td>
                <td>${user.age}</td>
                <td>${user.admin}</td>
                <td>${user.createdDate.toString()}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>
<c:if test="${empty listUsers}">
    <h2>No matching results...</h2>
</c:if>

</body>
</html>

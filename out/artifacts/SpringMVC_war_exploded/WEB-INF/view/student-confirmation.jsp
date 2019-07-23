<%--
  Created by IntelliJ IDEA.
  User: chaosmegaman
  Date: 2019-07-22
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Confirmation </title>
</head>
<body>

The student is confirmed: ${student.firstName} ${student.lastName}

<br><br>

Country: ${student.country}

<br><br>

Favorite: ${student.favoriteLanguage}

<br><br>

<!-- looping over collection -->

Operating Systems:
<ul>
    <c:forEach var="temp" items="${student.operatingSystems}">
    <li>${temp}</li>
        </c:forEach>
</ul>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: chaosmegaman
  Date: 2019-07-25
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Customer Registration Form</title>

    <style>
        .error {
            color: red
        }
    </style>
</head>
<body>

<i>Fill out the form. </i>
<form:form action="processForm" modelAttribute="customer">

    First name: <form:input path="firstName"/>
    <br><br>
    Last name (*): <form:input path="lastNe" />
    <form:errors path="lastName" cssClass="error" />

    <input type="submit" value="Submit">

</form:form>

</body>
</html>

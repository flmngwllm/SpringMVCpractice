<%--
  Created by IntelliJ IDEA.
  User: chaosmegaman
  Date: 2019-07-22
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
    <title>Title</title>
</head>
<body>

<form:form action="processForm" modelAttribute="student">

    First name: <form:input path="firstName"/>

    <br><br>

    Last name: <form:input path="lastName"/>

    <br><br>

    Country:

    <form:select path="country">
        <form:options items="${student.countryOptions}"/>
<%--    <form:option value="Brazil" label="Brazil"/>--%>
<%--    <form:option value="France" label="France"/>--%>
<%--    <form:option value="Germany" label="Germany"/>--%>
<%--    <form:option value="India" label="India"/>--%>
   </form:select>

    <br><br>
    Java <form:radiobutton path="favoriteLanguage" value="Java"/>
    C# <form:radiobutton path="favoriteLanguage" value="C#"/>
    Javascript <form:radiobutton path="favoriteLanguage" value="Javascript"/>
    Python <form:radiobutton path="favoriteLanguage" value="Python"/>

    <br><br>
    Operating systems
   Linux <form:checkbox path="operatingSystems" value="Linux"/>
    Mac <form:checkbox path="operatingSystems" value="Linux"/>
    Windows <form:checkbox path="operatingSystems" value="Linux"/>

    <br><br>


    <input type="submit" value="Submit">

</form:form>



</body>
</html>

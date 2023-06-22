<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <title>Tacos</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
</head>
<body class="container pt-4">
    <h1>Welcome!</h1>
    <p>Join our growing community</p>
    <form:form action="/register" method="post" modelAttribute="newUser" cssClass="bg-primary my-3 pe-2">
        <h3 class="text-center">Register</h3>
        <div class="d-flex">
            <div class="col-4">
                <form:label path="userName" cssClass="m-2 d-block">Username:</form:label>
                <form:errors path="userName" cssClass="text-danger"/>
            </div>
            <form:input type="text" path="userName" cssClass="form-control my-2"/>
        </div>
        <div class="d-flex">
            <div class="col-4">
                <form:label path="email" cssClass="m-2 d-block">Email:</form:label>
                <form:errors path="email" cssClass="text-danger"/>
            </div>
            <form:input type="text" path="email" cssClass="form-control my-2"/>
        </div>
        <div class="d-flex">
            <div class="col-4">
                <form:label path="password" cssClass="m-2 d-block">Password:</form:label>
                <form:errors path="password" cssClass="text-danger"/>
            </div>
            <form:input type="password" path="password" cssClass="form-control my-2"/>
        </div>
        <div class="d-flex">
            <div class="col-4">
                <form:label path="confirm" cssClass="m-2 d-block">Confirm Password:</form:label>
                <form:errors path="confirm" cssClass="text-danger"/>
            </div>
            <form:input type="password" path="confirm" cssClass="form-control my-2"/>
        </div>
        <button class="btn text-center btn-dark m-2">Submit</button>
    </form:form>
    <form:form action="/login" method="post" modelAttribute="newLogin" cssClass="bg-primary pe-2">
        <h3 class="text-center">Login</h3>
        <div class="d-flex">
            <div class="col-4">
                <form:label path="email" cssClass="m-2 d-block">Email:</form:label>
                <form:errors path="email" cssClass="text-danger"/>
            </div>
            <form:input type="text" path="email" cssClass="form-control my-2"/>
        </div>
        <div class="d-flex">
            <div class="col-4">
                <form:label path="password" cssClass="m-2 d-block">Password:</form:label>
                <form:errors path="password" cssClass="text-danger"/>
            </div>
            <form:input type="password" path="password" cssClass="form-control my-2"/>
        </div>
        <button class="btn text-center btn-dark m-2">Submit</button>
    </form:form>
</body>
</html>


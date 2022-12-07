<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omikuji</title>
</head>
<body>
<h1>Here's Your Omikuji</h1>
<div class="box" style="background-color: blue">

<p> In <c:out value="${numberPicker}"/> years, you will live
in <c:out value="${city}"/> with <c:out value="${person}"/> as your
room-mate, <c:out value="${hobby}"/> for a living. 
<br>
<p>The next time you see a <c:out value="${livingThing}"/>, 
you will have good luck. Also, <c:out value="${compliment}"/>.</p>
<br>
</div>
<a href="/omikuji" class="button">Go back</a>
</body>
</html>
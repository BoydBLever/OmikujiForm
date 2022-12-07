<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omikuji</title>
</head>
<body>
<h1>Send an Omikuji!</h1>
	<form action="/processForm" method="POST">
		<label>Pick any number from 5 to 25</label>
		<input type="number" name="numberPicker">
		<br>
		<label>Enter the name of any city.</label>
		<input type="text" name="city">
		<br>
		<label>Enter the name of any real person</label>
		<input type="text" name="person">
		<br>
		<label>Enter professional endeavor or hobby:</label>
		<input type="text" name="hobby">
		<br>
		<label>Enter any type of living thing.</label>
		<input type="text" name="livingThing">
		<br>
		<label>Say something nice to someone:</label>
		<br>
		<textarea name="compliment" rows="2" cols="40"></textarea>
		<br>
		<p><i>Send and show a friend</i></p>
		<br>
		<input type="submit" value="Send">
	</form>
</body>
</html>
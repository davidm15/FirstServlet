<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Calc</title>
</head>
<body>

<form action="./calc" method="post">

<table>
	<tr>
		<td>Number 1:
		</td>
		<td><input type="text" name="num1" size="30">
		</td>
	</tr>
	<tr>
		<td>Number 2:
		</td>
		<td><input type="text" name="num2" size="30">
		</td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" name="add" value="Add">
		</td>
	</tr>
</table>
</form>

</body>
</html>
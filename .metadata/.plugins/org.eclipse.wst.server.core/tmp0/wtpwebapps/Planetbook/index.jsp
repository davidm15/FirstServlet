<!DOCTYPE html>
<html>
<head>
<link rel=stylesheet href="./style.css" type="text/css">

<!-- There should be a fancy space wallpaper ;) -->

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>PlanetBook</h1>
	<form method="post" action="planet">
 	<div class="box_pos">
		<table class="entryTable">
			<tr>
				<td>Planetname:<br><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Look of surface:<br><input type="text" name="surface"></td>
			</tr>
			<tr>
				<td>Diameter (km):<br><input type="number" name="size"></td>
			</tr>
 
			<tr>
				<td>Scope:<br><select name="scope">
						<option value="session">Session</option>
						<option value="servletContext">ServletContext</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2"><br><input type="submit" name="submit"
					value="add to book" class="btn"></td>
			</tr>
 
		</table>
 	</div>
	</form>
	
 
</body>
</html>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>

<link rel=stylesheet href="./style.css" type="text/css">
<script src="script.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
	<p>
		<button onclick="goToIndex()">go back</button>
	</p>
 
	<table style="padding: 10px;" class="table_size">
		<thead>
			<tr>
				<td><h1>Planets Session</h1></td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td style="border: 1px solid;" class="entryTable">
				<c:if test="${empty sessionScope.pbm}">
					no data available
				</c:if>
				 <c:forEach items="${sessionScope.pbm.planetBookEntries}" var="pb">
						<h3>${pb.name}</h3>
						<p>${pb.surface}</p>
						<p>${pb.size}</p>
						<hr>
					</c:forEach></td>
			</tr>
		</tbody>
	</table>
 	<h2>Sum of diameters: ${sizes} km</h2>
 	<h2>Average of diameters: ${avg} km</h2>

	<br>
	<hr>
	<br>
 
 
	<table style="padding: 10px;" class="table_size">
		<thead>
			<tr>
				<td><h1>Planets ServletContext</h1></td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td style="border: 1px solid;" class="entryTable">
					<c:if test="${empty applicationScope.pbm}">
						no data available
					</c:if>
					 <c:forEach items="${applicationScope.pbm.planetBookEntries}" var="pb">
						<h3>${pb.name}</h3>
						<p>${pb.surface}</p>
						<p>${pb.size}</p>
						<hr>
					</c:forEach></td>
			</tr>
		</tbody>
	</table>
	<p>
		<button onclick="goToIndex()">go back</button>
	</p>
 
</body>
</html>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
	<p>
		<a href="index.jsp">BACK</a>
	</p>
 
	<table style="width: 100%; padding: 10px;">
		<thead>
			<tr>
				<td><h1>Guestbook Session</h1></td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td style="border: 1px solid;">
				<c:if test="${empty sessionScope.gbm}">
					no data available
				</c:if>
				 <c:forEach items="${sessionScope.gbm.guestBookEntries}" var="gb">
						<h3>${gb.headline}</h3>
						<p>${gb.user}</p>
						<p>${gb.text}</p>
						<hr>
					</c:forEach></td>
			</tr>
		</tbody>
	</table>
 
	<br>
	<hr>
	<br>
 
 
	<table style="width: 100%; padding: 10px;">
		<thead>
			<tr>
				<td><h1>Guestbook ServletContext</h1></td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td style="border: 1px solid;">
					<c:if test="${empty applicationScope.gbm}">
						no data available
					</c:if>
					 <c:forEach items="${applicationScope.gbm.guestBookEntries}" var="gb">
						<h3>${gb.headline}</h3>
						<p>${gb.user}</p>
						<p>${gb.text}</p>
						<hr>
					</c:forEach></td>
			</tr>
		</tbody>
	</table>
 
	<p>
		<a href="index.jsp">BACK</a>
	</p>
 
</body>
</html>
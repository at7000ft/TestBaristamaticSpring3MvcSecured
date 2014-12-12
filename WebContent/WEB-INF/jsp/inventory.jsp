<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Baristamatic</title>
</head>
<body style="background-color: #111111;">
<center>
<div style="color: white">
<h1>Welcome To Baristamatic</h1>
<!-- Image source here must be image/tamada.jpg rather than barista/images/tamada.jpg else image -->
<!--  request goes out as barista/barista/images/tamada.jpg --> 
<img alt="tamada" src="images/tamada.jpg" height="160" width="220"> <br>
<h2>Current Inventory:</h2>
<table border="1" style="color: white">
	<tr>
		<th>Item</th>
		<th>Count</th>
	</tr>
	<c:forEach items="${inventory}" var="item">
		<tr>
			<td>${item.displayName}</td>
			<td>${item.count}</td>
		</tr>
	</c:forEach>
</table>
<br>

<a href="restock" style="color: white">Restock Inventory</a>
</div>
<br>
<%@include file='footer.jsp'%>
</center>
</body>
</html>
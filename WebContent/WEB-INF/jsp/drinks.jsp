<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<title>Baristamatic</title>
</head>
<body style="background-color: #111111;">
<center>
<div style="color: white">
<h1>Welcome To Baristamatic</h1>
<img alt="tamada" src="images/tamada.jpg" height="160" width="220">
<br>
<br>
<h2>Current Drinks:</h2>
<table border="1" style="color: white">
	<tr>
		<th>Number</th>
		<th>Drink</th>
		<th>Price</th>
		<th>Availability</th>
	</tr>
	<c:forEach items="${drinks}" var="drink">
		<tr>
			<td>${drink.number}</td>
			<td>${drink.displayName}</td>
			<td>${drink.cost}</td>
			<td>${drink.inStock}</td>
		</tr>
	</c:forEach>
</table>
<sec:authorize access="hasRole('ROLE_ADMIN')">
   <h3>Only shows if current user has ADMIN role</h3>
</sec:authorize>
</div>
<%@include file='footer.jsp'%>
</center>
</body>
</html>
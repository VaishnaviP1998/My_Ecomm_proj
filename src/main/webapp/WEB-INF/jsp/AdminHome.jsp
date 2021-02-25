<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>

<body>
<div class="container">
<div style="background-color:white">
Welcome : ${sessionScope.username}
<p>I am in Admin Home</p>

	<img src="<c:url value='./images/admin2.jpg'/>" style="width:70%;height:50%"/>
</body>
</html>
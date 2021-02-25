<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="CommonHeader.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action ="InsertUserDetail" method="post" align="center">
<table align="center">
<tr bgcolor="orange">
<td colspan="2"><center>Register Dialog</center></td>
</tr>
<tr bgcolor="pink">
<td>User Name</td>
<td><input type="text" name="userName"/></td>
</tr>
<tr bgcolor="pink">
<td>Password</td>
<td><input type="password" name="password"/></td>
</tr>
<tr bgcolor="pink">
<td>Customer Name</td>
<td><input type="text" name="customerName"/></td>
</tr>
<tr bgcolor="pink">
<td>Enabled</td>
<td><input type="text" name="enabled"/></td>
</tr>
<tr bgcolor="pink">
<td>Email Id</td>
<td><input type="text" name="emailId"/></td>
</tr>
<tr bgcolor="pink">
<td>Address</td>
<td><input type="text" name="address"/></td>
</tr>
<tr bgcolor="pink">
<td>Mobile No</td>
<td><input type="text" name="mobileNo"/></td>
</tr>
<tr bgcolor="pink">
<td>Role</td>
<td><input type="text" name="role"/></td>
</tr>
<tr>
<td colspan="2">
<center>
<input type ="submit" value="SUBMIT"/>
</center>
</td>
</tr>
</table>
</form>


</body>
</html>
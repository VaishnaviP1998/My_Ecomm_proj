<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>
<div class="container-fluid">
<br/>
<div class="row">

<div class="col-xs-12 col-sm-7 col-md-8">
	<img src="<c:url value='./images/fashion1.jpg'/>" alt="logo" style="width:155%;height:65%"/>
</div>

<div class="col-xs-12 col-sm-5 col-md-4">
<br/><br/><br/><br/>

<form action="perform_login" method="post">
<table class="table table-bordered table-condensed" align="center">
	<thead>
		<tr bgcolor=#ff0080>
			<th colspan="2">Sign In Here</th>
		</tr>
		<tr>
			<td>Login Name</td>
			<td><input type="text" name="username" /></td>
		</tr>

		<tr>
			<td>Password</td>
			<td><input type="password" name="password" /></td>
		</tr>

		<tr>
			<td colspan="2">
				<center>
					<input type="submit" value="SUBMIT" class="btn btn-info" />
				</center>
			</td>
		</tr>
	</table>
	</form>
	</div>
	</div>
</div>
	

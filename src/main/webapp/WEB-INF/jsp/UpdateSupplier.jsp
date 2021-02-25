<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>

<body>
<div class="container">
<div class="row">
<div class="col-xs-12 col-sm-3 col-md-3">
	<img src="<c:url value='./images/category1.png'/>" alt="logo" style="width:300px;height:300px"/>
</div>

<div class="col-xs-12 col-sm-6 col-md-6">

<form action="<c:url value='/updateSupplier'/>" method="post">

<table class="table table-bordered table-responsive">

		
			<tr bgcolor="pink">
				<td colspan="2">Insert Supplier</td>
			</tr>
			<tr bgcolor="yellow">
				<td>Supplier ID</td>
				<td><input type="text" name="supplierId" /></td>
			</tr>

			<tr bgcolor="yellow">
				<td>Supplier Name</td>
				<td><input type="text" name="supplierName" /></td>
			</tr>
			<tr bgcolor="yellow">
				<td>Supplier Address</td>
				<td><textarea row="5" cols="20" name="supplierAddr"></textarea></td>
			</tr>

			<tr>
				<td colspan="2">
					<center>
						<input type="submit" value="SUBMIT" class="btn btn-info"/>
					</center>
				</td>
			</tr>
		</table>
	</form>
	</div>
	
	<div class="col-xs-12 col-sm-3 col-md-3">
	<img src="<c:url value='./images/category1.png'/>" alt="logo" style="width:300px;height:300px"/>
</div>
</div>
	<br/>
	<div class="row">
	<div class="col-xs-12 col-sm-2 col-md-2">
	<img src="<c:url value='./images/category1.png'/>" alt="logo" style="width:300px;height:300px"/>
</div>
	<div class="col-xs-12 col-sm-8 col-md-8">
	<table class="table table-bordered table-responsive" align="center">
		<thead>
			<th>Supplier ID</th>
			<th>Supplier Name</th>
			<th>Supplier Address</th>
			<th colspan='2'>Operation</th>
		</thead>
		<c:forEach items="${supplierList}" var="supplier">

			<tr>
				<td>${supplier.supplierId}</td>
				<td>${supplier.supplierName}</td>
				<td>${supplier.supplierAddr}</td>
				<td><a href="deleteSupplier/${supplier.supplierId}" class="btn btn-danger">Delete</a></td>
				<td><a href="editSupplier/${supplier.supplierId}" class="btn btn-info">Edit</a></td>
				
			</tr>
		</c:forEach>
	</table>
	</div>
	<div class="col-xs-12 col-sm-2 col-md-2">
	<img src="<c:url value='./images/category1.png'/>" alt="logo" style="width:300px;height:300px"/>
</div>
	</div>
	
<br/><br/><br/>
</body>
</html>
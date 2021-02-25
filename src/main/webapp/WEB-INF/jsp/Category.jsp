

<%@include file="CommonHeader.jsp" %>

<body>
<div class="container">
<div class="row">
<div class="col-xs-12 col-sm-3 col-md-3">
	<img src="<c:url value='./images/category1.png'/>" alt="logo" style="width:300px;height:300px"/>
</div>

<div class="col-xs-12 col-sm-6 col-md-6">
<form action="InsertCategory" method="post" align="center">
<table class="table table-bordered table-responsive">
		
			<tr bgcolor="pink">
				<td colspan="2">Insert Category</td>
			</tr>
			<tr bgcolor="yellow">
				<td>Category ID</td>
				<td><input type="text" name="categoryId" /></td>
			</tr>

			<tr bgcolor="yellow">
				<td>Category Name</td>
				<td><input type="text" name="categoryName" /></td>
			</tr>
			<tr bgcolor="yellow">
				<td>Category Description</td>
				<td><textarea row="5" cols="20" name="categoryDesc"></textarea></td>
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
			<th>Category ID</th>
			<th>Category Name</th>
			<th>Category Desc</th>
			<th colspan='2'>Operation</th>
		</thead>
		<c:forEach items="${categoryList}" var="category">

			<tr>
				<td>${category.categoryId}</td>
				<td>${category.categoryName}</td>
				<td>${category.categoryDesc}</td>
				<td><a href="deleteCategory/${category.categoryId}" class="btn btn-danger">Delete</a></td>
				<td><a href="editCategory/${category.categoryId}" class="btn btn-info">Edit</a></td>
				
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
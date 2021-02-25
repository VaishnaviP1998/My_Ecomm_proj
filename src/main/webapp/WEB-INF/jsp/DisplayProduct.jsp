<%@ page language="java" contentType="text/html"%> 
<%@include file="CommonHeader.jsp"%>

<html>
<body>


<c:forEach items="${sessionScope.productList}" var="product">

 <div class="col-md-4">
 
    <div class="thumbnail">
      
	<img alt="${product.productId }" src="images/${product.productId }.jpg" width="300" height="300">
	</div>
	 <div class="caption">
	 <p>Samsung TV </p>
	 
	 Description
	 <table>
	 <tr>
	 	<td>Product Id= ${product.productId}</td>
	 	</tr>
	 	
	 	<tr>
	 	<td>Product Name= ${product.productName}</td>
	 	</tr>
	 	<tr>
	 <td>Product Description</td>
	 </tr>
	 <tr>
	 <td>${product.productDesc}</td>
	 </tr>
	</table>
	

</div>

</div>




  
       
   </br></br></br></br>   
  
     
  </c:forEach>
  </body>
  </html>
 

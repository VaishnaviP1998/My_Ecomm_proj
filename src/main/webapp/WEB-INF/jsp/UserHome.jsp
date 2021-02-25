<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>
<body>
<div class="container">
<div style="background-color:Linen">
Welcome : ${sessionScope.username}
<p>I am  in User home</p>
 
<form action="temp.jsp">
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-3">
    		<div class="thumbnail">
      			<a href="temp">
      			
        		<img src="<c:url value='./images/101.jpg'/>" style="width:200px;height:200px"/>
        		<div class="caption">
          		<p>Samsung TV</p>
        		</div>
			</a>
				
		</div>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-3">
		<div class="thumbnail">
      			<a href="temp1">
        		<img src="<c:url value='./images/102.jpg'/>" style="width:200px;height:200px"/>
        		<div class="caption">
          		<p>Redmi9Prime</p>
        		</div>
			</a>

		</div>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-3">
		<div class="thumbnail">
      			<a href="">
        		<img src="<c:url value='./images/103.jpg'/>" style="width:200px;height:200px"/>
        		<div class="caption">
          		<p>RealmeX7</p>
        		</div>
			</a>

		</div>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-3">
		<div class="thumbnail">
      			<a href="">
        		<img src="<c:url value='./images/104.jpg'/>" style="width:200px;height:200px"/>
        		<div class="caption">
          		<p>iphone</p>
        		</div>
			</a>

		</div>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-3">
		<div class="thumbnail">
      			<a href="">
        		<img src="<c:url value='./images/105.jpg'/>" style="width:200px;height:200px"/>
        		<div class="caption">
          		<p>HP Laptop</p>
        		</div>
			</a>

		</div>
		</div>
		
	</div>
	</form>
	</br></br></br></br>
</div>
</div>
</body>
</html>
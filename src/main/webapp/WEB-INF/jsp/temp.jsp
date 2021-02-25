<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	

   <a href="ItemAdded">

<c:forEach items="${sessionScope.productList}" var="product">

<div class="group">
 
 <div class="col-xs-12 col-sm-4 col-md-6">
    
     
	<img src="images/101.jpg" style="width:35%"/>
	
	 <div class="content">
	 <p>Samsung TV</p>
	 </div>
	 </div>
	 </div>
	 <%
    try
    {
    	
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost/S210120PGP","root","Classical@123");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from product where productId='101'");
    %><table  align="left" style="text-align:center">
    <div class="col-xs-12 col-sm-4 col-md-4">
      <thead>
          <tr>
             <th>Id</th>
             <th>Name</th>
             <th>price</th>
             <th>desc</th>
             <th>stock</th>
             <th>category</th>
             <th>supplier</th>
          </tr>
      </thead>
      <tbody>
        <%while(rs.next())
        {
            %>
            <tr>
                <td><%=rs.getString("productId") %>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><%=rs.getString("productName") %>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><%=rs.getString("price") %>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><%=rs.getString("description") %>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><%=rs.getString("stock") %>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><%=rs.getString("category") %>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><%=rs.getString("supplier") %>&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
            <%}%>
           </tbody>
        </table><br>
    <%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }
    
    %>
    </div>
    <table>
	<br/><br/><br/><br/>

	<label for="quantity">&nbsp;&nbsp;Choose the quantity:</label>
	<select name="quantity"><option value="1" selected>1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	</select>
	</br></br></br></br>
	
	<input type="submit"  value="ADDTOCART"  class=""/>
	
</table>
   

   </br></br></br></br>   
  
     
  </c:forEach>

 </a>
</body>
</html>
 
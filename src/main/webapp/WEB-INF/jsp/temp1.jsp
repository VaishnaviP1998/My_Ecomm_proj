<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	

   

<c:forEach items="${sessionScope.productList}" var="product">
<a href="ItemAdded">
<div class="group">
 
    <div class="image">
     
	<img src="images/102.jpg" width:600px;height:600px"/>
	</div>
	 <div class="content">
	 <p>Redmi9 Prime</p>
	 
	 

	
	
	 <%
    try
    {
    	
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost/S210120PGP","root","Classical@123");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from product where productId='102'");
    %><table  align="left" style="text-align:center">
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
    <table>
	
	<label for="quantity">Choose the quantity:</label>
	<select name="quantity"><option value="1" selected>1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	</select>
	</br></br></br></br>
	<input type="submit" value="ADDTOCART" class=""/>
</table>
    
    

   </br></br></br></br>   
  
     </a>
  </c:forEach>

 
</body>
</html>
 
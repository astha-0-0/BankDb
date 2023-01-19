<%-- 
    Document   : viewloan
    Created on : 27-Apr-2022, 6:16:36 pm
    Author     : astha
--%>



<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.util.logging.Level" %>
<%@page import="java.util.logging.Logger" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Loan Details</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
    
<div class="form-group">
                <div  class="col-sm-4"></div>
                <div  class="col-sm-4">
                    <h2 style="text-align: center">Loan Details</h2>
                </div>
            </div>
            <div class="col-sm-2">
                        <a href="index.jsp"><Button class="btn btn-success" style="width: 80px;">Home</Button></a>
                    </div>
	<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Type</th>
      <th scope="col">Adhaar</th>
      <th scope="col">Name</th>
      <th scope="col">age</th>
      <th scope="col">Address</th>
      <th scope="col">Phone</th>
      <th scope="col">Amount</th>
      <th scope="col">Tenure</th>

    </tr>
  </thead>
  <tbody>
  <% 
  	        Connection con;
                PreparedStatement st;
                ResultSet rs;
                
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");

  	String query = "Select * from loan";
	 st = con.prepareStatement(query);
	 rs = st.executeQuery();
         
         
	
	while(rs.next()){
		%>
		<tr>
                    Applications
		<th scope="row"><%= rs.getString("type") %></th>
		<td><%=rs.getString("adhaar")%></td>
		<td><%=rs.getString("name")%></td>
                <td><%=rs.getString("age")%></td>
		<td><%=rs.getString("address")%></td>
		<td><%=rs.getString("phone")%></td>
                <td><%=rs.getString("amount")%></td><!-- comment -->
                <td><%=rs.getString("tenure")%></td>
		
		</tr>
                
                
	<% }%>	
	
  </tbody>
</table>

</body>
</html>
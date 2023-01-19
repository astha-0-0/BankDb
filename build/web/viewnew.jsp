<%-- 
    Document   : viewnew
    Created on : 28-Apr-2022, 9:53:40 pm
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
<title>Details</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
    
<div class="form-group">
                <div  class="col-sm-4"></div>
                <div  class="col-sm-4">
                    <h2 style="text-align: center">Past transaction Details</h2>
                </div>
            </div>
            <div class="col-sm-2">
                        <a href="index.jsp"><Button class="btn btn-success" style="width: 80px;">Go back</Button></a>
                    </div>
	<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Bank Id</th>
      <th scope="col">Name</th>
      <th scope="col">Balance withdrawn</th>
      <th scope="col">Address</th>
      <th scope="col">Phone</th>

    </tr>
  </thead>
  <tbody>
  <% 
  	        Connection con;
                PreparedStatement st;
                ResultSet rs;
                PreparedStatement wth;
                ResultSet rst;
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");

  	String query = "Select * from withdraw";
	 st = con.prepareStatement(query);
	 rs = st.executeQuery();
         
	 
         
	
	while(rs.next()){
		%>
		<tr>
                    Past withdrawal
		<th scope="row"><%= rs.getString("bid") %></th>
		<td><%=rs.getString("bname")%></td>
		<td><%=rs.getString("amount")%></td>
		<td><%=rs.getString("address")%></td>
		<td><%=rs.getString("phone")%></td>
		
		
		</tr>
                
                
	<% }%>	
	
  </tbody>
</table>

</body>
</html>


                

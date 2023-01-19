<%-- 
    Document   : addc
    Created on : 25-Apr-2022, 10:05:12 pm
    Author     : astha
--%>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.util.logging.Level" %>
<%@page import="java.util.logging.Logger" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>


<html>
    <head>    
        <title>Deposit Form</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <style>
            .col-sm-6{
                text-align: center;
                margin-left: 400px;
            }
            
        </style>    
    </head>
    <body>
        
         <%   
            Connection con;     
            String msg = "";
            String color = "";
   	    if(request.getMethod().compareToIgnoreCase("post")==0)
   		{
   			try
   			{
                                String adhaar = request.getParameter("adhaar");
   				String name = request.getParameter("name");
   	   			String age = request.getParameter("age");
   	   			String address = request.getParameter("address");
   	   			String phone = request.getParameter("phone");
                                String gender = request.getParameter("gender");
   	   			
   	   			 Class.forName("com.mysql.jdbc.Driver");
                                 con = DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
   	   			 String query = "INSERT INTO credit(adhaar,name,age,gender,address,phone) VALUES (?,?,?,?,?,?)";
   	   	
   	   			PreparedStatement st = con.prepareStatement(query);
   	   			
   	   			st.setString(1, adhaar);
   	   			st.setString(2, name);
   	   			st.setString(3, age);
                                st.setString(4, gender);
   	   			st.setString(5, address);
   	   			st.setString(6, phone);
   	   			
   	   			st.executeUpdate();
   	   			
   	   			color = "green";
   	   			msg = "Congrats. Application in process!!";
	
   			}catch(Exception ex){
   				ex.printStackTrace();
   				color = "red";
   				msg = "Application failed, Try again!!";
   			}
   		}
    %>       
    <div class="form-group col-12 p-0">
        
	<h4 style="color:<%= color %>"><%= msg %></h4>
	</div>
        
        <form id="form" method="post" action="addc.jsp" class="form-horizontal">
         	
            <div class="form-group">
                <div  class="col-sm-4"></div>
                <div  class="col-sm-4">
                    <h2 style="text-align:center">Enter Details</h2>
                </div>
                
            </div>
            <hr/>
            <div class="form-group">
                 <div  class="col-sm-4"></div>
                  <div  class="col-sm-4 mx-auto">
                      <label style="color:blueviolet;font-weight: bolder">Aadhaar Number</label>
  			<input type="text" name="adhaar" class="form-control" id="adhaar">
                  </div>
			</div>
			<div class="form-group">
                 <div  class="col-sm-4"></div>
                  <div  class="col-sm-4 mx-auto">
                  	<label style="color:blueviolet;font-weight: bolder">Name</label>
  			<input type="text" name="name" class="form-control" id="name">
                  </div>
			</div>
			<div class="form-group">
                 <div  class="col-sm-4"></div>
                  <div  class="col-sm-4 mx-auto">
                  	<label style="color:blueviolet;font-weight: bolder">age</label>
  					<input type="text" name="age" class="form-control" id="age">
                  </div>
			</div>
            
                    <div class="form-group">
                 <div  class="col-sm-4"></div>
                  <div  class="col-sm-4 mx-auto">
                      <label style="color:blueviolet;font-weight: bolder">Gender</label>
  			<input type="text" name="gender" class="form-control" id="gender">
                  </div></div>
			<div class="form-group">
                            <div  class="col-sm-4"></div>
                            <div  class="col-sm-4 mx-auto">
                                        <label style="color:blueviolet;font-weight: bolder">Address</label>
  					<input type="text" name="address" class="form-control" id="address">
                            </div>
			</div>
            
			<div class="form-group">
                            <div  class="col-sm-4"></div>
                            <div  class="col-sm-4 mx-auto">
                                    <label style="color:blueviolet;font-weight: bolder">Phone</label>
  				    <input type="text" name="phone" class="form-control" id="phone">
                            </div>
			</div>
			
		
            
            <div class="form-group" align="right">
             
                <div class="col-sm-6">
                    <div class="col-sm-2">
                        <Button class="btn btn-success" style="width: 80px;">Apply</Button>
                    </div>
                    <div class="col-sm-4">
                    </div>
                   
                </div>
               
            </div>
              
            
        </form>
        <div class="col-sm-12"  align="center">
            <a href="index.jsp"><Button class="btn btn-success" style="width: 80px;">Home</Button></a>
        </div>
    </body>
</html>

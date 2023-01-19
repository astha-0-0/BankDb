<%-- 
    Document   : deposit
    Created on : 25-Apr-2022, 10:20:31 am
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
                                String bankid = request.getParameter("bankid");
   				String bankname = request.getParameter("bankname");
   	   			String amount = request.getParameter("amount");
   	   			String address = request.getParameter("address");
   	   			String phone = request.getParameter("phone");
   	   			
   	   			 Class.forName("com.mysql.jdbc.Driver");
                                 con = DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
   	   			 String query = "INSERT INTO deposits(bankid,bankname,amount,address,phone) VALUES (?,?,?,?,?)";
   	   	
   	   			PreparedStatement st = con.prepareStatement(query);
   	   			
   	   			st.setString(1, bankid);
   	   			st.setString(2, bankname);
   	   			st.setString(3, amount);
   	   			st.setString(4, address);
   	   			st.setString(5, phone);
   	   			
   	   			st.executeUpdate();
   	   			
   	   			color = "green";
   	   			msg = "Money Added Succesfully";
	
   			}catch(Exception ex){
   				ex.printStackTrace();
   				color = "red";
   				msg = "Error Occured, try again later!!";
   			}
   		}
    %>       
    <div class="form-group col-12 p-0">
        
	<h4 style="color:<%= color %>"><%= msg %></h4>
	</div>
        
        <form id="form" method="post" action="deposit.jsp" class="form-horizontal">
         	
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
                      <label style="color:blueviolet;font-weight: bolder">Bank Id</label>
  			<input type="text" name="bankid" class="form-control" id="bankid">
                  </div>
			</div>
			<div class="form-group">
                 <div  class="col-sm-4"></div>
                  <div  class="col-sm-4 mx-auto">
                  	<label style="color:blueviolet;font-weight: bolder">Bank Name</label>
  			<input type="text" name="bankname" class="form-control" id="bankname">
                  </div>
			</div>
			<div class="form-group">
                 <div  class="col-sm-4"></div>
                  <div  class="col-sm-4 mx-auto">
                  	<label style="color:blueviolet;font-weight: bolder">Enter amount</label>
  					<input type="text" name="amount" class="form-control" id="amount">
                  </div>
			</div>
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
			
		
            
            <div class="form-group" align="center">
             
                <div class="col-sm-6">
                    <div class="col-sm-2">
                        <Button class="btn btn-success" style="width: 80px;">Deposit</Button>
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

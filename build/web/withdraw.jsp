<%-- 
    Document   : withdraw
    Created on : 25-Apr-2022, 10:32:18 am
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
        <title>Withdrawal Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <style>
            .bid,.bname,.address,.phone{
                background-color: powderblue;
                
            }
        </style>    
    </head>
    <body>
        
         <%   
            Connection con;     
            String message = "";
            String color = "";
   	    if(request.getMethod().compareToIgnoreCase("post")==0)
   		{
   			try
   			{
                                String bid = request.getParameter("bid");
   				String bname = request.getParameter("bname");
   	   			String amount = request.getParameter("amount");
   	   			String address = request.getParameter("address");
   	   			String phone = request.getParameter("phone");
   	   			
   	   			 Class.forName("com.mysql.jdbc.Driver");
                                 con = DriverManager.getConnection("jdbc:mysql://localhost/bank","root","");
   	   			 String query = "INSERT INTO withdraw(bid,bname,amount,address,phone) VALUES (?,?,?,?,?)";
                                 String query1="SELECT amount FROM deposits WHERE bankid='1234'";
   	   			PreparedStatement st = con.prepareStatement(query);
                                PreparedStatement st1 = con.prepareStatement(query1);
   	   			
   	   			st.setString(1, bid);
   	   			st.setString(2, bname);
   	   			st.setString(3, amount);
   	   			st.setString(4, address);
   	   			st.setString(5, phone);
   	   			
   	   			st.executeUpdate();
   	   			
   	   			
                                int number1 = Integer.parseInt(query1);
                                st1.executeUpdate();
                                int number2 = Integer.parseInt(amount);
                                if(number1>number2){
                                    int number3=(number1-number2);
                                    String updatev=String.valueOf(number3);
                                    String query2="UPDATE deposits SET amount=updatev WHERE bankid='1234'";
                                    PreparedStatement st2 = con.prepareStatement(query2);
                                    
                                    st2.executeUpdate();
                                    color = "green";
   	   			    message = "withdrawal of "+ amount+"RS is successful!!";
                                
                                }else{
                                    color = "red";
                                message="Not enough balance!!";
                                }
                                
	
   			}catch(Exception ex){
   				ex.printStackTrace();
   				color = "red";
   				message = "Error Occured";
   			}
   		}
    %>       
    <div class="form-group col-12 p-0">
        
	<h4 style="color:<%= color %>"><%= message %></h4>
	</div>
        
        <form id="form" method="post" action="withdraw.jsp" class="form-horizontal">
         	
            <div class="form-group">
                <div  class="col-sm-4"></div>
                <div  class="col-sm-4">
                    <h2 style="text-align: center">Enter details for withdrawal</h2>
                </div>
            </div>
            <hr/>
            <div class="form-group">
                 <div  class="col-sm-4"></div>
                  <div  class="col-sm-4 mx-auto">
                  	<label>Bank Id</label>
  			<input type="text" name="bid" class="form-control" id="bid">
                  </div>
			</div>
			<div class="form-group">
                 <div  class="col-sm-4"></div>
                  <div  class="col-sm-4 mx-auto">
                  	<label >Bank Name</label>
  			<input type="text" name="bname" class="form-control" id="bname">
                  </div>
			</div>
			<div class="form-group">
                 <div  class="col-sm-4"></div>
                  <div  class="col-sm-4 mx-auto">
                  	<label>Amount to withdraw</label>
  			<input type="text" name="amount" class="form-control" id="amount">
                  </div>
			</div>
			<div class="form-group">
                            <div  class="col-sm-4"></div>
                            <div  class="col-sm-4 mx-auto">
                                        <label>Address</label>
  					<input type="text" name="address" class="form-control" id="address">
                            </div>
			</div>
            
			<div class="form-group">
                            <div  class="col-sm-4"></div>
                            <div  class="col-sm-4 mx-auto">
                                    <label>Phone</label>
  				    <input type="text" name="phone" class="form-control" id="phone">
                            </div>
			</div>
			
		
            
            <div class="form-group" align="right">
             
                <div class="col-sm-6">
                    <div class="col-sm-2">
                        <Button class="btn btn-success" style="width: 80px;">Withdraw</Button>
                    </div>
                    <div class="col-sm-4">
                    </div>
                    
                </div>
            </div>
            
        </form>
        <div class="col-sm-12"  align="right">
            <a href="index.jsp"><Button class="btn btn-success" style="width: 80px;">Home</Button></a>
        </div>
        
    </body>
</html>

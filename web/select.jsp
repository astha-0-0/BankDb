<%-- 
    Document   : select
    Created on : 26-Apr-2022, 11:12:22 pm
    Author     : astha
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loan Page</title>
        <style>
            *{
                background-color: burlywood;
            }
            
            .loan{
                float: left;
                margin: 40px;
                padding:20px;
                background-color: white;
                color: black;
                text-decoration: none;
                border-radius: 5px;
            }
            .loan:hover{
                float: left;
                margin: 40px;
                padding:20px;
                background-color: black;
                color: white;
                text-decoration: none;
                border-radius: 5px;
            }
        </style>
    </head>
    <body>
        Select type of loan!!
        <div class="col-sm-12"  align="right">
            <a href="index.jsp"><Button class="btn btn-success" style="width: 80px;">Home</Button></a>
        </div>
        <div>
            <a href="loan.jsp" class="loan">Education loan</a>
            <a href="loan.jsp" class="loan">Home loan</a>
            <a href="viewloan.jsp" class="loan">View Loan Application </a>
        </div><br/>
        
    </body>
</html>
<%-- 
    Document   : index
    Created on : 23-Apr-2022, 11:26:41 pm
    Author     : astha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOME Page</title>
        <style>
            *{
                background-color: burlywood;
            }
            .welcome{
                float: left;
                text-align: center;
                font-size: 30px;
                margin-left: 300px;
                margin:90px;
            }
            .dep,.with,.view,.issue,.loan{
                float: left;
                margin: 40px;
                padding:20px;
                background-color: white;
                color: black;
                text-decoration: none;
                border-radius: 5px;
            }
            .dep:hover,.with:hover,.view:hover,.issue:hover,.loan:hover{
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
        <div>
            
            <a href="deposit.jsp" class="dep">deposit money</a>
            <a href="withdraw.jsp" class="with">withdraw money</a>
            <a href="trans.jsp" class="view">Transaction details</a>
            <a href="addc.jsp" class="issue">Issue new Credit Card</a>
            <a href="select.jsp" class="loan">Apply for loan</a>
        </div><br/>
        <div class="welcome">WELCOME !! Select one service !!</div>
        
    </body>
</html>

<%-- 
    Document   : trans
    Created on : 28-Apr-2022, 9:52:22 pm
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
        Select type!!
        <div class="col-sm-12"  align="right">
            <a href="index.jsp"><Button class="btn btn-success" style="width: 80px;">Home</Button></a>
        </div>
        <div>
            <a href="view.jsp" class="loan">Past deposits</a>
            <a href="viewnew.jsp" class="loan">Past withdrawal</a>
        </div><br/>
        
    </body>
</html>

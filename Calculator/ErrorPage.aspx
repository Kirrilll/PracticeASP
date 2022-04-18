<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="Calculator.ErrorPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   <style>
       .error-container{
           margin: 0 auto;
           border-radius: 10px;
           background-color: lightcoral;
           padding: 10px 30px;
           color: dimgrey
       }
       .error-container__title{
           text-align: center;
           color: black;
       }

       .error-container__subtitle{
           margin-top: 10px;
           text-align: center;
       }
   </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class ="error-container">
                <h1 class ="error-container__title">Ошибка</h1>
                <div class ="error-container__subtitle">Такой страницы не существует</div>
            </div>
        </div>
    </form>
</body>
</html>

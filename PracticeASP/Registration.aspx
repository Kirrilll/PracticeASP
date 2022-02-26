<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="PracticeASP.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
            background-color: #f7f8fc;
        }

        .form {
            width: 400px;
            margin: 150px auto;
            -webkit-box-shadow: 0px 5px 10px 2px rgba(34, 60, 80, 0.2);
            -moz-box-shadow: 0px 5px 10px 2px rgba(34, 60, 80, 0.2);
            box-shadow: 0px 5px 10px 2px rgba(34, 60, 80, 0.2);
            padding: 30px;
            border-radius: 30px;
        }
    </style>
</head>
<body>
    <form class ="form" id="form1" runat="server">
        <div>
            Имя<asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxName" ErrorMessage="Ошибка ввода имени">Обязательное поле ввода</asp:RequiredFieldValidator>
            <br />
            Пароль<asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Ошибка ввода пароля" ValidationExpression="\w{8,}">Пароль должен содержать не менее 8 символов</asp:RegularExpressionValidator>
            <br />
            Подтвердите пароль<asp:TextBox ID="TextBoxConf" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBoxConf" ErrorMessage="Ошибка подтверждения пароля">Не верно введен пароль</asp:CompareValidator>
            <br />
            email<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Ошибка ввода email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Не правильно введен email</asp:RegularExpressionValidator>
            <br />
            Возраст<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Ошибка ввода возраста" MaximumValue="65" MinimumValue="18">Не верно введен возраст</asp:RangeValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Отправить" />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="65px" />
        </div>
    </form>
</body>
</html>

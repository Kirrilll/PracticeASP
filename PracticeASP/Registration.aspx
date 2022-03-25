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
            <asp:RequiredFieldValidator ID="TextBoxNameValidator" runat="server" ControlToValidate="TextBoxName" ErrorMessage="Ошибка ввода имени">Обязательное поле ввода</asp:RequiredFieldValidator>
            <br />
            Пароль<asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorPass" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Ошибка ввода пароля" ValidationExpression="\w{8,}">Пароль должен содержать не менее 8 символов</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequriedFieldPassword" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Ошибка ввода пароля">Обязательное поле ввода</asp:RequiredFieldValidator>
            <br />
            Подтвердите пароль<asp:TextBox ID="TextBoxConf" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="PassConfCompareValidator" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConf" ErrorMessage="Ошибка подтверждения пароля">Не верно введен пароль</asp:CompareValidator>
            <asp:RequiredFieldValidator ID="PassConfRequiredValidator" runat="server" ControlToValidate="TextBoxConf" ErrorMessage="Ошибка ввода потверждения пароля">Обязательное поле ввода</asp:RequiredFieldValidator>
            <br />
            email<asp:TextBox ID="TextBoxMail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="MailExpressionValidator" runat="server" ControlToValidate="TextBoxMail" ErrorMessage="Ошибка ввода email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Не правильно введен email</asp:RegularExpressionValidator>
            <br />
            Возраст<asp:TextBox ID="TextBoxAge" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="AgeRangeVlalidator" runat="server" ControlToValidate="TextBoxAge" ErrorMessage="Ошибка ввода возраста" MaximumValue="65" MinimumValue="18">Не верно введен возраст</asp:RangeValidator>
            <asp:RequiredFieldValidator ID="AgeRequiredValidator" runat="server" ControlToValidate="TextBoxAge" ErrorMessage="Ошибка ввода возраста">Поле возратса должно содержать значение</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Отправить" />
            <br />
            <asp:ValidationSummary ID="ValidationSummary" runat="server" Height="65px" />
        </div>
    </form>
</body>
</html>

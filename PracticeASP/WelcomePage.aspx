<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="PracticeASP.WelcomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>Добро пожаловать!</div>
    <div>Пройдите тест</div>

        <p>
            &nbsp;</p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:ListBox ID="ListBox1" runat="server" style="margin-left: 0px; margin-bottom: 0px" Width="105px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">
            <asp:ListItem>Js</asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
            <asp:ListItem>Dart</asp:ListItem>
        </asp:ListBox>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" Height="31px" style="margin-left: 0px">
            <asp:ListItem>Ламинат</asp:ListItem>
            <asp:ListItem>Паркет</asp:ListItem>
            <asp:ListItem>Линолиум</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:RadioButtonList ID="RadioButtonList" runat="server" Height="29px" Width="150px">
            <asp:ListItem>М</asp:ListItem>
            <asp:ListItem>Ж</asp:ListItem>
            <asp:ListItem>Не определился</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Button ID="endBtn" runat="server" OnClick="endBtn_Click" Text="Button" />
        <br />
        <br />
        <asp:Label ID="Conclusion" runat="server" Text=" "></asp:Label>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>

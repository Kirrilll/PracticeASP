<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Calculator.MainPage" %>

<%@ Register src="Calculator.ascx" tagname="Calculator" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 645px">
    <form id="form1" runat="server">
        <uc1:Calculator ID="Calculator1" runat="server" />
        <p>
            &nbsp;</p>
        <asp:GridView ID="GridViewCustomers" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridViewCustomers_SelectedIndexChanged">
        </asp:GridView>
        <asp:GridView ID="GridViewOrders" runat="server">
        </asp:GridView>
        <br />
        <asp:Label ID="LabelFetchInformation" runat="server"></asp:Label>
    </form>
</body>
</html>

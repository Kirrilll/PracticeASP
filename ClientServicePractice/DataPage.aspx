<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataPage.aspx.cs" Inherits="ClientServicePractice.DataPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridViewCostumers" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridViewCostumers_SelectedIndexChanged">
            </asp:GridView>
            <br />
        </div>
        <asp:GridView ID="GridViewOrders" runat="server">
        </asp:GridView>
    </form>
</body>
</html>

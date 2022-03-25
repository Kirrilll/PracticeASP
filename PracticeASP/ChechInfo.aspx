<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChechInfo.aspx.cs" Inherits="PracticeASP.ChechInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 704px;
        }
    </style>
</head>
<body style="height: 291px">
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridViewCustomer" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="Id" DataSourceID="SqlDataCustomer" Height="133px" Width="253px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Индефикатор" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Имя" SortExpression="Name" />
                <asp:BoundField DataField="Surname" HeaderText="Фамилия" SortExpression="Surname" />
                <asp:BoundField DataField="YearofBirth" HeaderText="День рождения" SortExpression="YearofBirth" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:TradeCompanyConnectionString %>" SelectCommand="SELECT * FROM [Customer]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridViewProducts" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataProducts">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataProducts" runat="server" ConnectionString="<%$ ConnectionStrings:TradeCompanyConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridViewOrders" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataOrders">
            <Columns>
                <asp:BoundField DataField="id_product" HeaderText="Индефикатор продукта" SortExpression="id_product" />
                <asp:BoundField DataField="description" HeaderText="Комментарий" SortExpression="description" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataOrders" runat="server" ConnectionString="<%$ ConnectionStrings:TradeCompanyConnectionString %>" SelectCommand="SELECT [id_product], [description] FROM [Order] WHERE ([id_customer] = @id_customer)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridViewCustomer" Name="id_customer" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="ShowAdminPanelBtn" runat="server" OnClick="ShowAdminPanelBtn_Click" Text="Добавить продукт" />
        <br />
        <br />
        <br />
        <asp:Panel ID="ProductAdminPanel" runat="server" Height="188px" style="margin-top: 0px" Visible="False">
            Название:&nbsp;
            <asp:TextBox ID="TextBoxTitle" runat="server" Width="167px"></asp:TextBox>
            <br />
            Цена:
            <asp:TextBox ID="TextBoчPrice" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="AddBtn" runat="server" Text="Добавить" />
            &nbsp;<asp:Button ID="AddBtn0" runat="server" Text="Отменить" />
        </asp:Panel>
    </form>
</body>
</html>

﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChechInfo.aspx.cs" Inherits="PracticeASP.ChechInfo" %>

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
        <asp:SqlDataSource ID="SqlDataProducts" runat="server" ConnectionString="<%$ ConnectionStrings:TradeCompanyConnectionString %>" SelectCommand="SELECT * FROM [Product]" DeleteCommand="Delete FROM Product where Id = @Id" InsertCommand="Insert into Product(title,price) values (@title, @price)" UpdateCommand="UPDATE Product SET title = @title, price = @price where Id= @Id">
            <DeleteParameters>
                <asp:ControlParameter ControlID="GridViewProducts" Name="Id" PropertyName="SelectedValue" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBoxTitle" Name="title" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBoxPrice" Name="price" PropertyName="Text" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="GridViewProducts" Name="title" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="GridViewProducts" Name="price" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="GridViewProducts" Name="Id" PropertyName="SelectedValue" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridViewOrders" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataOrders">
            <Columns>
                <asp:BoundField DataField="id_product" HeaderText="Индефикатор продукта" SortExpression="id_product" />
                <asp:BoundField DataField="description" HeaderText="Комментарий" SortExpression="description" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataOrders" runat="server" ConnectionString="<%$ ConnectionStrings:TradeCompanyConnectionString %>" SelectCommand="SELECT [id_product], [description] FROM [Order] WHERE ([id_customer] = @id_customer)" DeleteCommand="Delete FROM Product where Id = @Id">
            <DeleteParameters>
                <asp:ControlParameter ControlID="GridViewProducts" Name="Id" PropertyName="SelectedValue" />
            </DeleteParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridViewCustomer" Name="id_customer" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="ShowAdminPanelBtn" runat="server" OnClick="ShowAdminPanelBtn_Click" Text="Добавить продукт" />
        <asp:Button ID="ButtonUpdateProduct" runat="server" OnClick="ButtonUpdateProduct_Click" Text="Изменить продукт" />
        <asp:Button ID="ButtonDeleteProduct" runat="server" OnClick="ButtonDeleteProduct_Click" Text="Удалить" />
        <br />
        <br />
        <br />
        <asp:Panel ID="ProductAdminPanel" runat="server" Height="188px" style="margin-top: 0px" Visible="False">
            Название:&nbsp;
            <asp:TextBox ID="TextBoxTitle" runat="server" Width="167px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredValidatorTitleField" runat="server" ControlToValidate="TextBoxTitle" ErrorMessage="Это обязательное поле"></asp:RequiredFieldValidator>
            <br />
            Цена:
            <asp:TextBox ID="TextBoxPrice" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredValidatorPriceField" runat="server" ControlToValidate="TextBoxTitle" ErrorMessage="Это обязательное поле"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidatorPriceField" runat="server" ControlToValidate="TextBoxPrice" ErrorMessage="цена должна быть от 0 до бесконечности" MaximumValue="Infinity" MinimumValue="0" ValidateRequestMode="Disabled"></asp:RangeValidator>
            <br />
            <br />
            <asp:Button ID="AddBtn" runat="server" Text="Добавить" OnClick="AddBtn_Click" />
            &nbsp;<asp:Button ID="ClearBtn" runat="server" Text="Отменить" OnClick="ClearBtn_Click" />
        </asp:Panel>
    </form>
</body>
</html>

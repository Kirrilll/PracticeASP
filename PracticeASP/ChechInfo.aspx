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
        <asp:SqlDataSource ID="SqlDataCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:TradeCompanyConnectionString %>" SelectCommand="SELECT * FROM [Customer]" OnSelecting="SqlDataSource1_Selecting" InsertCommand="INSERT INTO Customer (Name, Surname, YearofBirth) values (@name, @surname, @yearOfBith)" UpdateCommand="UPDATE Customer set Name = @Name , Surname = @Surname , YearofBirth = @YearofBirth where Id = @Id" DeleteCommand="DELETE FROM Customer where Id = @Id">
            <DeleteParameters>
                <asp:ControlParameter ControlID="GridViewCustomer" Name="Id" PropertyName="SelectedValue" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBoxCostumerName" Name="name" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBoxCostumerSurname" Name="surname" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBoxDateOdBorn" Name="yearOfBith" PropertyName="Text" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="GridViewCustomer" Name="Name" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="GridViewCustomer" Name="Surname" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="GridViewCustomer" Name="YearofBirth" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="GridViewCustomer" Name="Id" PropertyName="SelectedValue" />
            </UpdateParameters>
        </asp:SqlDataSource>
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
        <br />
        <asp:GridView ID="GridViewOrders" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataOrders">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="id_product" HeaderText="id_product" SortExpression="id_product" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataOrders" runat="server" ConnectionString="<%$ ConnectionStrings:TradeCompanyConnectionString %>" DeleteCommand="Delete FROM [Order] where Id = @Id" InsertCommand="INSERT INTO [Order] (id_customer, id_product, description) values(@id_customer, @id_product, @description)" SelectCommand="SELECT [Id], [id_product], [description] FROM [Order] WHERE ([id_customer] = @id_customer)" UpdateCommand="UPDATE [Order] set id_customer =@id_customer  , id_product =  @id_product , description =  @description  where  Id= @Id ">
            <DeleteParameters>
                <asp:ControlParameter ControlID="GridViewOrders" Name="Id" PropertyName="SelectedValue" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter />
                <asp:ControlParameter ControlID="TextBoxProductID" Name="id_product" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBoxOrderComment" Name="description" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBoxCustomerID" Name="id_customer" PropertyName="Text" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridViewCustomer" Name="id_customer" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="GridViewCustomer" Name="id_customer" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="GridViewOrders" Name="id_product" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="GridViewOrders" Name="description" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="GridViewOrders" Name="Id" PropertyName="SelectedValue" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <asp:Button ID="ShowAdminPanelBtn" runat="server" OnClick="ShowAdminPanelBtn_Click" Text="Добавить продукт" />
        <asp:Button ID="ButtonUpdateProduct" runat="server" OnClick="ButtonUpdateProduct_Click" Text="Изменить продукт" />
        <asp:Button ID="ButtonDeleteProduct" runat="server" OnClick="ButtonDeleteProduct_Click" Text="Удалить" />
        <br />
        <br />
        <br />
        <asp:Panel ID="ProductAdminPanel" runat="server" Height="139px" style="margin-top: 0px" Visible="False">
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
        <asp:Button ID="ButtonShowCostumerAdmin" runat="server" OnClick="ButtonShowCostumerAdmin_Click" Text="Добавить покупателя" />
        <asp:Button ID="ButtonChangeCustomer" runat="server" OnClick="ButtonChangeCustomer_Click" Text="Изменить покупателя" />
        <asp:Button ID="ButtonDeleteCustomer" runat="server" Text="Удалить покупателя" OnClick="ButtonDeleteCustomer_Click" />
        <br />
        <asp:Panel ID="PanelAdminCostumer" runat="server" Height="156px" Visible="False">
            Имя:
            <asp:TextBox ID="TextBoxCostumerName" runat="server"></asp:TextBox>
            <br />
            Фамилия:
            <asp:TextBox ID="TextBoxCostumerSurname" runat="server"></asp:TextBox>
            <br />
            Год рождения:
            <asp:TextBox ID="TextBoxDateOdBorn" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="ButtonAddCostumer" runat="server" Text="Добавить" OnClick="ButtonAddCostumer_Click" />
            <asp:Button ID="ButtonClearCostumerForm" runat="server" OnClick="ButtonClearCostumerForm_Click" Text="Отменить" />
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>
        <asp:Button ID="ButtonOpenAdminOrder" runat="server" OnClick="ButtonOpenAdminOrder_Click" Text="Добавить заказ" />
        <asp:Button ID="ButtonUpdateOrder" runat="server" OnClick="ButtonUpdateOrder_Click" Text="Изменить заказ" />
        <asp:Button ID="ButtonDeleteOrder" runat="server" Text="Удалить заказ" OnClick="ButtonDeleteOrder_Click" />
        <asp:Panel ID="OrderAdminPanel" runat="server" Height="119px" Visible="False">
            id_Заказчика:
            <asp:TextBox ID="TextBoxCustomerID" runat="server"></asp:TextBox>
            <br />
            id_продукта:
            <asp:TextBox ID="TextBoxProductID" runat="server"></asp:TextBox>
            <br />
            Комментарии:
            <asp:TextBox ID="TextBoxOrderComment" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="ButtonAddOrder" runat="server" OnClick="ButtonAddOrder_Click" Text="Добавить" />
            <asp:Button ID="ButtonClearOrderForm" runat="server" OnClick="ButtonClearOrderForm_Click" Text="Отменить" />
            <br />
        </asp:Panel>
    </form>
</body>
</html>

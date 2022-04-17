<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Calculator.ascx.cs" Inherits="Calculator.WebUserControl" %>

<asp:TextBox ID="TextBoxValue1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="34px"></asp:TextBox>
&nbsp;<asp:Label ID="LabelSign" runat="server" Text="+-*/"></asp:Label>
&nbsp;
<asp:TextBox ID="TextBoxValue2" runat="server" Width="35px" OnTextChanged="TextBoxValue2_TextChanged"></asp:TextBox>
&nbsp;
<asp:Label ID="LabelResult" runat="server" Text="="></asp:Label>
<br />
<div style="width: 584px; height: 87px">
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorValue1" runat="server" ControlToValidate="TextBoxValue1" ErrorMessage="Значение должно быть введено"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorValue2" runat="server" ControlToValidate="TextBoxValue2" ErrorMessage="Значение должно быть введено"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="ButtonIncrement" runat="server" OnClick="ButtonIncrement_Click" Text="+" />
    <asp:Button ID="ButtonDecriment" runat="server" OnClick="ButtonDecriment_Click" Text="-" />
    <asp:Button ID="ButtonResult" runat="server" OnClick="ButtonResult_Click" style="margin-left: 48px" Text="Результат!" Width="170px" />
    <br />
    <asp:Button ID="ButtonDivision" runat="server" OnClick="ButtonDivision_Click" Text="/" />
    <asp:Button ID="ButtonMiltiply" runat="server" OnClick="ButtonMiltiply_Click" Text="*" />
    <br />
    <div style="height: 55px; width: 1182px">
    </div>
</div>




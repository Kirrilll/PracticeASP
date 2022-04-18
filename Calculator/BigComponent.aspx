<%@ Page Title="" Language="C#" MasterPageFile="~/PracticeMasterPage.Master" AutoEventWireup="true" CodeBehind="BigComponent.aspx.cs" Inherits="Calculator.BigComponent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="redirect-container">
        <asp:Button ID="ButtonRedirect" runat="server" Text="Переместиться!" Width="451px" OnClick="ButtonRedirect_Click" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    Переместитесь на другую страницу
</asp:Content>

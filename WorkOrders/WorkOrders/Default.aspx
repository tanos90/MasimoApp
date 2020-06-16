<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WorkOrders._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Login</h1>
        <p>Email</p>
        <div>
            <input id="Text1" type="text" /><br />
        <p>Password</p>
            <input id="Text2" type="text" /><br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="btn-primary" OnClick="Button1_Click" Text="Accept" />
        </div>
    </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Account" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
      <div class="container">
        <a class="navbar-brand" runat="server" href="~/Index">Rhythm</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" runat="server" href="~/Index">Index</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" runat="server" href="~/Home">Home</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div style="margin-top:50px;" class="text-center">
        <h2 class="text-center">
    <asp:Label ID="Label1" runat="server" Text="ADMIN LOGIN" CssClass="h3"></asp:Label></h2>
        <br />
    <asp:Label ID="Label2" runat="server" Text="Admin Id:"></asp:Label><br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label3" runat="server" Text="Admin Password:"></asp:Label><br />
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
    <br />
    <asp:Button ID="LOGIN" runat="server" Text="Login" OnClick="LOGIN_Click" BackColor="#FF0066" Width="200px" /><br />
    <asp:Label ID="Label4" runat="server" Text="Label" ForeColor="Red"></asp:Label>
    <br />

    </asp:Content>
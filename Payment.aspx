<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
      <div class="container">
        <a class="navbar-brand" runat="server" href="~/Index">Spotify</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" runat="server" href="~/Signup">Sign Up</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" runat="server" href="~/Login">Log In</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" runat="server" href="~/Contact">Contact Us</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <section id="first" style="padding-top: 5%;">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 order-lg-2">
            <div class="p-5">
              <h2 class="display-4">Order Details</h2>
                <asp:Label ID="fullNameLabel" CssClass="control-label" runat="server" Text="Full Name"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="fullNameServer" runat="server" Text=""></asp:Label>
                <br />
                <asp:Label ID="EmailLabel" CssClass="control-label" runat="server" Text="Email"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="EmailServer" runat="server" Text=""></asp:Label>
                <asp:Label ID="PassSession" runat="server" Visible="False"></asp:Label>
                <br />
                <asp:Label ID="PhoneNumberLabel" CssClass="control-label" runat="server" Text="Phone Number"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="PhoneNumberServer" runat="server"></asp:Label>
            </div>
          </div>
          <div class="col-lg-6 order-lg-1">
            <div class="p-5">
              <h2 class="display-4">Payment</h2>
              <div class="form-group">
                    <label for="card" class="control-label">Card Number</label>
                    <div class="col-lg-10">
                      <asp:TextBox ID="card" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                    </div>
              </div>
                <div class="form-group">
                    <label for="month" class="control-label">Expiration Month</label>
                    <div class="col-lg-5">
                        <asp:DropDownList ID="ExpMonth" CssClass="form-control" runat="server" AutoPostBack="True">
                            <asp:ListItem Selected="True">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label for="year" class="control-label">Expiration Year</label>
                    <div class="col-lg-5">
                        <asp:DropDownList ID="ExpYear" CssClass="form-control" runat="server" AutoPostBack="True">
                            <asp:ListItem Selected="True">2018</asp:ListItem>
                            <asp:ListItem>2019</asp:ListItem>
                            <asp:ListItem>2020</asp:ListItem>
                            <asp:ListItem>2021</asp:ListItem>
                            <asp:ListItem>2022</asp:ListItem>
                            <asp:ListItem>2023</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
              <div class="form-group">
                    <label for="cvv" class="control-label">CVV</label>
                    <div class="col-lg-10">
                        <asp:TextBox ID="cvv" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                    </div>
              </div>
              <div class="form-group">
                    <label for="name" class="control-label">Name on Card</label>
                    <div class="col-lg-10">
                        <asp:TextBox ID="name" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
              </div>
              <div class="form-group">
                    <asp:Label ID="Label1" CssClass="control-label" runat="server" Text="Payment Amount: $99.99/Lifetime"></asp:Label>
              </div>
              <asp:Button ID="signup" CssClass="btn btn-block btn-danger" runat="server" Text="Sign-up" OnClick="signup_Click" />
            </div>
          </div>
        </div>
      </div>
    </section>
</asp:Content>


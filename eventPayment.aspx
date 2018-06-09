<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="eventPayment.aspx.cs" Inherits="eventPayment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
              <a class="nav-link" runat="server" href="~/Home">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" runat="server" href="~/Login">Log Out</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" runat="server" href="~/Contact">Contact Us</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
<section id="first" style="padding-top: 3%;">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 order-lg-2">
            <div class="p-5">
              <h2 class="display-4">Event Details</h2>
                <asp:Label ID="EventNameLabel" CssClass="control-label" runat="server" Text="Event Name"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="EventNameServer" runat="server" Width="300px"></asp:Label>
                <br />
                <asp:Label ID="EventTimeLabel" CssClass="control-label" runat="server" Text="Event Time"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="EventTimeServer" runat="server" Width="300px"></asp:Label>
                <br />
                <asp:Label ID="VenueLabel" CssClass="control-label" runat="server" Text="Event Venue"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="VenueServer" runat="server" Width="300px"></asp:Label>
                <br />
                User Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="EmailServer" runat="server" Width="300px"></asp:Label>
            </div>
          </div>
          <div class="col-lg-6 order-lg-1">
            <div class="p-5">
              <h2 class="display-4">Payment </h2>
              <div class="form-group">
                    <label for="Newcard" class="control-label">Card Number</label>
                    <div class="col-lg-10">
                      <asp:TextBox ID="Newcard" CssClass="form-control" TextMode="Number" runat="server" MaxLength="16"></asp:TextBox>
                    </div>
              </div>
                <div class="form-group">
                    <label for="newExpMonth" class="control-label">Expiration Month</label>
                    <div class="col-lg-5">
                        <asp:DropDownList ID="newExpMonth" CssClass="form-control" runat="server">
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
                    <label for="newExpYear" class="control-label">Expiration Year</label>
                    <div class="col-lg-5">
                        <asp:DropDownList ID="newExpYear" CssClass="form-control" runat="server">
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
                    <label for="newcvv" class="control-label">CVV</label>
                    <div class="col-lg-10">
                        <asp:TextBox ID="newcvv" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                    </div>
              </div>
              <div class="form-group">
                    <label for="Newname" class="control-label">Name on Card</label>
                    <div class="col-lg-10">
                        <asp:TextBox ID="Newname" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
              </div>
              <div class="form-group">
                    <asp:Label ID="TotalCostLabel" CssClass="control-label" runat="server" Text="Payment Amount: "></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="TotalCostServer" runat="server" Text=""></asp:Label>
              </div>
              <asp:Button ID="purchase" CssClass="btn btn-block btn-danger" runat="server" Text="Purchase Tickets" OnClick="purchase_Click" />
            </div>
          </div>
        </div>
      </div>
    </section>
</asp:Content>


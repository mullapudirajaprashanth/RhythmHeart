<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
      <div class="container">
        <a class="navbar-brand" runat="server" href="~/Index">RHYTHM</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" runat="server" href="~/Index">Index</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" runat="server" href="~/Login">Log In</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" runat="server" href="~/Signup">Sign Up</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    
     <section style="padding-top: 0.2%;">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 order-lg-2">
            <div class="p-5">
                <div class="contact-img">
                  <img src="img/contactUs.JPG" height="250" width="900"/>
                </div><br />
                <div class="form-group">
                    <label for="Email" class="control-label">Email</label>
                    <div class="col-lg-10">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email is Required" ControlToValidate="Email"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="Email" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label for="AboutSelect" class="control-label">About</label>
                    <div class="col-lg-10">
                        <asp:DropDownList CssClass="form-control" ID="AboutSelect" runat="server">
                            <asp:ListItem>Tickets</asp:ListItem>
                            <asp:ListItem>Events</asp:ListItem>
                            <asp:ListItem>Payment Issue</asp:ListItem>
                            <asp:ListItem>Songs Related</asp:ListItem>
                            <asp:ListItem Selected="True">General Enquiry</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label for="desc" class="control-label">Description</label>
                    <div class="col-lg-10">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required" ControlToValidate="desc"></asp:RequiredFieldValidator>
                        <asp:TextBox CssClass="form-control" ID="desc" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
                <asp:Button CssClass="btn btn-block btn-primary" ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Footer -->
    <footer class="py-5 bg-black" style=" position:relative; left:0px; bottom:-20px !important; width:100% !important;">
        <div class="container">
            <p class="m-0 text-center text-white small">Copyright &copy; Your Website 2018</p>
        </div>
    </footer>
</asp:Content>

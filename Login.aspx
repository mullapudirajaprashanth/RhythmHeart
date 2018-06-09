<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="About" %>

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
              <img class="img-fluid rounded-circle" src="img/02.jpg" alt="login">
            </div>
          </div>
          <div class="col-lg-6 order-lg-1">
            <div class="p-5">
              <h2 class="display-4">Login</h2>
              <div class="form-group">
                    <label for="inputEmail" class="control-label">User Email</label>
                    <div class="col-lg-10">
                      <!--<input type="email" class="form-control" id="inputEmail" placeholder="john@doe.com">-->
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="This is a required field" ForeColor="Red"></asp:RequiredFieldValidator>
                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
                    </div>
              </div>
              <div class="form-group">
                    <label for="pwd" class="control-label">Password</label>
                    <div class="col-lg-10">
                      <!--<input type="password" class="form-control" id="pwd" placeholder="********">-->
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="This is a required field" ForeColor="Red"></asp:RequiredFieldValidator>
                      <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
              </div>
                <asp:Label ID="Label1" runat="server"></asp:Label>
              <!--<a href="home.html" class="btn btn-block btn-success">Login</a>-->
                 <asp:Button ID="Button1" CssClass="btn btn-block btn-danger" runat="server" Text="Login" OnClick="Button1_Click" />
              <p><a runat="server" href="~/Forgot">Forgot Password</a></p>
            </div>
          </div>
        </div>
      </div>
    </section>

            <!-- Footer -->
    <footer class="py-5 bg-black" style="margin-bottom:-20px !important;">
        <div class="container">
            <p class="m-0 text-center text-white small">Rhythm Copyright &copy; PP Creations 2018</p>
        </div>
    </footer>
</asp:Content>

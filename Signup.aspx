<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

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
              <img class="img-fluid rounded-circle" src="img/01.jpg" alt="signup">
            </div>
          </div>
          <div class="col-lg-6 order-lg-1">
            <div class="p-5">
              <h2 class="display-4">Welcome to Rhythm Heart!</h2>
              <div class="form-group">
                    <label for="name" class="control-label">Name</label>
                    <div class="col-lg-10">
                      <!--<input type="text" class="form-control" id="name" placeholder="John Doe">-->
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="This is a required field"></asp:RequiredFieldValidator>
                      <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"></asp:TextBox>
                    </div>
              </div>
              <div class="form-group">
                    <label for="TextBox1" class="control-label">Email</label>
                    <div class="col-lg-10">
                      <!--<input type="email" class="form-control" id="inputEmail" placeholder="john@doe.com">-->
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="This is a required field"></asp:RequiredFieldValidator>
                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
                    </div>
              </div>
              <div class="form-group">
                    <label for="pwd" class="control-label">Password</label>
                    <div class="col-lg-10">
                      <!--<input type="password" class="form-control" id="pwd" placeholder="********">-->
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="This is a required field"></asp:RequiredFieldValidator>
                      <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
              </div>
              <div class="form-group">
                    <label for="confPwd" class="control-label">Confirm Password</label>
                    <div class="col-lg-10">
                      <!--<input type="password" class="form-control" id="confPwd" placeholder="********">-->
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="This is a required field"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Passwords dont match" ForeColor="Red"></asp:CompareValidator>
                      <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
              </div>
              <div class="form-group">
                    <label for="confPwd" class="control-label">Mobile</label>
                    <div class="col-lg-10">
                      <!--<input type="password" class="form-control" id="confPwd" placeholder="********">-->
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="This is a required field"></asp:RequiredFieldValidator>
                      <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" TextMode="Phone" MaxLength="10"></asp:TextBox>
                    </div>
              </div>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label> 
              <asp:Button ID="Button1" CssClass="btn btn-block btn-danger" runat="server" Text="Proceed to Payment" OnClick="Button1_Click" />
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


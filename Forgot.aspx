<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Forgot.aspx.cs" Inherits="Forgot" %>

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
              <img class="img-fluid rounded-circle" src="img/03.jpg" alt="login">
            </div>
          </div>
          <div class="col-lg-6 order-lg-1">
            <div class="p-5">
              <h2 class="display-4">Forgot Password</h2>
              <div class="form-group">                
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;
                    <div class="col-lg-10">
                      <label for="inputEmail" class="control-label" style="width: 71px">Email</label>
                      <asp:TextBox ID="TextBox1" runat="server" placeholder = "johndoe@email.com"></asp:TextBox>
                      <%--<input type="email" class="form-control" id="inputEmail" placeholder="john@doe.com">--%>
                    </div>
              </div>
              <asp:Button ID="Button2" class ="btn btn-block btn-primary" runat="server" Text="Retrieve Password" OnClick="Button2_Click" />
              
            </div>
          </div>
        </div>
      </div>
    </section>


            <!-- Footer -->
    <footer class="py-5 bg-black" style="margin-bottom:-20px !important;">
        <div class="container">
            <p class="m-0 text-center text-white small">Rhythm &copy; PP Website 2018</p>
        </div>
    </footer>
</asp:Content>


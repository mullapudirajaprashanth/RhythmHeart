<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="_Default" %>

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

    <header class="masthead text-center text-white" style="margin-top:-50px !important;">
      <div class="masthead-content">
        <div class="container">
          <h1 class="masthead-heading mb-0">Rhythm Heart</h1>
          <h2 class="masthead-subheading mb-0">Music for you.</h2>
          <a href="#first" class="btn btn-primary btn-xl rounded-pill mt-5">Learn More</a>
        </div>
      </div>
      <div class="bg-circle-1 bg-circle"></div>
      <div class="bg-circle-2 bg-circle"></div>
      <div class="bg-circle-3 bg-circle"></div>
      <div class="bg-circle-4 bg-circle"></div>
    </header>

    <section id="first">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 order-lg-2">
            <div class="p-5">
              <img class="img-fluid rounded-circle" src="img/1.PNG" alt="albums">
            </div>
          </div>
          <div class="col-lg-6 order-lg-1">
            <div class="p-5">
              <h2 class="display-4">What’s on Rhythm Heart?</h2>
              <p><b>Music</b></p>
              <p>There are millions of songs on Rhythm. Play your favorites, 
                discover new tracks, and enjoy our perfect collection.</p>
              <p><b>Genres</b></p>
              <p>You’ll find readymade playlists to match your mood, put together by music fans and experts.</p>
              <p><b>New Releases</b></p>
              <p>Hear this week’s latest singles and albums, and check out what’s hot in the Top 10.</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6">
            <div class="p-5">
              <h2>Rhythm Heart Premium</h2>
              <h3><b>$99.99 one time payment</b></h3>
              <br>
              <ul class="special">
                <li><b>Unlimited Play</b></li>
                 <li><b>Ad Free</b></li>
                <li><b>Play any track</b></li>
                <li><b>High quality audio</b></li>
                  <li><b>International Albums</b></li>
              </ul>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="p-5">
              <h2 class="display-4">Music for your heart!</h2>
              <p>A hand-curated listening experience that's uniquely yours. Listen anytime, anywhere.</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 order-lg-2">
            <div class="p-5">
                <h2>Rhythm Events</h2>
                <h3><b>Ticketing made easy</b></h3>
                <br>
                <ul class="special">
                  <li><b>Best Concerts</b></li>
                  <li><b>Early Admission</b></li>
                  <li><b>Email Confirmations</b></li>
                  <li><b>Customer Care</b></li>
                  <li><b>Secure Payment</b></li>
                </ul>
            </div>
          </div>
          <div class="col-lg-6 order-lg-1">
            <div class="p-5">
              <h2 class="display-4">Let there be rock!</h2>
              <p>Focus on bringing the best talent to your city. Ticketing partners for live events across the country. Create the fan experience you want.</p>
            </div>
          </div>
        </div>
      </div>
    </section>

        <!-- Footer -->
    <footer class="py-5 bg-black" style="margin-bottom:-20px !important;">
        <div class="container">
            <p class="m-0 text-center text-white small">Rhythm Copyright &copy; PP Creation 2018</p>
            <p class="m-0 text-center text-white small">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminLogin.aspx">Admin Login</asp:HyperLink>
            </p>
        </div>
    </footer>
</asp:Content>

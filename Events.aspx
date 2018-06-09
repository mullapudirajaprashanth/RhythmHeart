<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="Events" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="panel1" runat="server">
<ContentTemplate>
    <style>
        td {
            padding: 20px;
        }
    </style>
     <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Rhythm</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" runat="server" href="~/Home">Home</a>
            </li>
              <li class="nav-item">
              <a class="nav-link" runat="server" href="~/Events">Events</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" runat="server" href="~/Login">Logout</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
<section style="padding: 3%;">
    <div class="container">
                <div class="welcome">
                    <h2>Events</h2>
                </div>
        <div class="row align-items-center">
            <div class="col col-lg-6 col-lg-offset-4">
                        <table>
                            <tr>
                                <td>
                                    <!--first event-->
                                    <div class="card" style="width: 18rem;">
                                      <img class="card-img-top" src="img/taylor.jpg" alt="Taylor Swift">
                                      <div class="card-body">
                                        <h5 class="card-title">Country LakeShake</h5>
                                        <p class="card-text">Artist: Taylor Swift</p>
                                        <asp:Button ID="taylor" CssClass="btn btn-primary" runat="server" Text="Learn More" OnClick="taylor_Click"/>
                                      </div>
                                    </div>
                                </td>
                                <td>
                                    <!--second event-->
                                    <div class="card" style="width: 18rem;">
                                      <img class="card-img-top" src="img/lolla.jpg" alt="Lollapalooza">
                                      <div class="card-body">
                                        <h5 class="card-title">Lollapalooza</h5>
                                        <p class="card-text">Artist: Multiple/EDM</p>
                                        <asp:Button ID="Button4" CssClass="btn btn-primary" runat="server" Text="Learn More" OnClick="Button4_Click"/>
                                      </div>
                                    </div>
                                </td>
                                <td>
                                    <!--third event-->
                                    <div class="card" style="width: 18rem;">
                                      <img class="card-img-top" src="img/camila.jpg" alt="Camila cabello">
                                      <div class="card-body">
                                        <h5 class="card-title">Never be the same -tour</h5>
                                        <p class="card-text">Artist: Camila Cabello</p>
                                        <asp:Button ID="Button5" CssClass="btn btn-primary" runat="server" Text="Learn More" OnClick="Button5_Click"/>
                                      </div>
                                    </div>
                                </td>
                            </tr>
                        </table> 
                <h3><asp:Label ID="scroll" runat="server" Text=""></asp:Label></h3>
            </div>
        </div>
    </div>
</section>

<div id="dvFirstDiv" runat="server" style="display: none;">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 order-lg-2">
            <div class="p-5">
              <img class="img-fluid rounded-circle" src="img/taylor.jpg" alt="taylor">
            </div>
          </div>
          <div class="col-lg-6 order-lg-1">
            <div class="p-5">
              <h2 class="display-4">Country LakeShake</h2>
              <p><b>Artist: Taylor Swift</b></p>
              <p><b>Time</b></p>
              <p>Jun 22, 2018 Fri 12:00 AM CDT</p>
              <p><b>Venue</b></p>
              <p>Huntington Bank Pavilion at Northerly Island in Chicago, Illinois</p>
              <br />
              <div class="tick1">
                  <div>
                      <span style="font-size:smaller;"><asp:Label ID="add0" runat="server" Text="Add/Modify Tickets"></asp:Label>
                                                <asp:ImageButton ID="ImageButton1" ImageUrl="~/img/Plus.png" runat="server" Height="30px" Width="30px" OnClick="ImageButton1_Click"/>
                      <asp:ImageButton ID="ImageButton2" ImageUrl="~/img/Minus.png" runat="server" Height="30px" Width="30px" OnClick="ImageButton2_Click"/>
                      </span>
                  </div>
                    <br />
                  <div>
                      <asp:Label ID="Label4" runat="server" Text="Total Tickets selected:"></asp:Label>
                      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                  </div>
                    <br />
                  <div>
                      <asp:Label ID="Label3" runat="server" Text="The total cost of tickets are:"></asp:Label>
                      <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                  </div>
                    <br />
                  <div>
                      <asp:Label ID="Label5" runat="server" Text="Remaining Tickets:"></asp:Label>
                      <asp:Label ID="Label8" runat="server" Visible="False"></asp:Label>
                      &nbsp;&nbsp;
                      <asp:Label ID="Label6" runat="server"></asp:Label>
                  </div>
                    <br />
                  <div>
                      <asp:Button ID="buy" CssClass="btn btn-lg btn-success" runat="server" Text="Buy Tickets" OnClick="buy_Click" />
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>
</div>
<div id="dvSecondDiv" runat="server" style="display: none;">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 order-lg-2">
            <div class="p-5">
              <img class="img-fluid rounded-circle" src="img/lolla.jpg" alt="lolla">
            </div>
          </div>
          <div class="col-lg-6 order-lg-1">
            <div class="p-5">
              <h2 class="display-4">Lollapalooza</h2>
              <p><b>Artist: Multiple/EDM</b></p>
              <p><b>Time</b></p>
              <p>Sep 22, 2018 Sat 6:30 PM CDT</p>
              <p><b>Venue</b></p>
              <p>Hollywood Casino Amphitheatre - Chicago, IL</p>
              <div class="tick2">
                  <div>
                      <span style="font-size:smaller;"><asp:Label ID="add1" runat="server" Text="Add/Modify Tickets"></asp:Label>
                      <asp:ImageButton ID="ImageButton3" ImageUrl="~/img/Plus.png" runat="server" Height="30px" Width="30px" OnClick="ImageButton3_Click"/>
                      <asp:ImageButton ID="ImageButton4" ImageUrl="~/img/Minus.png" runat="server" Height="30px" Width="30px" OnClick="ImageButton4_Click"/>
                      </span>
                  </div>
                    <br />
                  <div>
                      <asp:Label ID="Label7" runat="server" Text="Total Tickets selected:"></asp:Label>
                      <asp:Label ID="selected" runat="server" Text=""></asp:Label>
                  </div>
                    <br />
                  <div>
                      <asp:Label ID="Label10" runat="server" Text="The total cost of tickets are:"></asp:Label>
                      <asp:Label ID="cost" runat="server" Text=""></asp:Label>
                  </div>
                    <br />
                  <div>
                      <asp:Label ID="Label12" runat="server" Text="Remaining Tickets:"></asp:Label>
                      <asp:Label ID="rem" runat="server" Visible="False"></asp:Label>
                      &nbsp;&nbsp;
                      <asp:Label ID="RemainingT" runat="server" Text=""></asp:Label>
                  </div>
                    <br />
                  <div>
                      <asp:Button ID="buy1" CssClass="btn btn-lg btn-success" runat="server" Text="Buy Tickets" OnClick="buy1_Click" />
                  </div>
              </div>              
            </div>
          </div>
        </div>
      </div>
</div>
<div id="dvThirdDiv" runat="server" style="display: none;">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 order-lg-2">
            <div class="p-5">
              <img class="img-fluid rounded-circle" src="img/camila.jpg" alt="Camila Cabello">
            </div>
          </div>
          <div class="col-lg-6 order-lg-1">
            <div class="p-5">
              <h2 class="display-4">Never be the same -Tour</h2>
              <p><b>Artist: Camila Cabello</b></p>
              <p><b>Time</b></p>
              <p>Sep 29, 2018 Sat 6:30 PM CDT</p>
              <p><b>Venue</b></p>
              <p>Hollywood Casino Amphitheatre - Chicago, IL</p>
                  <div class="tick3">
                  <div>
                      <span style="font-size:smaller;">
                      <asp:Label ID="add2" runat="server" Text="Add/Modify Tickets"></asp:Label>
                      <asp:ImageButton ID="ImageButton5" ImageUrl="~/img/Plus.png" runat="server" Height="30px" Width="30px" OnClick="ImageButton5_Click"/>
                      <asp:ImageButton ID="ImageButton6" ImageUrl="~/img/Minus.png" runat="server" Height="30px" Width="30px" OnClick="ImageButton6_Click"/>
                      <span style="font-size:smaller;">
                  </div>
                    <br />
                  <div>
                      <asp:Label ID="Label15" runat="server" Text="Total Tickets selected:"></asp:Label>
                      <asp:Label ID="selectedd" runat="server" Text=""></asp:Label>
                  </div>
                    <br />
                  <div>
                      <asp:Label ID="Label17" runat="server" Text="The total cost of tickets are:"></asp:Label>
                      <asp:Label ID="costt" runat="server" Text=""></asp:Label>
                  </div>
                    <br />
                  <div>
                      <asp:Label ID="Label19" runat="server" Text="Remaining Tickets:"></asp:Label>
                      <asp:Label ID="remm" runat="server" Visible="False"></asp:Label>
                      &nbsp;&nbsp;
                      <asp:Label ID="RemainingTT" runat="server" Text=""></asp:Label>
                  </div>
                    <br />
                  <div>
                      <asp:Button ID="buy2" CssClass="btn btn-lg btn-success" runat="server" Text="Buy Tickets" OnClick="buy2_Click" />
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>
</div>
    </span></span>
</ContentTemplate>
</asp:UpdatePanel>
</asp:Content>


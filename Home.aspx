<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <style>
            .player {
                bottom: 0;
                position: fixed;
                width: 100% !important;
                left: 0;
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

 <section style="padding: 10%;">
        <div class="container">
            <div class="row align-items-center">
            <div class="col-lg-12">
                <div class="Genre">
                    <h3>Genre</h3>
                    <hr>
                        <table>
                            <tr>
                                <th><a data-toggle="modal" data-target="#myModal"><img src="img/album/shape.jpg" class="img-responsive" height="200" width="200"/></a></th>
                                <th><a data-toggle="modal" data-target="#myModal1"><img src="img/album/imagine.jpg" class=".img-rounded" height="200" width="200"/></a></th>
                                <th><a data-toggle="modal" data-target="#myModal2"><img src="img/album/charlie.jpg" class=".img-rounded" height="200" width="200"/></a></th>    
                                <th><a data-toggle="modal" data-target="#myModal3"><img src="img/album/lp.jpg" class=".img-rounded" height="200" width="200"/></a></th>
                            </tr>
                            <tr>
                                <td>Popular</td>
                                <td>Chill</td>
                                <td>Soft Pop</td>
                                <td>Metal</td>
                            </tr>
                        </table>                
                </div><br />
                <div class="Albums">
                    <h3>Albums
                    </h3>
                    <hr>
                        <table>
                            <tr>
                                <th><a data-toggle="modal" data-target="#myModal4"><img src="img/album/never.jpg" class="img-responsive" height="200" width="200"/></a></th>
                                <th><a data-toggle="modal" data-target="#myModal5"><img src="img/alb8.jpg" class=".img-rounded" height="200" width="200"/></a></th>
                                <th><a data-toggle="modal" data-target="#myModal6"><img src="img/album/marsh.jpg" class=".img-rounded" height="200" width="200"/></a></th>    
                                <th><a data-toggle="modal" data-target="#myModal7"><img src="img/album/alb10.jpg" class=".img-rounded" height="200" width="200"/></a></th>
                            </tr>
                            <tr>
                                <td>Never Be the same</td>
                                <td>Telugu 2018</td>
                                <td>Joy</td>
                                <td>Bahubali</td>
                            </tr>
                        </table>                
                </div>
            </div>
            </div>
        </div>
    </section>
    <!-- Modal -->
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
      
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Popular Hits</h4>
            </div>
            <div class="modal-body">
                <u><a onclick="play()">1. Shape of you</a></u>
                <br>
                <u><a onclick="play1()">2. Bharath ane Nenu</a></u>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
      
        </div>
    </div>

    <!-- Modal1 -->
    <div id="myModal1" class="modal fade" role="dialog">
        <div class="modal-dialog">
      
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Imagine Dragons</h4>
            </div>
            <div class="modal-body">
                <u><a onclick="play2()">1. Demons</a></u>
                <br>
                <u><a onclick="play3()">2. Thunder</a></u>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
      
        </div>
    </div>

    <!-- Modal2 -->
    <div id="myModal2" class="modal fade" role="dialog">
        <div class="modal-dialog">
      
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Charlie Puth</h4>
            </div>
            <div class="modal-body">
                <u><a onclick="play4()">1. We don't talk anymore</a></u>
                <br>
                <u><a onclick="play5()">2. Attention</a></u>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
      
        </div>
    </div>

    <!-- Modal3 -->
    <div id="myModal3" class="modal fade" role="dialog">
        <div class="modal-dialog">
      
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Linkin Park</h4>
            </div>
            <div class="modal-body">
                <u><a onclick="play6()">1. In the End</a></u>
                <br>
                <u><a onclick="play7()">2. Cheap Thrills</a></u>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
      
        </div>
    </div>

    <!-- Modal4 -->
    <div id="myModal4" class="modal fade" role="dialog">
        <div class="modal-dialog">
      
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Never Be The Same</h4>
            </div>
            <div class="modal-body">
                <u><a onclick="play8()">1. Never Be the Same</a></u>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
      
        </div>
    </div>

    <!-- Modal -->
    <div id="myModal5" class="modal fade" role="dialog">
        <div class="modal-dialog">
      
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Telugu 2018</h4>
            </div>
            <div class="modal-body">
                <u><a onclick="play9()">1. Gali Valuga</a></u>
                <br>
                <u><a onclick="play10()">2. Unattundi Gundey</a></u>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
      
        </div>
    </div>

    <!-- Modal6 -->
    <div id="myModal6" class="modal fade" role="dialog">
        <div class="modal-dialog">
      
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Marshmellow</h4>
            </div>
            <div class="modal-body">
                <u><a onclick="play11()">1. Friends</a></u>
                <br>
                <u><a onclick="play12()">2. Wolves</a></u>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
      
        </div>
    </div>

    <!-- Modal7 -->
    <div id="myModal7" class="modal fade" role="dialog">
        <div class="modal-dialog">
      
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Baahubali</h4>
            </div>
            <div class="modal-body">
                <u><a onclick="play13()">1. Bali Bali</a></u>
                <br>
                <u><a onclick="play14()">2. Dandalayya</a></u>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
      
        </div>
    </div>
    <div id="player">

    </div>

</asp:Content>


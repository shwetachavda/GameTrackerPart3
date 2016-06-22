<%@ Page Title="Game Tracker" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="GameTrackerFinal.Game" %>

<%--
File Name: Game.aspx
Author Name: Mansi Patel(200303640) & Shweta Chavda(200326347)
Website Name: http://gametrackerproject.azurewebsites.net/Default.aspx
Description: From this page user can create a tracker for their favourite game's team
 @date: June 8, 2016
 @version: 0.0.1 
 @date: June 15, 2016
 @version: 0.0.2  
--%>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section id="services" class="services">
        <div class="services">
            <div class="row text-center">
                <div class="col-lg-10 col-lg-offset-1">
                    <h1>Tracker...</h1>
                    <div class="row">
                        <label for="PageSizeDropDownList" id="select-week">Select Week: </label>
                        
                    </div>

    
                                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" ></asp:Calendar>
                            <asp:GridView runat="server" CssClass="table table-hover" BackColor="White"
                    ID="WeeklyGamesGridView" DataKeyNames="gameID" OnSelectedIndexChanged="WeeklyGamesGridView_SelectedIndexChanged" AutoGenerateColumns="False">
                        <Columns>
                        <asp:BoundField DataField="GameType" HeaderText="Game Name" Visible="true" SortExpression="GameType" />
                        <asp:BoundField DataField="Team1Name" HeaderText="Team1 Name" Visible="true" SortExpression="Team1Name" />
                        <asp:BoundField DataField="Team2Name" HeaderText="Team2 Name" Visible="true" SortExpression="Team2Name" />
                        <asp:BoundField DataField="Team1Score" HeaderText="Team1 Score" Visible="true" SortExpression="Team1Score" />
                        <asp:BoundField DataField="Team2Score" HeaderText="Team2 Score" Visible="true" SortExpression="Team2Score" />
                        <asp:BoundField DataField="GameWinner" HeaderText="GameWinner" Visible="true" SortExpression="GameWinner" />
                        </Columns>
                    </asp:GridView>
    <asp:TextBox runat="server" ID="WeekTextBox"></asp:TextBox>
                    <br />
                    <br />
                    <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                            <span class="image">
                                <img src="Assets/Images/baseball1.jpg" width="200" height="200" class="img-thumbnail" />
                            </span>
                            <h4>
                                <strong>BaseBall</strong>
                            </h4>
                            <div id="baseBallViewers">
                                <a class="btn btn-info btn-group-lg" id="BaseBallButton" href="GameDetails.aspx"><i class="fa fa-hand-pointer-o"></i>View</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                            <span class="image">
                                <img src="Assets/Images/basket.jpg" width="200" height="200" class="img-thumbnail" />
                            </span>
                            <h4>
                                <strong>BasketBall </strong>
                            </h4>
                            <div id="basketBallViewers">
                                <a class="btn btn-info btn-group-lg" id="BasketBallButton" href="GameDetails.aspx"><i class="fa fa-hand-pointer-o"></i>View</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                            <span class="image">
                                <img src="Assets/Images/hockey1.jpg" width="200" height="200" class="img-thumbnail" />
                            </span>
                            <h4>
                                <strong>Hockey</strong>
                            </h4>
                            <div id="hockeyViewers">
                                <a class="btn btn-info btn-group-lg" id="HockeyButton" href="GameDetails.aspx"><i class="fa fa-hand-pointer-o"></i>View</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                            <span class="image">
                                <img src="Assets/Images/soccer1.jpg" width="200" height="200" class="img-thumbnail" />

                            </span>
                            <h4>
                                <strong>Soccer</strong>
                            </h4>
                            <div id="soccerViewers">
                                <a class="btn btn-info btn-group-lg" id="SoccerButton" href="GameDetails.aspx"><i class="fa fa-hand-pointer-o"></i>View</a>
                            </div>
                            <br />
                            <asp:GridView runat="server" ID="WeeklyGame"></asp:GridView>

                        </div>
                    </div>
                </div>
                <!-- /.row (nested) -->
            </div>
            <!-- /.col-lg-10 -->
        </div><!-- /.container -->
    </section>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>


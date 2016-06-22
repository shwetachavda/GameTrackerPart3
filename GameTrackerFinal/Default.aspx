<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GameTrackerFinal.Default" %>

<%--
File Name: Default.aspx
Author Name: Mansi Patel(200303640) & Shweta Chavda(200326347)
Website Name: http://gametrackerproject.azurewebsites.net/Default.aspx
Description:  This is the Home Page for the portfolio website wit the information of previously tracked results of different game's team.
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
                    <h1>Games...</h1>
                    <div class="row">
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="image">
                                    <img src="Assets/Images/baseball.gif" width="200" height="200" class="img-circle" />
                                </span>
                                <h4>
                                    <strong>BaseBall</strong>
                                </h4>
                                <p id="TeamName">
                                    Toronto Blue Jays VS
                                    <br />
                                    Boston Red Sox
                                </p>
                                <p id="Score">
                                    Toronto Blue Jays: 5
                                    <br />
                                    Boston Red Sox: 3
                                </p>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="image">
                                    <img src="Assets/Images/basketball.gif" width="200" height="200" class="img-circle" />
                                </span>
                                <h4>
                                    <strong>BasketBall </strong>
                                </h4>
                                <p id="TeamName1">
                                    Chicago Bulls VS
                                    <br />
                                    Los Angeles Clippers
                                </p>
                                <p id="Score1">
                                    Chicago Bulls: 30.1
                                    <br />
                                    Los Angeles Clippers: 7.4
                                </p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="image">
                                    <img src="Assets/Images/hockey.gif" width="200" height="200" class="img-circle" />
                                </span>
                                <h4>
                                    <strong>Hockey</strong>
                                </h4>
                                <p id="TeamName2">
                                    Toronto Maple Leafs VS
                                    <br />
                                    Boston Bruins
                                </p>
                                <p id="Score2">
                                    Toronto Maple Leafs: 3
                                    <br />
                                    Boston Bruins: 1
                                </p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="image">
                                    <img src="Assets/Images/soccer.gif" width="200" height="200" class="img-circle" />

                                </span>
                                <h4>
                                    <strong>Soccer</strong>
                                </h4>
                                <p id="TeamName3">
                                    FC Barcelona VS
                                    <br />
                                    Real Madrid C.F.
                                </p>
                                <p id="Score3">
                                    FC Barcelona: 5
                                    <br />
                                    Real Madrid C.F.: 4
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>
</asp:Content>

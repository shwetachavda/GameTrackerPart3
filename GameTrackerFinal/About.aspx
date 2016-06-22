<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="GameTrackerFinal.About" %>

<%--
File Name: About.aspx
Author Name: Mansi Patel(200303640) & Shweta Chavda(200326347)
Website Name: http://gametrackerproject.azurewebsites.net/Default.aspx
Description:  This page contains the information about the authors and the website itself with images
 @date: June 8, 2016
 @version: 0.0.1
 @date: June 15, 2016
 @version: 0.0.2  --%>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-lg-10 col-lg-offset-1">
        <h1>About Us...</h1>
        <br />
        <div class="row">
            <img src="Assets/Images/who1.png" width="200" height="200" class="img-circle" style="float: left" />
            <h4>&nbsp;&nbsp;&nbsp;  Who We Are?</h4>
            <p id="what">
                &nbsp;&nbsp; We are smart, passionate Programmer, Web Developer and Web Designer currently located in Canada and 
                            as a developer we create something more and more better for User to use in their daily life. So, this time, we come up with the idea to make a Game Tracker for enthusiastic Gamers!!!
            </p>

            <img src="Assets/Images/what.jpg" width="200" height="200" class="img-circle" style="float: right" />
            <h4>&nbsp;&nbsp;&nbsp;  What Is Game Tracker?</h4>
            <p id="who">
                &nbsp;&nbsp;&nbsp;GameTrackerFinal is a place for you to keep track of your games. 
                Once you register for an account, you can start adding games from our database and it will display the teams playing according to game selected.
                You can view the status of teams every week and can keep track of your games on a weekly basis,
                you can also view the statistics for your teams in a pie chart form. You can also edit or delete game
               if you need to. Check out some of the tracked games without being a registered user at the HOME PAGE.
            </p>
        </div>
    </div>

</asp:Content>

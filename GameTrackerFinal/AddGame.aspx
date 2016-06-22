<%@ Page Title="Add Game" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddGame.aspx.cs" Inherits="GameTrackerFinal.AddGame" %>

<%--
File Name: AddGame.aspx
Author Name: Mansi Patel(200303640) & Shweta Chavda(200326347)
Website Name: http://gametrackerproject.azurewebsites.net/Default.aspx
Description:  This page will add the games in the database.
 @date: June 8, 2016
 @version: 0.0.1
 @date: June 15, 2016
 @version: 0.0.2  --%>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-offset-3 col-md-6">
            <h1>Add Games</h1>
            <h5>All Fields are Required*</h5>
            <br />
            <div class="form-group">
                <label class="control-label" for="GameTypeTextBox">GameName: </label>
                <asp:TextBox runat="server" CssClass="form-control" ID="GameTextBox" placeholder="GameName" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="control-label" for="TeamName1TextBox">TeamName1: </label>
                <asp:TextBox runat="server" CssClass="form-control" ID="TeamName1TextBox" placeholder="TeamName1" required="true"></asp:TextBox>

            </div>
            <div class="form-group">
                <label class="control-label" for="TeamName2TextBox">TeamName2: </label>
                <asp:TextBox runat="server" CssClass="form-control" ID="TeamName2TextBox" placeholder="TeamName2" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="control-label" for="Team1ScoreTextBox">Team1Score: </label>
                <asp:TextBox runat="server" CssClass="form-control" ID="TeamScore1TextBox" placeholder="TeamScore1" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="control-label" for="Team2ScoreTextBox">Team1Score: </label>
                <asp:TextBox runat="server" CssClass="form-control" ID="TeamScore2TextBox" placeholder="TeamScore2" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="control-label" for="WeekTextBox">Week</label>
                <asp:TextBox runat="server" TextMode="Date" CssClass="form-control" ID="WeekTextBox" placeholder="Week Format: mm/dd/yyyy" required="true"></asp:TextBox>
                <asp:RangeValidator ID="WeekRangeValidator" runat="server" ErrorMessage="Invalid Date! Format: mm/dd/yyyy"
                    ControlToValidate="WeekTextBox" MinimumValue="01/01/2000" MaximumValue="01/01/2999"
                    Type="Date" Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large"></asp:RangeValidator>
            </div>
            <div class="form-group">
                <label class="control-label" for="WinnerTextBox">Winner: </label>
                <asp:TextBox runat="server" CssClass="form-control" ID="WinnerTextBox" placeholder="Winner" required="true"></asp:TextBox>
            </div>
            <div class="text-right">
                <asp:Button Text="Cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" runat="server"
                    UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click" />
                <asp:Button Text="Add" ID="AddButton" CssClass="btn btn-primary btn-lg" runat="server" OnClick="AddButton_Click" />
            </div>
        </div>
    </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameDetails.aspx.cs" Inherits="GameTrackerFinal.GameDetails" %>

<%--
File Name: GameDetails.aspx
Author Name: Mansi Patel(200303640) & Shweta Chavda(200326347)
Website Name: http://gametrackerproject.azurewebsites.net/Default.aspx
Description: This page contains the detailed information about the game in GridView
 @date: June 8, 2016
 @version: 0.0.1 
 @date: June 15, 2016
 @version: 0.0.2  
--%>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                <h1>Games List</h1>
                <a href="AddGame.aspx" class="btn btn-success btn-sm"><i class="fa fa-plus"></i>Add Game</a>
                <br />
                <div>
                    <label for="PageSizeDropDownList">Records per Page: </label>
                    <asp:DropDownList ID="PageSizeDropDownList" runat="server"
                        AutoPostBack="true" CssClass="btn btn-default bt-sm dropdown-toggle"
                        OnSelectedIndexChanged="PageSizeDropDownList_SelectedIndexChanged">
                        <asp:ListItem Text="3" Value="3" />
                        <asp:ListItem Text="5" Value="5" />
                        <asp:ListItem Text="10" Value="10" />
                        <asp:ListItem Text="All" Value="10000" />
                    </asp:DropDownList>
                    </div>
                <br />
                <asp:GridView runat="server" CssClass="table table-hover" BackColor="White"
                    ID="GamesGridView" AutoGenerateColumns="False" DataKeyNames="gameID"
                    AllowPaging="True" PageSize="3"
                    OnPageIndexChanging="GamesGridView_PageIndexChanging" AllowSorting="True"
                    OnSorting="GamesGridView_Sorting" OnRowDataBound="GamesGridView_RowDataBound"
                    PagerStyle-CssClass="pagination-ys">
                    <Columns>
                        <asp:BoundField DataField="GameType" HeaderText="Game Name" Visible="true" SortExpression="GameType" />
                        <asp:BoundField DataField="Team1Name" HeaderText="Team1 Name" Visible="true" SortExpression="Team1Name" />
                        <asp:BoundField DataField="Team2Name" HeaderText="Team2 Name" Visible="true" SortExpression="Team2Name" />
                        <asp:BoundField DataField="Team1Score" HeaderText="Team1 Score" Visible="true" SortExpression="Team1Score" />
                        <asp:BoundField DataField="Team2Score" HeaderText="Team2 Score" Visible="true" SortExpression="Team2Score" />
                        <asp:TemplateField HeaderText="Week" SortExpression="Weeks">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Weeks") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Calendar ID="Calendar1" runat="server" SelectedDate='<%# Bind("Weeks") %>' VisibleDate='<%# Bind("Weeks") %>'></asp:Calendar>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="GameWinner" HeaderText="GameWinner" Visible="true" SortExpression="GameWinner" />
                        <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square-o fa-lg'></i> Edit"
                            NavigateUrl="~/AddGame.aspx" ControlStyle-CssClass="btn btn-primary btn-sm" runat="server"
                            DataNavigateUrlFields="gameID" DataNavigateUrlFormatString="AddGame.aspx?gameID={0}" >
<ControlStyle CssClass="btn btn-primary btn-sm"></ControlStyle>
                        </asp:HyperLinkField>
                    </Columns>

<PagerStyle CssClass="pagination-ys"></PagerStyle>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>

﻿<%@ Page Title="Contact Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="GameTrackerFinal.Contact" %>

<%--
File Name: Contact.aspx
Author Name: Mansi Patel(200303640) & Shweta Chavda(200326347)
Website Name: http://gametrackerproject.azurewebsites.net/Default.aspx
Description:  This page contains the contact form for the user. 
 @date: June 8, 2016
 @version: 0.0.1
 @date: June 15, 2016
 @version: 0.0.2 
--%>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <h1>Contact Us...</h1>
            </div>
        </div>
        <div class="col-md-6 col-md-offset-3">
            <div class="form-group">
                <label class="control-label" for="FirstNameTextBox">First Name:</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="FirstNameTextBox" placeholder="First Name" required="true"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is required" ControlToValidate="FirstNameTextBox"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label class="control-label" for="LastNameTextBox">Last Name:</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="LastNameTextBox" placeholder="Last Name" required="true"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is required" ControlToValidate="LastNameTextBox"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label class="control-label" for="EmailTextBox">Email:</label>
                <asp:TextBox runat="server" TextMode="Email" CssClass="form-control" ID="EmailTextBox" placeholder="Email" required="true"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email is required" ControlToValidate="EmailTextBox"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label class="control-label" for="ContactNumberTextBox">Contact Number:</label>
                <asp:TextBox runat="server" TextMode="Phone" CssClass="form-control" ID="ContactNumberTextBox" placeholder="Contact Number" required="true"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Contact Number is required" ControlToValidate="ContactNumberTextBox"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label class="control-label" for="MessageTextBox">Your Message:</label>
                <asp:TextBox runat="server" TextMode="MultiLine" Rows="3" Columns="3" CssClass="form-control" ID="MessageTextBox" placeholder="Your Message goes here..." required="true"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Your Message is required" ControlToValidate="MessageTextBox"></asp:RequiredFieldValidator>
            </div>
            <div class="text-right">
                <a class="btn btn-warning btn-lg" id="CancelButton" href="Default.aspx"><i class="fa fa-arrow-circle-left"></i>Cancel</a>
                <asp:Button runat="server" CssClass="btn btn-primary btn-lg" ID="SendButton" Text="Send" CausesValidation="true" OnClick="SendButton_Click" />
            </div>
        </div>
    </div>
</asp:Content>

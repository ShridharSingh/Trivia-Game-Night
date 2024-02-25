<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kodelab___Quiz_Night_Assessment__.NET_Framework_._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br /> 

    <div class="container-fluid alert-secondary col-4 rounded-circle">

    <div class="card mx-auto w-auto rounded-circle">
    <div class="card-body alert-secondary rounded-circle">
    <center>

        <center>
        <br />
        <h1>Kodelab Quiz Night</h1>
        <p class="lead">Click here to find out rules and regulations</p>
        <p><a href="Rules.aspx" class="btn btn-dark btn-lg">Learn more &raquo;</a></p>
        </center>
    
    </center>
    </div>
    </div>
    </div>

    <br /><br />

    <div class="row">
    <div class="col mx-auto">
        <center>
        <asp:Label ID="label1" runat="server" Text="Quiz Options" Font-Size="XX-Large"></asp:Label>
        </center>
    </div>
    </div>

    <br /><br />

    <div class="container">
    <div class="card">
    <div class="card-body">
    <div class="row">
        <div class="col-md-4">
            <h2>Game of Thrones</h2>
            <p>
                Click here to test your knowledge and play the Game of Thrones Trivia game 
            </p>
            <div class="btn-group">
                <asp:Button CssClass="btn btn-primary" ID="GoTButton" runat="server" Text="Play GoT Trivia" OnClick="GoTButton_Click"/>
            </div>
        </div>
        <div class="col-md-4">
            <h2>Breaking Bad</h2>
            <p>
                Click here to test your knowledge and play the Breaking Bad Trivia game 
            </p>
            <div class="btn-group">
                <asp:Button CssClass="btn btn-primary" ID="BBButton" runat="server" Text="Play BB Trivia" OnClick="BBButton_Click"/>
            </div>
        </div>
        <div class="col-md-4">
            <h2>Harry Potter</h2>
            <p>
                Click here to test your knowledge and play the Harry Potter Trivia game
            </p>
            <div class="btn-group">
                <asp:Button CssClass="btn btn-primary" ID="HPButton" runat="server" Text="Play HP Trivia" OnClick="HPButton_Click"/>
            </div>
        </div>
    </div>
    </div>
    </div>
    </div>

    <br />

</asp:Content>

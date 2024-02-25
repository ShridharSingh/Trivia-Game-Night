<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="Kodelab___Quiz_Night_Assessment__.NET_Framework_.Results" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <div class="container-fluid col-8">
        <center>
            <div class="row">
                <div class="card">
                    <div class="card-body">
                        <center>

                        <br />

                        <div class="row">
                            <div class="col">
                                <center>
                                    <asp:Label ID="Label1" runat="server" Text="Quiz Completed!" Font-Bold="true" Font-Size="XX-Large"></asp:Label>
                                </center>
                            </div>
                        </div>

                        <br />

                        <div class="row">
                            <div class="col">
                                <label>Quiz Category: </label>&nbsp;<asp:Label ID="QuizCategorylbl" runat="server" Text="Quiz Category" Font-Bold="true" Font-Size="X-Large"></asp:Label>
                            </div>
                        </div>

                        <br />

                        <div class="row">
                            <div class="col">
                                <asp:Label ID="Resultslbl" runat="server" Text="Results"></asp:Label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Correct: </label>&nbsp;<asp:Label ID="Correctlbl" runat="server" Text="Correct" Font-Bold="true"></asp:Label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Incorrect: </label>&nbsp;<asp:Label ID="Incorrectlbl" runat="server" Text="Incorrect" Font-Bold="true"></asp:Label>
                            </div>
                        </div>

                        </center>

                        <br /> 

                        <div>
                             <asp:Button class="btn btn-dark col-3 mx-auto" ID="Nextbtn" runat="server" Text="<<Back to Quizzes" OnClick="Homebtn_Click"/>
                        </div>

                        <br />

                     </div>
                </div>
            </div>
        </center>
    </div>

</asp:Content>

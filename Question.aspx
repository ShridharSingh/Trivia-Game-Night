<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Question.aspx.cs" Inherits="Kodelab___Quiz_Night_Assessment__.NET_Framework_.Question" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <br />


     <div class="container-fluid col-10">
     <center>
        <div class="row">
               <div class="col mx-auto">

                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <asp:Image ID="Image1" runat="server" width="300px"/>
                                </center>
                            </div>
                        </div>
      
                        <div class="row">
                            <div class="col">
                             <hr />
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col col-md-9">
                                <label>Correct: </label><asp:Label ID="Correctlbl" runat="server" Text="0"></asp:Label> &nbsp;&nbsp;
                                <label>Incorrect: </label><asp:Label ID="Incorrectlbl" runat="server" Text="0"></asp:Label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                             <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">

                            </div>
                        </div>

                        <br />
                        <div class="row">
                            <div col="col col-md-6">
                                <asp:Label ID="Label3" runat="server" Text="1" Font-Bold="true" Font-Size="XX-Large"></asp:Label> &nbsp;
                                <asp:Label ID="Label1" runat="server" Text="Question" Font-Bold="true" Font-Size="XX-Large"></asp:Label>
                                <ul />
                            </div>
                        </div>
                        <br />
                        
                        <div class="row">
                         <hr />
                        </div>
                        <br />
                        <div class="row">
                            <div class="col col-md-12">
                                <asp:Button class="btn btn-primary"  BackColor="White" ForeColor="Black" Width="600px" ID="Answer1" runat="server" Height="50px" OnClick="Answer1_Click"/>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col col-md-12">
                                <asp:Button class="btn btn-primary" BackColor="White" ForeColor="Black" Width="600px" ID="Answer2" runat="server" Height="50px" OnClick="Answer2_Click"/>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col col-md-12">
                                <asp:Button class="btn btn-primary" BackColor="White" ForeColor="Black" Width="600px" ID="Answer3" runat="server" Height="50px" OnClick="Answer3_Click"/>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col col-md-12">
                                <asp:Button class="btn btn-primary" BackColor="White" ForeColor="Black" Width="600px" ID="Answer4" runat="server" Height="50px" OnClick="Answer4_Click" Visible="true"/>
                            </div>
                        </div>
                        <br />

                    </div>
                  </div>
             </div>
         </div>
      </center>
      </div>

    <br /> 

</asp:Content>

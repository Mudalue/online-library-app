<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="library_system.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                  <img class="img-fluid rounded-circle" src="images/user.jpg" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member Login</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                 <label>Member Id</label>
                                <div class="form-group">
                                    
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Member Id"></asp:TextBox>
                                </div>
                                <label>Password</label>
                                <div class="form-group">
                                   
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Member Id" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Button Class="btn btn-success btn-lg btn-block" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>

                                <div class="form-group">
                                   <a href="Signup.aspx">
                                       <input class="btn btn-info btn-block btn-lg" id="Button2" type="button" value="Sign-Up" />
                                   </a> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <a href="homepage.aspx"><< Back To Homepage</a><br /><br />
            </div>
        </div>
    </div>
</asp:Content>

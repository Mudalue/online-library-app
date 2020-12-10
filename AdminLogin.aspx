<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="library_system.AdminLogin" %>
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
                                  <img class="img-fluid rounded-circle" src="images/Admin.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Admin Login</h3>
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
                                 <label>Admin Id</label>
                                <div class="form-group">
                                    
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Admin Id"></asp:TextBox>
                                </div>
                                <label>Password</label>
                                <div class="form-group">
                                   
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Button Class="btn btn-success btn-lg btn-block" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>

                                
                            </div>
                        </div>
                    </div>
                </div>

               
            </div>
        </div>
    </div>
</asp:Content>

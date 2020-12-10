<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserProfille.aspx.cs" Inherits="library_system.UserProfille" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                            <center>
                                 <img class="img-fluid rounded-circle" src="images/user%20reg.png" />
                            </center>        
                           </div>
                        </div>
                         <div class="row">
                            <div class="col">
                            <center>
                                 <h4>Your Profile</h4>
                                 <span>Account Status -</span>
                                <asp:Label Class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Your status"></asp:Label>
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
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                     <asp:TextBox Class="form-control" ID="TextBox1" runat="server" placeHolder="Full Name"></asp:TextBox>
                                </div>      
                           </div>
                             <div class="col-md-6">
                                <label>Date Of Birth</label>
                                <div class="form-group">
                                     <asp:TextBox Class="form-control" ID="TextBox2" runat="server"  TextMode="Date"></asp:TextBox>
                                </div>      
                           </div>
                        </div>
                         
                         <div class="row">
                            <div class="col-md-6">
                                <label>Contact Number</label>
                                <div class="form-group">
                                     <asp:TextBox Class="form-control" ID="TextBox3" runat="server" placeHolder="Contact Number" TextMode="Phone"></asp:TextBox>
                                </div>  
                              </div>  
                                
                                <div class="col-md-6">
                                <label>Email</label>
                                <div class="form-group">
                                     <asp:TextBox Class="form-control" ID="TextBox4" runat="server" placeHolder="Email" TextMode="Email"></asp:TextBox>
                                </div>      
                              </div>
                           </div>
                             
                   

                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="Abia" Value="Abia" />
                                         <asp:ListItem Text="Abuja" Value="Abuja" />
                                        <asp:ListItem Text="Adamawa" Value="Adamawa" />
                                        <asp:ListItem Text="Akwa-ibom" Value="Akwa-ibom" />
                                        <asp:ListItem Text="Anambra" Value="Anambra" />
                                        <asp:ListItem Text="Bauchi" Value="Bauchi" />
                                        <asp:ListItem Text="Bayelsa" Value="Bayelsa" />
                                        <asp:ListItem Text="Benue" Value="Benue" />
                                        <asp:ListItem Text="Borno" Value="Borno" />
                                        <asp:ListItem Text="Cross-river" Value="Cross-river" />
                                        <asp:ListItem Text="Delta" Value="Delta" />
                                        <asp:ListItem Text="Ebonyi" Value="Ebonyi" />
                                        <asp:ListItem Text="Edo" Value="Edo" />
                                        <asp:ListItem Text="Ekiti" Value="Ekiti" />
                                        <asp:ListItem Text="Enugu" Value="Enugu" />
                                        <asp:ListItem Text="Gombe" Value="Gombe" />
                                        <asp:ListItem Text="Imo" Value="Imo" />
                                        <asp:ListItem Text="Jigawa" Value="Jigawa" />
                                        <asp:ListItem Text="Kaduna" Value="Kaduna" />
                                        <asp:ListItem Text="Kano" Value="Kano" />
                                        <asp:ListItem Text="Kastina" Value="kastina" />
                                        <asp:ListItem Text="kebbi" Value="Kebbi" />
                                        <asp:ListItem Text="Kogi" Value="Kogi" />
                                        <asp:ListItem Text="Kwara" Value="kwara" />
                                        <asp:ListItem Text="Lagos" Value="Lagos" />
                                        <asp:ListItem Text="Nassarawa" Value="Nassarawa" />
                                        <asp:ListItem Text="Niger" Value="Niger" />
                                        <asp:ListItem Text="Ogun" Value="Ogun" />
                                        <asp:ListItem Text="Ondo" Value="Ondo" />
                                        <asp:ListItem Text="Osun" Value="Osun" />
                                        <asp:ListItem Text="Oyo" Value="Oyo" />
                                        <asp:ListItem Text="Plateau" Value="Plateau" />
                                        <asp:ListItem Text="Rivers" Value="Rivers" />
                                        <asp:ListItem Text="Sokoto" Value="Sokoto" />
                                        <asp:ListItem Text="Taraba" Value="Taraba" />
                                        <asp:ListItem Text="Yobe" Value="Yobe" />
                                        <asp:ListItem Text="Zamfara" Value="Zamfara" />
                                        

                                        
                                            
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Pin code</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox7" runat="server" placeholder="Pin code"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox  class="form-control" ID="TextBox8" runat="server" placeholder="Full Address" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 mx-auto">
                                <center>
                                  <span class="badge badge-pill badge-info">Login credential</span>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>User id</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox9" runat="server" placeholder="User Id" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>old Password</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox10" runat="server" placeholder="old Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>New Password</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox5" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-8 mx-auto">
                                <center>
                                     <asp:Button CssClass="btn btn-warning btn-lg btn-block" ID="Button2" runat="server" Text="Update" />
                                </center>   
                            </div>
                        </div>

                       
                </div>
            </div>
        </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                         <div class="row">
                            <div class="col">
                            <center>
                                 <img width="150px" src="images/book.png" />
                            </center>        
                           </div>
                        </div> 

                         <div class="row">
                            <div class="col">
                            <center>
                                 <h4>Your Issued Books</h4>
                                <asp:Label Class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Your books due date"></asp:Label>
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
                            <center>
                                 <asp:GridView Class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </center>        
                           </div>
                        </div>
                </div>
            </div>
          </div>
    </div>
 </div>

</asp:Content>

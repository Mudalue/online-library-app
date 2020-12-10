<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminbookissueing.aspx.cs" Inherits="library_system.Adminbookissueing" %>
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
                            <h4>Book Issuing</h4>
                        </center>
                    </div>
                </div>
                <br />
                    <div class="row">
                    <div class="col">
                        <center>
                            <img width="100px" src="images/book.png" />
                        </center>
                    </div>
                </div>
                <br />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Member Id</label>
                                <asp:TextBox Class="form-control" ID="TextBox2" runat="server" placeholder="Member Id"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                 <label>Book Id</label>
                            <div class="input-group">
                                <asp:TextBox Class="form-control" ID="TextBox1" runat="server" placeholder="Book Id"></asp:TextBox>
                                <asp:Button Class="btn btn-info" ID="Button1" runat="server" Text="Go" />
                            </div>
                         </div>
                      </div>
                  </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Member Name</label>
                                <asp:TextBox Class="form-control" ID="TextBox3" runat="server" placeholder="Member Name" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                 <label>Book Name</label>
                                <asp:TextBox Class="form-control" ID="TextBox4" runat="server" placeholder="Book Name" ReadOnly="True"></asp:TextBox>
                            </div>
                      </div>
                  </div>

                     <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Start date</label>
                                <asp:TextBox Class="form-control" ID="TextBox5" runat="server" placeholder="Start date" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                 <label>End date</label>
                                <asp:TextBox Class="form-control" ID="TextBox6" runat="server" placeholder="End date" TextMode="Date"></asp:TextBox>
                            </div>
                      </div>
                  </div>

                     <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Button ID="Button2" runat="server" Text="issue" Class="btn btn-lg btn-block btn-primary" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                               <asp:Button ID="Button3" runat="server" Text="Delete" Class="btn btn-lg btn-block btn-success" />
                            </div>             
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
                                <h4>Issued Book List</h4>
                               </center>
                            </div>
                          </div>
                          
                          <div class="row">
                              <div class="col">
                                  <hr /> 
                              </div>
                          </div>
                          
                          <div class="row">
                              <div class="col">
                                  <asp:GridView Class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                              </div>
                          </div>
                    </div>
                </div>
            </div>
            <a href="homepage.aspx"><< Back to homepage</a>
        </div>
    </div>
</asp:Content>

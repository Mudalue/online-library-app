<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminAuthorManagement.aspx.cs" Inherits="library_system.AdminAuthorManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
       
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">

                <div class="card">
                    <div class="card-body">
                          <br /><br />
                <div class="row">
                    <div class="col">
                        <center>
                            <h4>Author details</h4>
                        </center>
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="col">
                        <center>
                            <img width="100px" src="images/Adminfemale.png" />
                        </center>
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Author Id</label>
                            <div class="input-group">
                                <asp:TextBox Class="form-control" ID="TextBox1" runat="server" placeholder="Author_Id"></asp:TextBox>
                                <asp:Button Class="btn btn-info" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                            </div>
                        </div>
                    </div>

                    <div class="col-md-8">
                        <div class="form-group">
                            <label>Author Name</label>
                            <asp:TextBox Class="form-control" ID="TextBox2" runat="server" placeholder="Author_Name"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="row">
                     <div class="col-md-4">
                        <asp:Button Class="btn btn-success btn-block" ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
                    </div>

                    <div class="col-md-4">
                        <asp:Button Class="btn btn-info btn-block" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                    </div>
                    
                    <div class="col-md-4">
                        <asp:Button Class="btn btn-danger btn-block" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
                    </div>
          </div>
                <br /><br /><br />
                    </div>
                </div>
            </div>

             <div class="col-md-6">
                 <div class="card">
                     <div class="card-body">
                          <br /><br />
                <div class="row">
                    <div class="col">
                        <center>
                            <h4>Author details</h4>
                        </center>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col">
                        <center>
                            <img width="100px" src="images/Adminfemale.png" />
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
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibrary_dbConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl1]"></asp:SqlDataSource>
                    <div class="col">
                      
                        <asp:GridView  class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                            
                            <Columns>
                                <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>

            </div>
                     </div>
                 </div>
            </div>
       </div>
</asp:Content>

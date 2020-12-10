<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPublishManagement.aspx.cs" Inherits="library_system.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
      $(document).ready(function () {
      
          //$(document).ready(function () {
              //$('.table').DataTable();
         // });
      
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTables();
          //$('.table1').DataTable();
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
                            <h4>Publisher details</h4>
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
                            <label>Publisher Id</label>
                            <div class="input-group">
                                <asp:TextBox Class="form-control" ID="TextBox1" runat="server" placeholder="Publisher Id"></asp:TextBox>
                                <asp:Button Class="btn btn-info" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                            </div>
                        </div>
                    </div>

                    <div class="col-md-8">
                        <div class="form-group">
                            <label>Publisher Name</label>
                            <asp:TextBox Class="form-control" ID="TextBox2" runat="server" placeholder="Publisher Name"></asp:TextBox>
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
                            <h4>Publisher details</h4>
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
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibrary_dbConnectionString %>"  SelectCommand="SELECT * FROM [publisher_master]"></asp:SqlDataSource>
                  <div class="col">
                      
                        <asp:GridView  class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSource1">
                            
                            <Columns>
                                <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" ReadOnly="True" SortExpression="publisher_id" />
                                <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
                            </Columns>
                        </asp:GridView>
                </div>

            </div>
                     </div>
                 </div>
            </div>
       </div>
</asp:Content>

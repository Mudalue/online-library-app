<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminBookInventoy.aspx.cs" Inherits="library_system.AdminBookInventoy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
  function readURL(input)
    {
        if (input.files && input.files[0])
           {
                var reader = new Filereader();
                 reader.onload= function (e){$('#imgview').attr('src', e.target.result);};
           }
            reader.readAsDataURL(input.files[0]);
     }
    </script>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">5
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Inventory</h4>
                                </center>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img  id="imgview"  100px" src="images/book.png" />
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
                                <asp:FileUpload onchange="readURL(this);" Class="form-control" ID="FileUpload1" runat="server" />
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-5">
                                <div class="form-group">
                                    <label>Book Id</label>
                                    <div class="input-group">
                                        <asp:TextBox Class="form-control" ID="TextBox1" runat="server" placeholder="Member Id"></asp:TextBox>
                                        <asp:Button Class="btn btn-sm btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-7">
                                <div class="form-group">
                                    <label>Book Name</label>
                                    <asp:TextBox Class="form-control" ID="TextBox2" runat="server" placeholder="Book Name"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Languages</label>
                                <div class="form-group">
                                    <asp:DropDownList Class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="English" Value="English" />
                                        <asp:ListItem Text="French" Value="french" />
                                        <asp:ListItem Text="portugese" Value="portugese" />
                                        <asp:ListItem Text="chinese" Value="chinese" />
                                        <asp:ListItem Text="russian" Value="russian" />
                                    </asp:DropDownList>
                                </div>
                                <label>Publisher Name</label>
                                <div class="form-group">
                                    <asp:DropDownList Class="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="publisher 1" Value="publisher 1" />
                                        <asp:ListItem Text="publisher 2" Value="publisher 2" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>author Name</label>
                                <div class="form-group">
                                    <asp:DropDownList Class="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="a1" Value="a1" />
                                        <asp:ListItem Text="a2" Value="a2" />
                                        
                                    </asp:DropDownList>
                                </div>
                                <label>Publish Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Genre</label>
                                <div class="form-group">
                                    <asp:ListBox ID="ListBox1" runat="server">
                                        <asp:ListItem Text="Action" Value="Action" />
                                        <asp:ListItem Text="Adventure" Value="Adventure" />
                                        <asp:ListItem Text="Comic book" Value="Comic book" />
                                        <asp:ListItem Text="Self help" Value="Self help" />
                                        <asp:ListItem Text="Motivation" Value="Motivation" />
                                        <asp:ListItem Text="healthy living" Value="healthy living" />
                                        <asp:ListItem Text="Wellingness" Value="Wellingness" />
                                        <asp:ListItem Text="Crime" Value="Crime" />
                                        <asp:ListItem Text="Drama" Value="Drama" />
                                        <asp:ListItem Text="Fantasy" Value="Fantasy" />
                                        <asp:ListItem Text="Horror" Value="Horror" />
                                        <asp:ListItem Text="Poetry" Value="Poetry" />
                                        <asp:ListItem Text="Suspense" Value="Suspense" />
                                    </asp:ListBox>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Edition</label>
                                <div class="form-group">
                                    <asp:TextBox classs="form-control" ID="TextBox5" runat="server" placeholder="First" ReadOnly="false" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Book cost(Per unit)</label>
                                <div class="form-group">
                                   <asp:TextBox classs="form-control" ID="TextBox6" runat="server" placeholder="Book Cost(per unit)" ReadOnly="false" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Pages</label>
                                <div class="form-group">
                                    <asp:TextBox classs="form-control" ID="TextBox4" runat="server" placeholder="Pages" ReadOnly="false" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                         <div class="row">
                            <div class="col-md-4">
                                <label>Actual Stocks</label>
                                <div class="form-group">
                                    <asp:TextBox classs="form-control" ID="TextBox8" runat="server" placeholder="Actual Stocks" ReadOnly="false" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Current stocks</label>
                                <div class="form-group">
                                   <asp:TextBox classs="form-control" ID="TextBox9" runat="server" placeholder="Current stocks" ReadOnly="True" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Issued Books</label>
                                <div class="form-group">
                                    <asp:TextBox classs="form-control" ID="TextBox10" runat="server" placeholder="Isuued books" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                          <div class="row">
                            <div class="col">
                                <label>Book Description</label>
                                <div class="form-group">
                                     <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Book Description" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
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
                        
                    </div>
                </div>
            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                <h4>Book Inventory List</h4>
                               </center>
                            </div>
                          </div>
                          
                          <div class="row">
                              <div class="col">
                                  <hr /> 
                              </div>
                          </div>
                          
                          <div class="row">
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibrary_dbConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                              <div class="col">
                                  <asp:GridView Class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1" >
                                      <Columns>
                                          <asp:BoundField DataField="book_id" HeaderText="book_id" ReadOnly="True" SortExpression="book_id" />
                                          <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                                          <asp:BoundField DataField="genre" HeaderText="genre" SortExpression="genre" />
                                          <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                          <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
                                          <asp:BoundField DataField="publish_date" HeaderText="publish_date" SortExpression="publish_date" />
                                          <asp:BoundField DataField="language" HeaderText="language" SortExpression="language" />
                                          <asp:BoundField DataField="edition" HeaderText="edition" SortExpression="edition" />
                                          <asp:BoundField DataField="book_cost" HeaderText="book_cost" SortExpression="book_cost" />
                                          <asp:BoundField DataField="no_of_pages" HeaderText="no_of_pages" SortExpression="no_of_pages" />
                                          <asp:BoundField DataField="book_description" HeaderText="book_description" SortExpression="book_description" />
                                          <asp:BoundField DataField="actual_stock" HeaderText="actual_stock" SortExpression="actual_stock" />
                                          <asp:BoundField DataField="current_stock" HeaderText="current_stock" SortExpression="current_stock" />
                                          <asp:BoundField DataField="book_img_link" HeaderText="book_img_link" SortExpression="book_img_link" />
                                      </Columns>
                                  </asp:GridView>
                              </div>
                          </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

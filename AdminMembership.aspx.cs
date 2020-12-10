using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace library_system
{
    public partial class AdminMembership : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        // go button
        protected void Button1_Click(object sender, EventArgs e)
        {
            GEtMemberById();
        }
        // active button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            UpdateAccount("Active");
        }
        // pending button
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            UpdateAccount("Pending");
        }
        //Deactivate button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            UpdateAccount("Deactive");
        }
        //Delete User Permanently
        protected void Button2_Click(object sender, EventArgs e)
        {
            DeleteMemberById();
        }

        //void UpdateAccountStatus
        void UpdateAccount(string status)
        {
            if (CkIfMemberExist())
            {
                    try
                                {
                                    SqlConnection con = new SqlConnection(strcon);
                                    if (con.State == ConnectionState.Closed)
                                    {
                                        con.Open();
                                    }
                                    SqlCommand cmd = new SqlCommand("UPDATE Member_Master_Tbl2 SET account_status= '"+ status +"' WHERE Member_id='"+TextBox1.Text.Trim()+"'", con);
                                    cmd.ExecuteNonQuery();
                                    con.Close();
                                    GridView1.DataBind();
                                    Response.Write("<script>alert('Account Updated sucessfully')</script>");
                                }
                                catch(Exception ex)
                                {
                                    Response.Write("<script>alert('"+ex.Message+"')</script>");
                                }
            }
            else
            {
                Response.Write("<script>alert('invalid user ')</script>");
            }
        }
        //GetMember by Id
        void GEtMemberById()
        {
            if (CkIfMemberExist())
            {
                try
                            {
                                SqlConnection con = new SqlConnection(strcon);
                                if (con.State == ConnectionState.Closed)
                                {
                                    con.Open();
                                }

                                SqlCommand cmd = new SqlCommand("SELECT * FROM Member_Master_Tbl2 WHERE member_id ='"+TextBox1.Text.Trim()+"'", con);
                                SqlDataReader dr = cmd.ExecuteReader();
                                if (dr.HasRows)
                                {
                                    while(dr.Read())
                                    {
                                        TextBox1.Text = dr.GetValue(7).ToString();
                                        TextBox2.Text = dr.GetValue(0).ToString();
                                        TextBox3.Text = dr.GetValue(9).ToString();
                                        TextBox7.Text = dr.GetValue(10).ToString();
                                        TextBox8.Text = dr.GetValue(1).ToString();
                                        TextBox9.Text = dr.GetValue(2).ToString();
                                        TextBox4.Text = dr.GetValue(3).ToString();
                                        TextBox5.Text = dr.GetValue(4).ToString();
                                        TextBox6.Text = dr.GetValue(5).ToString();
                                        TextBox10.Text = dr.GetValue(6).ToString();
                                    }
                                }
                                else
                                {
                                    Response.Write("<script>alert('Member with ID '"+TextBox1.Text.Trim()+"' does not exists')</Script>");
                                }
                            }
                            catch(Exception ex)
                            {
                                Response.Write("<script>alert('"+ex.Message+")</script>");
                            }
            }
            else
            {
                Response.Write("<script>alert('Invalid id')</script>");
            }
            
        }
        void DeleteMemberById()
        {
            if (CkIfMemberExist())
            {
                try
                            {
                                SqlConnection con = new SqlConnection(strcon);
                                if (con.State == ConnectionState.Closed)
                                {
                                    con.Open();
                                }
                                SqlCommand cmd = new SqlCommand("DELETE FROM Member_Master_Tbl2 WHERE  member_id = '" + TextBox1.Text.Trim() + "'", con);
                                cmd.ExecuteNonQuery();
                                con.Close();
                                ClearForm();
                                GridView1.DataBind();
                                Response.Write("<script>alert('Member Deleted Sucessfully')</script>");
                            }
                            catch(Exception ex)
                            {
                                Response.Write("<script>alert('" + ex.Message + ")</script>");
                            }
            }
            else
            {
                Response.Write("<script>alert('Invalid User')</script>");
            }
            
           
        }
        void ClearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox10.Text = "";
        }
        bool CkIfMemberExist()
        {
            
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM Member_Master_Tbl2 WHERE member_id = '"+TextBox1.Text.Trim()+"'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >=1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"')</script>");
                return false;
            }
        }
    }
}
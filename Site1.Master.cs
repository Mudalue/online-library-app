using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace library_system
{
    public partial class Site1 : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           
            try
            {
                
                if (Session["role"].Equals(""))
                {

                    LinkButton1.Visible = true; //user login
                    LinkButton2.Visible = true;//sign up

                    LinkButton3.Visible = false;//logout
                    LinkButton5.Visible = false;//hello user

                    //adminlinks
                    LinkButton6.Visible = true; //Adminlogin
                    LinkButton7.Visible = false; //AuthorMAnagement
                    LinkButton8.Visible = false; //Publisheramnagemnet
                    LinkButton9.Visible = false; //Bookinventory
                    LinkButton10.Visible = false; //Book issueing
                    LinkButton11.Visible = false; //Memberamanagement
                }
                else if(Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; //user login
                    LinkButton2.Visible = false;//sign up

                    LinkButton3.Visible = true;//logout
                    LinkButton5.Visible = true;//hello user
                    LinkButton5.Text = "Hello " + Session["username"].ToString(); //changing the button text of the hello link to include username

                    //adminlinks
                    LinkButton6.Visible = true; //Adminlogin
                    LinkButton7.Visible = false; //AuthorMAnagement
                    LinkButton8.Visible = false; //Publisheramnagemnet
                    LinkButton9.Visible = false; //Bookinventory
                    LinkButton10.Visible = false; //Book issueing
                    LinkButton11.Visible = false; //Memberamanagement
                }
                else if(Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; //user login
                    LinkButton2.Visible = false;//sign up

                    LinkButton3.Visible = true;//logout
                    LinkButton5.Visible = true;//hello user
                    LinkButton5.Text = "Hello Admin";

                    //adminlinks
                    LinkButton6.Visible = false; //Adminlogin
                    LinkButton7.Visible = true; //AuthorMAnagement
                    LinkButton8.Visible = true; //Publisheramnagemnet
                    LinkButton9.Visible = true; //Bookinventory
                    LinkButton10.Visible = true; //Book issueing
                    LinkButton11.Visible = true; //Memberamanagement
                }
            
            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert('"+ex.Message+"')</script>");
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAuthorManagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPublisherManagement.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminBookissueing.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminMembership.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; //user login
            LinkButton2.Visible = true;//sign up

            LinkButton3.Visible = false;//logout
            LinkButton5.Visible = false;//hello user

            //adminlinks
            LinkButton6.Visible = true; //Adminlogin
            LinkButton7.Visible = false; //AuthorMAnagement
            LinkButton8.Visible = false; //Publisheramnagemnet
            LinkButton9.Visible = false; //Bookinventory
            LinkButton10.Visible = false; //Book issueing
            LinkButton11.Visible = false; //Memberamanagemen

            Response.Redirect("page1.aspx");
        }
    }
}
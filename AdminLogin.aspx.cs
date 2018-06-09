using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Visible = false;
    }

    protected void LOGIN_Click(object sender, EventArgs e)
    {

        checking();
    }


    protected void checking()
    {

        string us = TextBox1.Text;
        string pwd = TextBox2.Text;
        if (us == "Admin_Rhythm" & pwd == "password")

        {

            Response.Redirect("~/Report.aspx");
        }


        else
        {
            Label4.Visible = true;

            Label4.Text = "Username and Password Donot Match";
        }
    }
}
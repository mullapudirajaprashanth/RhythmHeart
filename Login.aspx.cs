using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; /*added to Write into the Database*/
using System.Data; /*added to Read from Database*/
using System.Net.Mail;

public partial class About : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ReadDB_Login();
    }
    public void ReadDB_Login()
    {
        string uid = TextBox1.Text;
        string pid = TextBox2.Text;
        SqlConnection conn = new SqlConnection();
        using (conn = new SqlConnection(@"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=2018_675_z1804496;User ID=OMIS675FA;Password=Omis.675!"))
        {
            using (SqlCommand cmd1 = new SqlCommand("select [Preferred_Name] from [Rhythm_User] where Email=@usid and Password=@psid", conn))
            {
                cmd1.CommandType = CommandType.Text;
                cmd1.Parameters.AddWithValue("@usid", uid);
                cmd1.Parameters.AddWithValue("@psid", pid);
                conn.Open();
                object o1 = cmd1.ExecuteScalar();
                if (o1 != null)
                {
                    Session["UserName"] = o1.ToString();
                    Session["EmailID"] = TextBox1.Text;
                    
                }
                else
                {
                    Response.Write("<script>alert('The entered Username and/or password are incorrect');</script>");
                    //Label1.Text="The Entered UserName and/or Password entered incorrect., Login Failed";
                }
                conn.Close();
            }

            using (SqlCommand cmd2 = new SqlCommand("select [User_ID] from [Rhythm_User] where Email=@usid and Password=@psid", conn))
            {
                cmd2.CommandType = CommandType.Text;
                cmd2.Parameters.AddWithValue("@usid", uid);
                cmd2.Parameters.AddWithValue("@psid", pid);
                conn.Open();
                object o1 = cmd2.ExecuteScalar();
                if (o1 != null)
                {
                    Session["UserID"] = o1.ToString();
                    Session["EmailID"] = TextBox1.Text;
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('The entered Username and/or password are incorrect');</script>");
                    //Label1.Text="The Entered UserName and/or Password entered incorrect., Login Failed";
                }
                conn.Close();
            }
        }


    }
}
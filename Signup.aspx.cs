using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; /*added to Write into the Database*/
using System.Data; /*added to Read from Database*/
//using System.Windows.Forms;
using System.Net.Mail;

public partial class Signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ReadDB_Register();
    }
    public void ReadDB_Register()
    {
        string uid = TextBox1.Text;
        SqlConnection conn = new SqlConnection();
        using (conn = new SqlConnection(@"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=2018_675_z1804496;User ID=OMIS675FA;Password=Omis.675!"))
        {
            using (SqlCommand cmd1 = new SqlCommand("select User_ID from [Rhythm_User] where Email=@usid", conn))
            {
                cmd1.CommandType = CommandType.Text;
                cmd1.Parameters.AddWithValue("@usid", uid);
                conn.Open();
                object o1 = cmd1.ExecuteScalar();
                if (o1 != null)
                {
                    Response.Write("<script>alert('The Email address entered already exists. Please try different email address for SIGN UP, Registration Failed');</script>");
                }
                else
                {
                    Session["UserName"] = TextBox2.Text;
                    Session["EmailID"] = TextBox1.Text;
                    Session["Pass"] = TextBox3.Text;
                    Session["Mobile"] = TextBox5.Text;
                    Response.Redirect("Payment.aspx");
                }
                conn.Close();
            }
        }
    }

    public void WriteDB_Register()
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd2 = new SqlCommand();

        String cmdString2 = "INSERT INTO [Rhythm_User] Values ('" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "')";

        conn = new SqlConnection(@"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=2018_675_z1804496;User ID=OMIS675FA;Password=Omis.675!");
        cmd2 = new SqlCommand(cmdString2, conn);
        conn.Open();
        cmd2.ExecuteNonQuery();
        conn.Close();

    }
}
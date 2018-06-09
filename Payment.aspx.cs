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

public partial class Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        fullNameServer.Text = Convert.ToString(Session["UserName"]);
        EmailServer.Text = Convert.ToString(Session["EmailID"]);
        PhoneNumberServer.Text = Convert.ToString(Session["Mobile"]);
        PassSession.Text = Convert.ToString(Session["Pass"]);
    }

    protected void signup_Click(object sender, EventArgs e)
    {
        WriteDB_Register();
        ReadFromDB_Register();
        email();
        Response.Redirect("Home.aspx");
    }

    public void WriteDB_Register()
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd2 = new SqlCommand();

        String cmdString2 = "INSERT INTO [Rhythm_User] Values ('" + fullNameServer.Text + "','" + EmailServer.Text + "','" + PassSession.Text + "','" + PhoneNumberServer.Text + "')";

        conn = new SqlConnection(@"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=2018_675_z1804496;User ID=OMIS675FA;Password=Omis.675!");
        cmd2 = new SqlCommand(cmdString2, conn);
        conn.Open();
        cmd2.ExecuteNonQuery();
        conn.Close();

    }

    public void ReadFromDB_Register()
    {
        string uid = EmailServer.Text;
        SqlConnection conn = new SqlConnection();
        using (conn = new SqlConnection(@"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=2018_675_z1804496;User ID=OMIS675FA;Password=Omis.675!"))
        {
            using (SqlCommand cmd1 = new SqlCommand("select User_ID from [Rhythm_User] where Email=@usid", conn))
            {
                cmd1.CommandType = System.Data.CommandType.Text;
                cmd1.Parameters.AddWithValue("@usid", uid);
                conn.Open();

                var rdr = cmd1.ExecuteReader();
                if(rdr.HasRows)
                {
                    while(rdr.Read())
                    {
                        Session["UserID"] = rdr[0].ToString();
                        WriteDB_Payment();
                    }
                }
                else
                {
                    Response.Write("<script>alert('Network issues. Registration failed!');</script>");
                }
            }
        }
    }

    public void WriteDB_Payment()
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd3 = new SqlCommand();

        String cmdString3 = "INSERT INTO [Rhythm_Payment] Values ('" + card.Text + "','" + name.Text + "','" + ExpMonth.SelectedValue + "','" + ExpYear.SelectedValue + "','" + cvv.Text + "','" + Convert.ToString(99.99) + "','" + Convert.ToInt32(Convert.ToString(Session["UserID"])) + "')";

        conn = new SqlConnection(@"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=2018_675_z1804496;User ID=OMIS675FA;Password=Omis.675!");
        cmd3 = new SqlCommand(cmdString3, conn);
        conn.Open();
        cmd3.ExecuteNonQuery();
        conn.Close();
    }

    public void email()
    {
        MailAddress from = new MailAddress(EmailServer.Text, "support");

        MailAddress to = new MailAddress(EmailServer.Text);

        MailMessage mail = new MailMessage(from, to);

        mail.Subject = "Welcome to Rhythm - Payment details";

        mail.Body = "Below are your payment details: " + System.Environment.NewLine + System.Environment.NewLine + System.Environment.NewLine +

                "Name:" + fullNameServer.Text + System.Environment.NewLine + "Phone Number:" + PhoneNumberServer.Text + System.Environment.NewLine +
                "Payment Amount: $99.99/Lifetime" + System.Environment.NewLine + "Thank Your for choosing Rythm, enjoy music and events brought by us."
                + System.Environment.NewLine + System.Environment.NewLine + "Rhythm Heart Admin team";

        SmtpClient ms = new SmtpClient("smtp.staff.niu.edu");

        ms.UseDefaultCredentials = false;

        ms.Send(mail);

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;


public partial class Forgot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        forgotpass();
        SendMail();
    }

    public void forgotpass()
    {
        SqlConnection conn = new SqlConnection();

        SqlCommand cmd2 = new SqlCommand();

        String cmdString1 = "SELECT [Password] From [Rhythm_User] where Email='" + TextBox1.Text + "'";

        conn = new SqlConnection(@"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=2018_675_z1804496;User ID=OMIS675FA;Password=Omis.675!");

        cmd2 = new SqlCommand(cmdString1, conn);

        conn.Open();

        string temp = "";
        SqlDataReader reader = cmd2.ExecuteReader();
        while (reader.Read())
        {
            temp += reader["Password"].ToString();
        }

        Label1.Text = "Your password is : " + System.Environment.NewLine + System.Environment.NewLine + System.Environment.NewLine +

              temp;

        conn.Close();
    }

    public void SendMail()
    {

        MailAddress from = new MailAddress(TextBox1.Text, "support");

        MailAddress to = new MailAddress(TextBox1.Text);

        MailMessage mail = new MailMessage(from, to);

        mail.Subject = "Password retrival";

        mail.Body = Label1.Text;

        SmtpClient ms = new SmtpClient("smtp.staff.niu.edu");

        ms.UseDefaultCredentials = false;

        ms.Send(mail);

    }


}
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

public partial class eventPayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        EventNameServer.Text = Convert.ToString(Session["EventName"]);
        EventTimeServer.Text = Convert.ToString(Convert.ToDateTime(Session["Time"]));
        VenueServer.Text = Convert.ToString(Session["EventVenue"]);
        TotalCostServer.Text = Convert.ToString(Session["TotalCost"]);
        EmailServer.Text = Convert.ToString(Session["EmailID"]);
    }

    protected void purchase_Click(object sender, EventArgs e)
    {
        ReadID();
        UpdateTickets();
        email();
        Response.Redirect("Home.aspx");
    }

    public void ReadID()
    {
        string eventname = Convert.ToString(Session["EventName"]);
        string venue = Convert.ToString(Session["EventVenue"]);
        string artist = Convert.ToString(Session["Artist"]);
        DateTime time = Convert.ToDateTime(Session["Time"]);

        SqlConnection conn = new SqlConnection();
        using (conn = new SqlConnection(@"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=2018_675_z1804496;User ID=OMIS675FA;Password=Omis.675!"))
        {
            using (SqlCommand cmd8 = new SqlCommand("SELECT TOP(1)[Event_ID] From [Rhythm_Event] where Event_Name=@event and Event_Artist = @art and Event_Venue = @loc and Time = @tim ORDER BY 1 ASC", conn))
            {
                cmd8.CommandType = System.Data.CommandType.Text;

                cmd8.Parameters.AddWithValue("@event", eventname);
                cmd8.Parameters.AddWithValue("@art", artist);
                cmd8.Parameters.AddWithValue("@loc", venue);
                cmd8.Parameters.AddWithValue("@tim", time);

                conn.Open();

                object o1 = cmd8.ExecuteScalar();

                if (o1 != null)
                {
                    Session["EventID"] = Convert.ToInt32(o1.ToString());
                }
                else
                {
                    Response.Write("<script>alert('Server issues. Sorry!');</script>");
                }
                conn.Close();
            }
        }
    }

    public void UpdateTickets()
    {
        if (Session["UserID"] == null)
        {
            Response.Redirect("Login.aspx");
        }

        else
        {
            int userid = Convert.ToInt32(Convert.ToString(Session["UserID"]));
            int holdID = Convert.ToInt32(Convert.ToString(Session["EventID"]));
            int remainingtickets = Convert.ToInt32(Convert.ToString(Session["RTickets"]));

            SqlConnection conn = new SqlConnection();
            conn = new SqlConnection(@"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=2018_675_z1804496;User ID=OMIS675FA;Password=Omis.675!");

            //To update the ticket count from Events table
            SqlCommand cmd3 = new SqlCommand();
            String cmdString3 = "UPDATE [Rhythm_Event] SET [Tickets_Remaining] = ('" + remainingtickets + "') WHERE [Event_ID] = @eid";

            cmd3 = new SqlCommand(cmdString3, conn);
            cmd3.Parameters.AddWithValue("@eid", holdID);

            //To update the Payment table
            SqlCommand cmd4 = new SqlCommand();
            String cmdString4 = "INSERT INTO [Rhythm_Payment] Values ('" + Newcard.Text + "','" + Newname.Text + "','" + newExpMonth.SelectedValue + "','" + newExpYear.SelectedValue + "','" + newcvv.Text + "','" + Session["TotalCost"].ToString() + "','" + Convert.ToInt32(Convert.ToString(Session["UserID"])) + "')";

            cmd4 = new SqlCommand(cmdString4, conn);

            conn.Open();
            cmd3.ExecuteNonQuery();
            cmd4.ExecuteNonQuery();

            conn.Close();

            //To update the EventUser table 
            // First reading from payment table for payment id 
            SqlCommand cmd5 = new SqlCommand();
            String cmdString5 = "SELECT TOP(1)[Payment_ID] From [Rhythm_Payment] where User_ID=@uid ORDER BY 1 ASC";
            cmd5 = new SqlCommand(cmdString5, conn);
            cmd5.Parameters.AddWithValue("@uid", userid);

            conn.Open();
            object o5 = cmd5.ExecuteScalar();
            if (o5 != null)
            {
                Session["PaymentID"] = o5.ToString();
                WriteToEventUser();
            }
            else
            {
                Response.Write("<script>alert('Network failure. Sorry!');</script>");

            }
            conn.Close();        

            
        }
    }

    public void WriteToEventUser()
    {
        SqlConnection conn = new SqlConnection();
        conn = new SqlConnection(@"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=2018_675_z1804496;User ID=OMIS675FA;Password=Omis.675!");

        //Write eventuser table
        SqlCommand cmd6 = new SqlCommand();
        String cmdString6 = "INSERT INTO [Rhythm_EventUser] Values ('" + Convert.ToInt32(Session["EventID"].ToString()) + "','" + Convert.ToInt32(Session["UserID"].ToString()) + "','" + Convert.ToInt32(Session["NoTickets"].ToString()) + "','" + Convert.ToInt32(Session["PaymentID"].ToString()) + "')";
        cmd6 = new SqlCommand(cmdString6, conn);

        conn.Open();
        cmd6.ExecuteNonQuery();
        conn.Close();
    }
    public void email()
    {
        MailAddress from = new MailAddress(EmailServer.Text, "support");

        MailAddress to = new MailAddress(EmailServer.Text);

        MailMessage mail = new MailMessage(from, to);

        mail.Subject = "Event Ticket details";

        mail.Body = "Below are your payment details: " + System.Environment.NewLine + System.Environment.NewLine + System.Environment.NewLine +

                "Event Name:" + EventNameServer.Text + System.Environment.NewLine + "Event Time:" + EventTimeServer.Text + System.Environment.NewLine +
                "Venue:" + VenueServer.Text + System.Environment.NewLine + "Amount Paid:" + TotalCostServer.Text + System.Environment.NewLine + "Thank Your for choosing Rythm, enjoy the event."
                + System.Environment.NewLine + System.Environment.NewLine + "Rhythm Heart Admin team";

        SmtpClient ms = new SmtpClient("smtp.staff.niu.edu");

        ms.UseDefaultCredentials = false;

        ms.Send(mail);

    }
}

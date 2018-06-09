using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Events : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ImageButton2.Visible = false;
        if (a > 0)
        {
            ImageButton2.Visible = true;
        }

        ImageButton4.Visible = false;
        if (aa > 0)
        {
            ImageButton4.Visible = true;
        }
        ImageButton6.Visible = false;
        if (aaa > 0)
        {
            ImageButton6.Visible = true;
        }
    }

    private static int a = 0;
    private static int aa = 0;
    private static int aaa = 0;

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        //dvFirstDiv.Style.Add("display", "block");
        
        a++;
        Label1.Text = a.ToString();
        int b = Convert.ToInt32(Label1.Text) * 100;
        Label2.Text = b.ToString();
        Session["NoTickets"] = Label1.Text;
        Session["TotalCost"] = Label2.Text;
        remainingtickets();
        if (a >= 0)
        {
            ImageButton2.Visible = true;
            Label2.Visible = true;
            Label1.Visible = true;
        }

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        a = Convert.ToInt32(Label1.Text);
        a--;
        Label1.Text = a.ToString();
        int j = Convert.ToInt32(Label1.Text) * 100;
        Label2.Text = j.ToString();

        Session["NoTickets"] = Label1.Text;
        Session["TotalCost"] = Label2.Text;

        if (a <= 0)
        {
            ImageButton2.Visible = false;
            Label2.Visible = false;
            Label1.Visible = false;
            a = 0;
        }


        remainingtickets();
    }

    //second div image buttons
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        aa++;
        selected.Text = aa.ToString();
        int bb = Convert.ToInt32(selected.Text) * 100;
        cost.Text = bb.ToString();
        Session["NoTickets"] = selected.Text;
        Session["TotalCost"] = cost.Text;
        remainingtickets1();
        if (aa >= 0)
        {
            ImageButton4.Visible = true;
            cost.Visible = true;
            selected.Visible = true;
        }

    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        aa = Convert.ToInt32(selected.Text);
        aa--;
        selected.Text = aa.ToString();
        int jj = Convert.ToInt32(selected.Text) * 100;
        cost.Text = jj.ToString();
        Session["NoTickets"] = selected.Text;
        Session["TotalCost"] = cost.Text;
        if (aa <= 0)
        {
            ImageButton4.Visible = false;
            cost.Visible = false;
            selected.Visible = false;
            aa = 0;
        }

        remainingtickets1();
    }

    //third div image buttons
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        aaa++;
        selectedd.Text = aaa.ToString();
        int bbb = Convert.ToInt32(selectedd.Text) * 100;
        costt.Text = bbb.ToString();
        Session["NoTickets"] = selectedd.Text;
        Session["TotalCost"] = costt.Text;
        remainingtickets2();
        if (aaa >= 0)
        {
            ImageButton6.Visible = true;
            costt.Visible = true;
            selectedd.Visible = true;
        }

    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        aaa = Convert.ToInt32(selectedd.Text);
        aaa--;
        selectedd.Text = aaa.ToString();
        int jjj = Convert.ToInt32(selectedd.Text) * 100;
        costt.Text = jjj.ToString();
        Session["NoTickets"] = selectedd.Text;
        Session["TotalCost"] = costt.Text;
        if (aaa <= 0)
        {
            ImageButton6.Visible = false;
            costt.Visible = false;
            selectedd.Visible = false;
            aaa = 0;
        }

        remainingtickets2();
    }

    protected void buy_Click(object sender, EventArgs e)
    {
        performredirect();
    }


    protected void buy1_Click(object sender, EventArgs e)
    {
        performredirect();
    }

    protected void buy2_Click(object sender, EventArgs e)
    {
        performredirect();
    }

    public void performredirect()
    {
        if (Convert.ToInt32(Session["TotalCost"]) != 0 && Session["UserID"] != null)
        {
            Response.Redirect("eventPayment.aspx");
        }
        else if (Convert.ToInt32(Session["TotalCost"]) == 0)
        {
            Response.Write("<script>alert('Choose atleast one ticket for the event');</script>");
        }
        else if (Session["UserID"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            Response.Write("<script>alert('Network issues.');</script>");
        }
    }

    public void remainingtickets()
    {
        string eventname = Convert.ToString(Session["EventName"]);
        string venue = Convert.ToString(Session["EventVenue"]);
        string artist = Convert.ToString(Session["Artist"]);
        DateTime time = Convert.ToDateTime(Session["Time"]);
        SqlConnection conn = new SqlConnection();

        SqlCommand cmd2 = new SqlCommand();

        String cmdString1 = "SELECT TOP(1)[Tickets_Remaining] From [Rhythm_Event] where Event_Name=@event and Event_Artist = @art and Event_Venue = @loc and Time = @tim ORDER BY 1 ASC";

        conn = new SqlConnection(@"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=2018_675_z1804496;User ID=OMIS675FA;Password=Omis.675!");

        cmd2 = new SqlCommand(cmdString1, conn);
        cmd2.Parameters.AddWithValue("@event", eventname);
        cmd2.Parameters.AddWithValue("@art", artist);
        cmd2.Parameters.AddWithValue("@loc", venue);
        cmd2.Parameters.AddWithValue("@tim", time);
        conn.Open();

        string temp = "";
        SqlDataReader reader = cmd2.ExecuteReader();
        while (reader.Read())
        {
            temp += reader["Tickets_Remaining"].ToString();
        }

        Label8.Text = temp;

        int ttickets = Convert.ToInt32(Label8.Text);
        int rtickets = ttickets - Convert.ToInt32(Label1.Text);
        Session["RTickets"] = rtickets;
        Label6.Text = rtickets.ToString();
        conn.Close();
    }


    public void remainingtickets1()
    {
        string eventname = Convert.ToString(Session["EventName"]);
        string venue = Convert.ToString(Session["EventVenue"]);
        string artist = Convert.ToString(Session["Artist"]);
        DateTime time = Convert.ToDateTime(Session["Time"]);

        SqlConnection conn = new SqlConnection();

        SqlCommand acmd2 = new SqlCommand();

        String acmdString1 = "SELECT TOP(1)[Tickets_Remaining] From [Rhythm_Event] where Event_Name=@event and Event_Artist = @art and Event_Venue = @loc and Time = @tim ORDER BY 1 ASC";

        conn = new SqlConnection(@"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=2018_675_z1804496;User ID=OMIS675FA;Password=Omis.675!");

        acmd2 = new SqlCommand(acmdString1, conn);
        acmd2.Parameters.AddWithValue("@event", eventname);
        acmd2.Parameters.AddWithValue("@art", artist);
        acmd2.Parameters.AddWithValue("@loc", venue);
        acmd2.Parameters.AddWithValue("@tim", time);

        conn.Open();

        string temp = "";
        SqlDataReader reader = acmd2.ExecuteReader();
        while (reader.Read())
        {
            temp += reader["Tickets_Remaining"].ToString();
        }

        rem.Text = temp;

        int ttickets = Convert.ToInt32(rem.Text);
        int rtickets = ttickets - Convert.ToInt32(selected.Text);
        RemainingT.Text = rtickets.ToString();
        Session["RTickets"] = rtickets;
        conn.Close();
    }
  
    public void remainingtickets2()
    {
        string eventname = Convert.ToString(Session["EventName"]);
        string venue = Convert.ToString(Session["EventVenue"]);
        string artist = Convert.ToString(Session["Artist"]);
        DateTime time = Convert.ToDateTime(Session["Time"]);

        SqlConnection conn = new SqlConnection();

        SqlCommand aacmd2 = new SqlCommand();

        String aacmdString1 = "SELECT TOP(1)[Tickets_Remaining] From [Rhythm_Event] where Event_Name=@event and Event_Artist = @art and Event_Venue = @loc and Time = @tim ORDER BY 1 ASC";

        conn = new SqlConnection(@"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=2018_675_z1804496;User ID=OMIS675FA;Password=Omis.675!");

        aacmd2 = new SqlCommand(aacmdString1, conn);
        aacmd2.Parameters.AddWithValue("@event", eventname);
        aacmd2.Parameters.AddWithValue("@art", artist);
        aacmd2.Parameters.AddWithValue("@loc", venue);
        aacmd2.Parameters.AddWithValue("@tim", time);

        conn.Open();

        string temp = "";
        SqlDataReader reader = aacmd2.ExecuteReader();
        while (reader.Read())
        {
            temp += reader["Tickets_Remaining"].ToString();
        }

        remm.Text = temp;

        int ttickets = Convert.ToInt32(remm.Text);
        int rtickets = ttickets - Convert.ToInt32(selectedd.Text);
        RemainingTT.Text = rtickets.ToString();
        Session["RTickets"] = rtickets;
        conn.Close();
    }

    protected void taylor_Click(object sender, EventArgs e)
    {
        dvFirstDiv.Style.Add("display", "block");
        dvSecondDiv.Style.Add("display", "none");
        dvThirdDiv.Style.Add("display", "none");
        scroll.Text = "Please Scroll down to proceed with purchase";
        Session["EventName"] = "Country LakeShake by Taylor Swift";
        Session["EventVenue"] = "Huntington Bank Pavilion at Northerly Island in Chicago, Illinois";
        Session["Artist"] = "Taylor Swift";
        Session["Time"] = "2018-06-22 00:00:00.000";
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        dvFirstDiv.Style.Add("display", "none");
        dvSecondDiv.Style.Add("display", "block");
        dvThirdDiv.Style.Add("display", "none");
        scroll.Text = "Please Scroll down to proceed with purchase";
        Session["EventName"] = "Lollapalooza by Multiple/EDM";
        Session["EventVenue"] = "Hollywood Casino Amphitheatre - Chicago, IL";
        Session["Artist"] = "Multiple/EDM";
        Session["Time"] = "2018 - 09 - 22 18:30:00.000";

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        dvFirstDiv.Style.Add("display", "none");
        dvSecondDiv.Style.Add("display", "none");
        dvThirdDiv.Style.Add("display", "block");
        scroll.Text = "Please Scroll down to proceed with purchase";
        Session["EventName"] = "Never be the same -tour by Camila Cabello";
        Session["EventVenue"] = "Hollywood Casino Amphitheatre - Chicago, IL";
        Session["Artist"] = "Camila Cabello";
        Session["Time"] = "2018-09-29 18:30:00.000";
    }
}

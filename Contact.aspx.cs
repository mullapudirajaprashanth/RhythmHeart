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

public partial class Contact : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        ReadFromDB_Register();
        WriteDB_Feedback();
        if (Convert.ToInt32(Session["UserID"]) == 1004)
        {
            Response.Redirect("Index.aspx");
        }
        else
            Response.Redirect("Home.aspx");
        
    }

    public void ReadFromDB_Register()
    {
        string uid = Email.Text;
        SqlConnection conn = new SqlConnection();
        using (conn = new SqlConnection(@"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=2018_675_z1804496;User ID=OMIS675FA;Password=Omis.675!"))
        {
            using (SqlCommand cmd1 = new SqlCommand("select User_ID from [Rhythm_User] where Email=@usid", conn))
            {
                cmd1.CommandType = System.Data.CommandType.Text;
                cmd1.Parameters.AddWithValue("@usid", uid);
                conn.Open();

                var rdr = cmd1.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        Session["UserID"] = rdr[0].ToString();
                        
                    }
                }
                else
                {
                    Session["UserID"] = Convert.ToInt32("1004");
                }
            }
        }
    }

    public void WriteDB_Feedback()
    {
        string Status = "OPEN";
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd3 = new SqlCommand();
        
        String cmdString3 = "INSERT INTO [Rhythm_Feedback] Values ('" + Session ["UserID"] + "','" + AboutSelect.SelectedValue + "','" + desc.Text + "','" + Email.Text + "','" + Status + "')";

        conn = new SqlConnection(@"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=2018_675_z1804496;User ID=OMIS675FA;Password=Omis.675!");
        cmd3 = new SqlCommand(cmdString3, conn);
        conn.Open();
        cmd3.ExecuteNonQuery();
        conn.Close();
    }


}
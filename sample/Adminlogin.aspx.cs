using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["bcacon"].ConnectionString;

        SqlConnection con = new SqlConnection(strcon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "select * from login";
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            string uid = dr.GetValue(0).ToString();
            string pwd = dr.GetValue(1).ToString();

            if (uid.Equals("admin") && pwd.Equals("12345"))
            {
                Label1.Text = "success";
                Response.Redirect("Dashboard.aspx");
            }
        }
        con.Close();

    }
}
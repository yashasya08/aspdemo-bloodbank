using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Uname"] == null)
        {
            Response.Redirect("login.aspx",false );
        }
    }
    protected void search_Click(object sender, EventArgs e)
    {
        string us = DropDownList1.Text;
        if (us == "Patient")
        {
            string strcon = ConfigurationManager.ConnectionStrings["bcacon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            string com = " select * from patient";
            cmd.CommandText = com;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("user", Textsearch.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            DetailsView1.DataSource = dt;
            DetailsView1.DataBind();
        }

        else
        {
            string strcon = ConfigurationManager.ConnectionStrings["bcacon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            string com = " select * from donor";
            cmd.CommandText = com;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("user", Textsearch.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            DetailsView1.DataSource = dt;
            DetailsView1.DataBind();
 
        }

    }
}
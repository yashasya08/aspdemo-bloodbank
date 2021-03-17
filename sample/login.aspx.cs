using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Default2 : System.Web.UI.Page
{

    public SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bcacon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
          
        SqlCommand cmd = new SqlCommand("select * from login where uid=@username and pwd=@word", con);  
        cmd.Parameters.AddWithValue("@username", TextBox1.Text);  
        cmd.Parameters.AddWithValue("@word", TextBox2.Text);  
        SqlDataAdapter sda = new SqlDataAdapter(cmd);  
        DataTable dt = new DataTable();  
        sda.Fill(dt);  
        con.Open();  
        int i = cmd.ExecuteNonQuery();  
        con.Close();  
  
        if (dt.Rows.Count > 0)
        {
            Session["Uname"] = TextBox1.Text.Trim();
          
        
                Response.Redirect("Dashboard.aspx");
            
              
        }
        else {  
            Label1.Text = "Your username or password is incorrect";  
            Label1.ForeColor = System.Drawing.Color.Red;  
  
        }  

    }
}
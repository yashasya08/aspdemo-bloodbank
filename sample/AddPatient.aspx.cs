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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string pn = TextBox1.Text;
        string ag = TextBox2.Text;
        string sx = DropDownList5.Text;
        string ad = TextBox3.Text;
        string mo = TextBox4.Text;
        string bg = DropDownList6.Text;
        string un = DropDownList4.Text;
        string pd = TextBox5.Text;

        string strcon = ConfigurationManager.ConnectionStrings["bcacon"].ConnectionString;

        SqlConnection con = new SqlConnection(strcon);

        con.Open();

        SqlCommand cmd = new SqlCommand();
        SqlCommand cm = new SqlCommand();

        cmd.Connection = con;

        cmd.CommandText = "insert into patient(Name,age,sex,address,mobileno,blood,unit,disease) values(@pn,@ag,@sx,@ad,@mo,@bg,@un,@pd)";
        cmd.Parameters.AddWithValue("@pn", pn);
        cmd.Parameters.AddWithValue("@ag", ag);
        cmd.Parameters.AddWithValue("@sx", sx);
        cmd.Parameters.AddWithValue("@ad", ad);
        cmd.Parameters.AddWithValue("@mo", mo);
        cmd.Parameters.AddWithValue("@bg", bg);
        cmd.Parameters.AddWithValue("@un", un);
        cmd.Parameters.AddWithValue("@pd", pd);

        string sqlq = " select * from donor where bloodgroup='" + bg + "' ";
        cm.CommandText = sqlq;
        cm.Connection = con;
        cm.Parameters.AddWithValue("bloodgroup", DropDownList6.Text);
        DataTable dt = new DataTable();
        SqlDataAdapter sd=new SqlDataAdapter(cm);
        sd.Fill(dt);


        int i = cmd.ExecuteNonQuery();

        if (i > 0)
        {
            Label10.Visible = true;

            Label10.Text = "saved successfully";
            GridView1.Visible=true;
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }
        else
        {
            Label10.Visible = true;

            Label10.Text = "not done";
        }

        con.Close();
    }
}
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
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string fn=Textname.Text;
        string ad=Textadd.Text;
        string ag=Textage.Text;
        string gen=DropDownList2.Text;
        string bg=DropDownList1.Text;
        string mob=Textmob.Text;

        string strcon=ConfigurationManager.ConnectionStrings["bcacon"].ConnectionString;

        SqlConnection con = new SqlConnection(strcon);

        con.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "insert into donor(name,address,age,gender,bloodgroup,mobileno) values(@fn,@ad,@ag,@gen,@bg,@mob)";
        cmd.Parameters.AddWithValue("@fn", fn);
        cmd.Parameters.AddWithValue("@ad", ad);
        cmd.Parameters.AddWithValue("@ag", ag);
        cmd.Parameters.AddWithValue("@gen", gen);
        cmd.Parameters.AddWithValue("@bg", bg);
        cmd.Parameters.AddWithValue("@mob", mob);

        int i = cmd.ExecuteNonQuery();

        if (i > 0)
        {
            Label7.Visible=true;

            Label7.Text = "saved successfully";
        }
        else
        {
            Label7.Visible = true;

            Label7.Text = "not done";
        }

        con.Close();

    }
}
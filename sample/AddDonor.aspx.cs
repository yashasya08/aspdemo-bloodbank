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

    string eid= "Did00";


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            autoid();

        }

    }
    private void autoid()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand(" select count(Name) from donor ",con);
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        i++;
        labelID.Text = eid + i.ToString();


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
        string mail = Textmail.Text;
        string pass = Textpass.Text;
        string id = labelID.Text;
        
        con.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "insert into donor (Name,City,Email,Age,Sex,BloodGroup,Mobileno,Password,Donor_ID) values(@fn,@ad,@mail,@ag,@gen,@bg,@mob,@pass,@id)";
        cmd.Parameters.AddWithValue("@fn", fn);
        cmd.Parameters.AddWithValue("@ad", ad);
        cmd.Parameters.AddWithValue("@mail", mail);
        cmd.Parameters.AddWithValue("@ag", ag);
        cmd.Parameters.AddWithValue("@gen", gen);
        cmd.Parameters.AddWithValue("@bg", bg);
        cmd.Parameters.AddWithValue("@mob", mob);
        cmd.Parameters.AddWithValue("@pass", pass);
        cmd.Parameters.AddWithValue("@id", id);

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
    protected void Button2_Click(object sender, EventArgs e)
    {
        Textname.Text = " ";
        Textadd.Text = " ";
         Textage.Text = " ";
        Textmob.Text= "+91 ";
        Textmail.Text= " ";
        Textpass.Text = " ";
    }
}
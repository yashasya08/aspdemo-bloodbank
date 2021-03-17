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
   
    string eid = "Pid00";
    

    public SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bcacon"].ConnectionString);


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
        SqlCommand cmd = new SqlCommand(" select count(Name) from patient ", con);
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        i++;
        LabelID.Text = eid + i.ToString();


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
        string mail = TextBox6.Text;
        string pass = TextBox7.Text;
        string id = LabelID.Text;

        

        con.Open();

        SqlCommand cmd = new SqlCommand();
        SqlCommand cm = new SqlCommand();

        cmd.Connection = con;

        cmd.CommandText = "insert into patient(Name,Age,Sex,City,Email,Password,MobileNo,BloodGroup,UnitRequired,Disease,Patient_ID) values(@pn,@ag,@sx,@ad,@mail,@pass,@mo,@bg,@un,@pd,@id)";
        cmd.Parameters.AddWithValue("@pn", pn);
        cmd.Parameters.AddWithValue("@ag", ag);
        cmd.Parameters.AddWithValue("@sx", sx);
        cmd.Parameters.AddWithValue("@ad", ad);
        cmd.Parameters.AddWithValue("@mail", mail);
        cmd.Parameters.AddWithValue("@pass", pass);
        cmd.Parameters.AddWithValue("@mo", mo);
        cmd.Parameters.AddWithValue("@bg", bg);
        cmd.Parameters.AddWithValue("@un", un);
        cmd.Parameters.AddWithValue("@pd", pd);
        cmd.Parameters.AddWithValue("@id", id);

        string sqlq = " select Name,City,Mobileno,Age,BloodGroup from donor where BloodGroup='" + bg + "' ";
        cm.CommandText = sqlq;
        cm.Connection = con;
        cm.Parameters.AddWithValue("BloodGroup", DropDownList6.Text);
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

            Label10.Text = "Something went wrong";
        }

        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = " ";
        TextBox2.Text = " ";
        TextBox3.Text = " ";
        TextBox4.Text = "+91 ";
        TextBox5.Text = " ";
        TextBox6.Text = " ";
        TextBox7.Text = " ";
    }
}
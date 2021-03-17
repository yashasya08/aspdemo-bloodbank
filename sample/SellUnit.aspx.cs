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
    string cost;
    
    public SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bcacon"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        string to = TextBox1.Text;
        string bg = DropDownList1.Text;
        string no = DropDownList2.Text;
        string co = lblcost.Text;
        int f = Convert.ToInt32(no);

        con.Open();

        SqlCommand cmd = new SqlCommand();
       
        cmd.Connection = con;
        cmd.CommandText = "insert into sell (sell_to,bloodgroup,no_of_unit,cost) values(@to,@bg,@no,@co)";
        cmd.Parameters.AddWithValue("@to", to);
        cmd.Parameters.AddWithValue("@bg", bg);
        cmd.Parameters.AddWithValue("@no", no);
        cmd.Parameters.AddWithValue("@co", co);


       
        
        int i = cmd.ExecuteNonQuery();

         

        
        if (i > 0)
        {
            lblmsg.Visible = true;
           
            
            SqlCommand sell = new SqlCommand("Update stock set no_of_unit = no_of_unit - '" + f + "' where bloodgroup='" + DropDownList1.Text + "'", con);
           
            sell.ExecuteNonQuery();
            lblmsg.Text = "saved successfully sold. Costing '" + lblcost.Text + "' rupees.";
        }

        con.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        int num1 = Convert.ToInt32(DropDownList2.Text);
        con.Close();
        int rs = num1 * 300;
        cost = Convert.ToString(rs);
        lblcost.Text = cost;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = " ";
        lblcost.Text = " ";
        lblmsg.Text = " ";
        DropDownList1.Text = " ";
        DropDownList2.Text = " ";

    }
}
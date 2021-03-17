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
        string bg= DropDownList1.Text;
        string no= DropDownList2.Text;
        int f = Convert.ToInt32(no);
        /*
               SqlDataAdapter da = new SqlDataAdapter("select no_of_unit from addunit where bloodgroup='"+DropDownList1.Text+"'",con);
               DataTable dt = new DataTable();
               da.Fill(dt);
               
               update addingValueToExisting set GameScore = GameScore+10 where Id = 4;
       
               int num = Convert.ToInt32(da);
               int add = Convert.ToInt32(no);
               int result = num + add;
        
               string unit = Convert.ToString(result);
        
               if (dt.Rows.Count >= 1)
               {
                 */
        con.Open();
            SqlCommand cmd = new SqlCommand("Update stock set no_of_unit = no_of_unit + '" + f + "' where bloodgroup='"+ DropDownList1.Text +"'", con);
            
           int i= cmd.ExecuteNonQuery();
           SqlDataAdapter da = new SqlDataAdapter("select * from stock where bloodgroup='" + DropDownList1.Text + "'", con);
           DataTable dt = new DataTable();
           da.Fill(dt);

           con.Close();


            if (i > 0)
            { 
                Label3.Visible=true;

                Label3.Text = "You have successfully added ' "+ f +" ' units in ' "+ bg +" '.";
                DetailsView1.Visible = true;
                DetailsView1.DataSource = dt;
                DetailsView1.DataBind();
            }
        
       
        
    }

    
}
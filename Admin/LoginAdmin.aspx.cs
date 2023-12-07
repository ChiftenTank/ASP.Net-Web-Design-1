using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_LoginAdmin : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblerror.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";
        SqlDataAdapter sda = new SqlDataAdapter("select * from tblusers where username=@u and password=@p and type=1", conn);
        sda.SelectCommand.Parameters.AddWithValue("@u",txtusername.Text);
        sda.SelectCommand.Parameters.AddWithValue("@p",txtpassword.Text);
        DataSet ds = new DataSet();
        sda.Fill(ds,"tblusers");
        if(ds.Tables["tblusers"].Rows.Count != 0)
        {
            Session.Add("loginadmin", 1);
            Response.Redirect("default.aspx");
        }
        else
        {
            lblerror.Visible = true;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class LoginForm : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        lblerror.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";
        SqlDataAdapter sda = new SqlDataAdapter("select * from tblusers where username=@u and password=@p" , conn);
        sda.SelectCommand.Parameters.AddWithValue("@u", txtusername.Text);
        sda.SelectCommand.Parameters.AddWithValue("@p", txtpassword.Text);

        DataSet ds = new DataSet();

        sda.Fill(ds,"tblusers");

        if (ds.Tables["TblUsers"].Rows.Count != 0)
        {
            DataRow dr = ds.Tables["tblusers"].Rows[0];

            Session.Add("let", "yes");
            Session.Add("id", dr["id"].ToString());
            Session.Add("userpic", dr["picture"].ToString());
            Session.Add("userfamily", dr [ "username" ].ToString());
            Session.Add("userpassword", dr["password"].ToString());
            Session.Add("useremail", dr["email"].ToString());
            Response.Redirect("UserProfileForm.aspx");
        }

        else
        {
            lblerror.Visible = true;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class RegisterForm : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true ";

        string path="";

        if (userimg.HasFile)
        {
            path = userimg.PostedFile.FileName;
            userimg.SaveAs(Server.MapPath("Images/Users/") + path);
        }


        SqlCommand cmd = new SqlCommand("insert into TblUsers(name,gender,username,password,city,email,picture) values (@n,@g,@u,@p,@c,@e,@pic)", conn);
        cmd.Parameters.AddWithValue("@n", txtname.Text);
        cmd.Parameters.AddWithValue("@g", rblgender.SelectedValue);
        cmd.Parameters.AddWithValue("@u", txtusername.Text);
        cmd.Parameters.AddWithValue("@p", txtpassword.Text);
        cmd.Parameters.AddWithValue("@c", ddlcity.SelectedValue);
        cmd.Parameters.AddWithValue("@e", txtemail.Text);
        cmd.Parameters.AddWithValue("@pic", "Images/Users/"+path);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }


    protected void txtname_TextChanged(object sender, EventArgs e)
    {

    }
}
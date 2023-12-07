using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class EditUserForm : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["let"] == null)
        {
            Response.Redirect("LoginForm.aspx");
        }
        txtpassword.Text = Session["userpassword"].ToString();
        txtemail.Text = Session["useremail"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";
        SqlCommand cmd = new SqlCommand("update tblusers set password=@p, city=@c, email=@e, picture=@pic where id=@id", conn);
        cmd.Parameters.AddWithValue("@p", txtpassword.Text);
        cmd.Parameters.AddWithValue("@c", ddlcity.SelectedValue);
        cmd.Parameters.AddWithValue("@e", txtemail.Text);
        if (userimg.HasFile)
        {
            string path = userimg.PostedFile.FileName;
            userimg.SaveAs(Server.MapPath("Images/Users/") + path);
            cmd.Parameters.AddWithValue("@pic", "Images/Users/" + path);
        }
        else
        {
            cmd.Parameters.AddWithValue("@pic", Session["userpic"].ToString());
        }

    cmd.Parameters.AddWithValue("@id", Session["id"].ToString());
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}
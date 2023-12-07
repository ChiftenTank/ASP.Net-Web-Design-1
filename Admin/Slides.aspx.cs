using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Slides : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";
        SqlCommand cmd = new SqlCommand("insert into Tblslideshow (picture,title) values(@p,@t)", conn);

        if (simg.HasFile)
        {
            string path = simg.PostedFile.FileName;
            simg.SaveAs(Server.MapPath("../Images/slideshow/") + path);
            cmd.Parameters.AddWithValue("@p", "Images/slideshow/" + path);
        }

        cmd.Parameters.AddWithValue("@t", txtsubject.Text);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_NewsAdmin : System.Web.UI.Page
{

    SqlConnection conn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";
        SqlCommand cmd = new SqlCommand("insert into TblNews(ncat,title,nimage,ndate,nwriter,ncomments,nconf,imp) values(@nca,@tit,@ni,@nd,@nw,@nc,1,1)", conn);
        cmd.Parameters.AddWithValue("@nca", ddlcat.SelectedValue);
        cmd.Parameters.AddWithValue("@tit", txtsubject.Text);

        if (newsimg.HasFile)
        {
            string path = newsimg.PostedFile.FileName;
            newsimg.SaveAs(Server.MapPath("../Images/News/") + path);
            cmd.Parameters.AddWithValue("@ni", "Images/News/" + path);
        }
        cmd.Parameters.AddWithValue("@nd", newsdate.Text);
        cmd.Parameters.AddWithValue("@nw", "admin");
        cmd.Parameters.AddWithValue("@nc", newsmatn.Text);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}
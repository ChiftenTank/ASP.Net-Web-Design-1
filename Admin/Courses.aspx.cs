using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Courses : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";
        SqlCommand cmd = new SqlCommand("insert into TblCourses(c_category,c_title,c_image,c_teacher,c_session,c_price,c_comments) values(@cca,@cti,@ci,@cte,@cs,@cp,@cc)", conn);
        cmd.Parameters.AddWithValue("@cca", ddlcat.SelectedValue);
        cmd.Parameters.AddWithValue("@cti", txtsubject.Text);

        if (cimg.HasFile)
        {
            string path = cimg.PostedFile.FileName;
            cimg.SaveAs(Server.MapPath("../Images/Course/") + path);
            cmd.Parameters.AddWithValue("@ci", "Images/Course/" + path);
        }
        cmd.Parameters.AddWithValue("@cte", txtteacher.Text);
        cmd.Parameters.AddWithValue("@cs", txtsession.Text);
        cmd.Parameters.AddWithValue("@cp", txtprice.Text);
        cmd.Parameters.AddWithValue("@cc", txtmatn.Text);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}
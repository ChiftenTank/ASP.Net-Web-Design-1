using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_CourseEdit : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";
        if (!IsPostBack)
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from TblCourses where id=" + Request.QueryString["coid"], conn);
            DataSet ds = new DataSet();
            sda.Fill(ds, "TblCourses");
            if (ds.Tables["TblCourses"].Rows.Count != 0)
            {
                DataRow dr = ds.Tables["TblCourses"].Rows[0];
                nimg.ImageUrl = "../" + dr["c_image"].ToString();
                txttitle.Text = dr["c_title"].ToString();
                txtdate.Text = dr["c_date"].ToString();
                txtteacher.Text = dr["c_teacher"].ToString();
                txtprice.Text = dr["c_price"].ToString();
                txtsession.Text = dr["c_session"].ToString();
                txtmatn.Text = dr["c_comments"].ToString();


                if (dr["conf"].ToString() == "False")
                    chkconf.Checked = false;

                else
                    chkconf.Checked = true;

            }

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update TblCourses set c_title=@t, c_image=@ci, c_teacher=@ct, c_session=@cs, c_price=@cp, c_comments=@ccm, c_date=@cd, conf=@conf where id= " + Request.QueryString["coid"], conn);
        cmd.Parameters.AddWithValue("@t", txttitle.Text);
        cmd.Parameters.AddWithValue("@ci", nimg.ImageUrl);
        cmd.Parameters.AddWithValue("@ct", txtteacher.Text);
        cmd.Parameters.AddWithValue("@cs", txtsession.Text);
        cmd.Parameters.AddWithValue("@cp", txtprice.Text);
        cmd.Parameters.AddWithValue("@ccm", txtmatn.Text);
        cmd.Parameters.AddWithValue("@cd", txtdate.Text);

        if (chkconf.Checked)
            cmd.Parameters.AddWithValue("@conf", 1);
        else
            cmd.Parameters.AddWithValue("@conf", 0);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        Response.Redirect("Courses.aspx?cid=" + Request.QueryString["cid"]);
    }
}
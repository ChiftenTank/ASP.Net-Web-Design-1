using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_EditSlide : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";
        if (!IsPostBack)
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from TblSlideshow where id=" + Request.QueryString["sid"], conn);
            DataSet ds = new DataSet();
            sda.Fill(ds, "TblSlideshow");
            if (ds.Tables["TblSlideshow"].Rows.Count != 0)
            {
                DataRow dr = ds.Tables["TblSlideshow"].Rows[0];
                simg.ImageUrl = "../" + dr["picture"].ToString();
                txttitle.Text = dr["title"].ToString();

                if (dr["conf"].ToString() == "False")
                    chkconf.Checked = false;

                else
                    chkconf.Checked = true;

            }

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update TblSlideshow set title=@t, picture=@pi where id= " + Request.QueryString["sid"], conn);
        cmd.Parameters.AddWithValue("@t", txttitle.Text);
        cmd.Parameters.AddWithValue("@pi", simg.ImageUrl);
       
        if (chkconf.Checked)
            cmd.Parameters.AddWithValue("@conf", 1);
        else
            cmd.Parameters.AddWithValue("@conf", 0);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        Response.Redirect("slides.aspx");
    }
}

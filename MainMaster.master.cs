using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class MainMaster : System.Web.UI.MasterPage
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";
        SqlDataAdapter sda = new SqlDataAdapter("select * from TblSlideshow", conn);
        DataSet ds = new DataSet();
        sda.Fill(ds, "TblSlideshow");

        if (ds.Tables["TblSlideshow"].Rows.Count != 0)
        {
            Repeater1.DataSource = ds.Tables["TblSlideshow"];
            Repeater1.DataBind();
        }
    }

    protected void Image8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("LoginForm.aspx");
    }

    protected void Image6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("RegisterForm.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("corses.aspx?cid=1");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("corses.aspx?cid=2");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("corses.aspx?cid=3");
    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://Instagram.com/fekrejavan.ins");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://Instagram.com/fekrejavan.ins");

    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://Instagram.com/fekrejavan.ins");

    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://Instagram.com/fekrejavan.ins");

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("search.aspx?search=" + txtsearch.Text);
    }
}

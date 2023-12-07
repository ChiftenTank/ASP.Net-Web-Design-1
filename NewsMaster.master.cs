using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class NewsMaster : System.Web.UI.MasterPage
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Image8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("LoginForm.aspx");
    }

    protected void Image6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("RegisterForm.aspx");
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

    protected void Image2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://Instagram.com/fekrejavan.ins");
    }

    protected void Image3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://Instagram.com/fekrejavan.ins");
    }

    protected void Image4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://Instagram.com/fekrejavan.ins");
    }

    protected void Image5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://Instagram.com/fekrejavan.ins");
    }
}

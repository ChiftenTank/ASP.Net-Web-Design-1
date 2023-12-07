using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserProfileMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        userimg.ImageUrl = Session["userpic"].ToString();
        lblname.Text = Session["userfamily"].ToString() + " خوش آمدید";
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("edituserform.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("newsuserform.aspx");
    }

    protected void LinkButton5_Click1(object sender, EventArgs e)
    {
        Response.Redirect("contactmanagrform.aspx");
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("mainform.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("basket.aspx");
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

    protected void Image8_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void Image7_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("sefaresh.aspx");
    }
}
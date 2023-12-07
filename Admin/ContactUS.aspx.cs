using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ContactUS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://Instagram.com/fekrejavan.ins");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://telegram.me/fekrejavan");

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}
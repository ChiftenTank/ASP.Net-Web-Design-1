using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_DelNews : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";
        SqlCommand cmd = new SqlCommand("delete from tblnews where id="+Request.QueryString["nid"], conn);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("newsadmin.aspx?newscat=" + Request.QueryString["newscat"]);

    }
}
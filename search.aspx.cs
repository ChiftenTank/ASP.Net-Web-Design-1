using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class search : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";
        SqlDataAdapter sda = new SqlDataAdapter("select * from Tblmahsollat where mah_name like '%'+@ci+'%'", conn);
        sda.SelectCommand.Parameters.AddWithValue("@ci", Request.QueryString["search"]);
        DataSet ds = new DataSet();
        sda.Fill(ds, "Tblmahsollat");

        if (ds.Tables["Tblmahsollat"].Rows.Count != 0)
        {
            Repeater1.DataSource = ds.Tables["Tblmahsollat"];
            Repeater1.DataBind();
        }


        SqlDataAdapter sda2 = new SqlDataAdapter("select * from Tblnews where title like '%'+@t+'%'", conn);
        sda2.SelectCommand.Parameters.AddWithValue("@t", Request.QueryString["search"]);
        DataSet ds2 = new DataSet();
        sda2.Fill(ds2, "Tblnews");

        if (ds2.Tables["Tblnews"].Rows.Count != 0)
        {
            Repeater2.DataSource = ds2.Tables["Tblnews"];
            Repeater2.DataBind();
        }
    }
}
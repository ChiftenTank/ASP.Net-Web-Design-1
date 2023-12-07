using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class MahsoolDetail : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";
        SqlDataAdapter sda = new SqlDataAdapter("select * from TblMahsollat where id="+ Request.QueryString["id"], conn);

        DataSet ds = new DataSet();
        sda.Fill(ds, "TblMahsollat");

        if (ds.Tables["TblMahsollat"].Rows.Count != 0)
        {
            DataRow dr = ds.Tables["tblmahsollat"].Rows[0];
            mah_img.ImageUrl = dr["mah_img"].ToString();
            lblname.Text = dr["mah_name"].ToString();
            lblprice.Text = dr["mah_price"].ToString()+"ریال";
            lblcomments.Text = dr["mah_comments"].ToString();
            
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("sefaresh.aspx");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Mahsoolat : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";
        SqlCommand cmd = new SqlCommand("insert into Tblmahsollat(mah_category,mah_name,mah_price,mah_mojodi,mah_comments,mah_img,mah_conf) values(@mca,@mna,@mp,@mm,@mc,@mimg,1)", conn);
        cmd.Parameters.AddWithValue("@mca", ddlcat.SelectedValue);
        cmd.Parameters.AddWithValue("@mna", txtname.Text);
        cmd.Parameters.AddWithValue("@mp", txtprice.Text);
        cmd.Parameters.AddWithValue("@mm", txttedad.Text);
        cmd.Parameters.AddWithValue("@mc", txtmatn.Text);
        if (kalaimg.HasFile)
        {
            string path = kalaimg.PostedFile.FileName;
            kalaimg.SaveAs(Server.MapPath("../Images/Mahsollat/") + path);
            cmd.Parameters.AddWithValue("@mimg", "Images/Mahsollat/" + path);
        }

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}
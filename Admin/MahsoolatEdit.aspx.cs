using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_MahsoolatEdit : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";
        if (!IsPostBack)
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from TblMahsollat where mah_category=" + Request.QueryString["mcat"], conn);
            DataSet ds = new DataSet();
            sda.Fill(ds, "TblMahsollat");
            if (ds.Tables["TblMahsollat"].Rows.Count != 0)
            {
                DataRow dr = ds.Tables["TblMahsollat"].Rows[0];
                mimg.ImageUrl = "../" + dr["mah_img"].ToString();
                txttitle.Text = dr["mah_name"].ToString();
                txtprice.Text = dr["mah_price"].ToString();
                txttedad.Text = dr["mah_mojodi"].ToString();
                txtmatn.Text = dr["mah_comments"].ToString();


                if (dr["mah_conf"].ToString() == "False")
                    chkconf.Checked = false;

                else
                    chkconf.Checked = true;

            }

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update TblMahsollat set mah_name=@mn, mah_price=@mp, mah_mojodi=@mm, mah_comments=@mc, mah_conf=@mconf where id= " + Request.QueryString["id"], conn);
        cmd.Parameters.AddWithValue("@mn", txttitle.Text);
        cmd.Parameters.AddWithValue("@mp", txtprice.Text);
        cmd.Parameters.AddWithValue("@mm", txttedad.Text);
        cmd.Parameters.AddWithValue("@mc", txtmatn.Text);

        if (chkconf.Checked)
            cmd.Parameters.AddWithValue("@mconf", 1);
        else
            cmd.Parameters.AddWithValue("@nconf", 0);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        Response.Redirect("mahsoolat.aspx?mcat=" + Request.QueryString["mcat"]);
    }

   
}
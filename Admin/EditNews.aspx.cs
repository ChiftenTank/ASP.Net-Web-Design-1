using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_EditNews : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";
        if (!IsPostBack)
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from tblnews where id=" + Request.QueryString["nid"], conn);
            DataSet ds = new DataSet();
            sda.Fill(ds, "tblnews");
            if (ds.Tables["tblnews"].Rows.Count != 0)
            {
                DataRow dr = ds.Tables["tblnews"].Rows[0];
                nimg.ImageUrl = "../" + dr["nimage"].ToString();
                txttitle.Text = dr["title"].ToString();
                txtdate.Text = dr["ndate"].ToString();
                txtwriter.Text = dr["nwriter"].ToString();
                txtmatn.Text = dr["ncomments"].ToString();


                if (dr["nconf"].ToString() == "False")
                    chkconf.Checked = false;

                else
                    chkconf.Checked = true;


                if (dr["imp"].ToString() == "False")
                    chkimp.Checked = false;

                else
                    chkimp.Checked = true;
            }
      
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update tblnews set title=@t, ndate=@nd, nwriter=@nw, ncomments=@nc, nconf=@nconf, imp=@imp where id= "+Request.QueryString["nid"], conn);
        cmd.Parameters.AddWithValue("@t", txttitle.Text);
        cmd.Parameters.AddWithValue("@nd", txtdate.Text);
        cmd.Parameters.AddWithValue("@nw", txtwriter.Text);
        cmd.Parameters.AddWithValue("@nc", txtmatn.Text);

        if (chkconf.Checked)
            cmd.Parameters.AddWithValue("@nconf", 1);
        else
            cmd.Parameters.AddWithValue("@nconf", 0);

        if (chkimp.Checked)
            cmd.Parameters.AddWithValue("@imp", 1);
        else
            cmd.Parameters.AddWithValue("@imp", 0);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        Response.Redirect("newsadmin.aspx?newscat=" + Request.QueryString["newscat"]);

    }
}
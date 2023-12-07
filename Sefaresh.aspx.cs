using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Sefaresh : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    public static int mojodi;
    public static DataRow dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";

        if (Session["id"] == null)
        {
            Response.Redirect("LoginForm.aspx");
        }
        else
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from TblMahsollat where id=" + Request.QueryString["id"], conn);

            DataSet ds = new DataSet();
            sda.Fill(ds, "TblMahsollat");

            if (ds.Tables["TblMahsollat"].Rows.Count != 0)
            {
                dr = ds.Tables["tblmahsollat"].Rows[0];
                mojodi = int.Parse(dr["mah_mojodi"].ToString());
                m_img.ImageUrl = dr["mah_img"].ToString();
                lblname.Text = dr["mah_name"].ToString();
                lblprice.Text = dr["mah_price"].ToString() + "ریال";
                lblcomments.Text = dr["mah_comments"].ToString();
            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (int.Parse(txttedad.Text) > mojodi)
        {
            lblerroe.Visible = true;
        }
        else
        {
            SqlCommand cmd = new SqlCommand("insert into TblFactorDetail(userid,factorno,kalaname,tedad,price) values(@ui,@fno,@kn,@t,@p)", conn);
            cmd.Parameters.AddWithValue("@ui",Session["id"].ToString());
            cmd.Parameters.AddWithValue("@fno",0);
            cmd.Parameters.AddWithValue("@kn",dr["mah_name"].ToString());
            cmd.Parameters.AddWithValue("@t",int.Parse(txttedad.Text));
            cmd.Parameters.AddWithValue("@p",dr["mah_price"].ToString());

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            SqlDataAdapter sda = new SqlDataAdapter("select * from TblMahsollat where id="+Request.QueryString["id"],conn);
            DataSet ds = new DataSet();
            sda.Fill(ds, "tblmahsollat");
            if (ds.Tables["tblmahsollat"].Rows.Count != 0)
            {
                DataRow dr2 = ds.Tables["tblmahsollat"].Rows[0];
                int curmojodi = int.Parse(dr2["mah_mojodi"].ToString());
                curmojodi = curmojodi - int.Parse(txttedad.Text);

                SqlCommand cmdupd = new SqlCommand("update tblmahsollat set mah_mojodi=@m where id=" + Request.QueryString["id"], conn);
                cmdupd.Parameters.AddWithValue("@m", curmojodi);

                conn.Open();
                cmdupd.ExecuteNonQuery();
                conn.Close();
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();
        string curdate = pc.GetYear(DateTime.Now) + "/" + pc.GetMonth(DateTime.Now) + "/" + pc.GetDayOfMonth(DateTime.Now);
        int facttotal = 0;
        int maxfactno = 0;

        SqlDataAdapter sda = new SqlDataAdapter("select sum(tedad*price) as ftotal from TblFactorDetail where userid=@uid and factorno=0", conn);
        sda.SelectCommand.Parameters.AddWithValue("@uid", Session["id"].ToString());
        DataSet ds3 = new DataSet();
        sda.Fill(ds3, "TblFactorDetail");
        if (ds3.Tables["TblFactorDetail"].Rows.Count != 0)
        {
            DataRow dr3 = ds3.Tables["TblFactorDetail"].Rows[0];
            facttotal = int.Parse(dr3["ftotal"].ToString());
        }

        SqlCommand cmd = new SqlCommand("insert into TblFactorMain(customer,factordate,total) Values(@c,@f,@t)", conn);
        cmd.Parameters.AddWithValue("@c", int.Parse(Session["id"].ToString()));
        cmd.Parameters.AddWithValue("@f", curdate);
        cmd.Parameters.AddWithValue("@t", facttotal);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        SqlDataAdapter sda2 = new SqlDataAdapter("select max(factorno) as maxfact from TblFactorMain", conn);
        DataSet ds4= new DataSet();
        sda2.Fill(ds4, "TblFactorMain");
        if (ds4.Tables["TblFactorMain"].Rows.Count != 0)
        {
            DataRow dr4 = ds4.Tables["TblFactorMain"].Rows[0];
            maxfactno = int.Parse(dr4["maxfact"].ToString());
        }

        SqlCommand cmdupd = new SqlCommand("update tblfactordetail set factorno=@fn where factorno=0 and userid=@uid",conn);
        cmdupd.Parameters.AddWithValue("@fn", maxfactno);
        cmdupd.Parameters.AddWithValue("@uid",Session["id"].ToString());

        conn.Open();
        cmdupd.ExecuteNonQuery();
        conn.Close();
    }
}
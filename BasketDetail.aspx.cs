using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class BasketDetail : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";
        SqlDataAdapter sda = new SqlDataAdapter("select * from TblFactorDetail where factorno=@fn", conn);
        sda.SelectCommand.Parameters.AddWithValue("@fn", Request.QueryString["factid"]);
        DataSet ds = new DataSet();
        sda.Fill(ds, "TblFactorDetail");

        if (ds.Tables["TblFactorDetail"].Rows.Count != 0)
        {
            Repeater1.DataSource = ds.Tables["TblFactorDetail"];
            Repeater1.DataBind();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Corses : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";
        SqlDataAdapter sda = new SqlDataAdapter("select * from TblCourses where c_category=@ci", conn);
        sda.SelectCommand.Parameters.AddWithValue("@ci", Request.QueryString["cid"]);
        DataSet ds = new DataSet();
        sda.Fill(ds, "TblCourses");

        if (ds.Tables["TblCourses"].Rows.Count != 0)
        {
            Repeater1.DataSource = ds.Tables["TblCourses"];
            Repeater1.DataBind();
        }
    }
}
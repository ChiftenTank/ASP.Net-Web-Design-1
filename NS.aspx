<%@ Page Title="" Language="C#" MasterPageFile="~/NewsMaster.master" AutoEventWireup="true" CodeFile="NS.aspx.cs" Inherits="NS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <br />
    <br />

    <div style="width:600px; margin:auto; direction: rtl; text-align: center; color: yellow; background-color:blue;">

        <table align="center" class="auto-style3" dir="rtl" border="1" >

            <%
                System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
                conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";

                System.Data.SqlClient.SqlCommand sda = new System.Data.SqlClient.SqlCommand("select * from TblNews where ncat=" + Request.QueryString["newscat"], conn);

                conn.Open();

                System.Data.SqlClient.SqlDataReader dr = sda.ExecuteReader();
                while (dr.Read())
                {
                    Response.Write("<tr>");
                    Response.Write("<td>");
                    Response.Write("<img src='" + dr["nimage"].ToString() + "' width='50' height='50' /></td>");
                    Response.Write("<td>&nbsp;</td>");
                    Response.Write("</tr>");
                    Response.Write("<tr>");
                    Response.Write("<td>");
                    Response.Write("<label>نویسنده خبر:" + dr["nwriter"].ToString() + "&nbsp&nbsp&nbsp" + dr["ndate"].ToString() + "</label></td>");
                    Response.Write("<td><a href=News.aspx?id="+dr["id"].ToString()+"&newscat="+Request.QueryString["newscat"]+" style='color:yellow'><label>عنوان خبر:" + dr["title"].ToString() + "</label></a></td>");
                    Response.Write(" </tr>");
                    Response.Write("<td style='text-align:center'>");
                    Response.Write("<label>متن خبر:" + dr["ncomments"].ToString() + " </td>");

                }
                conn.Close();
            %>
        </table>



    </div>

</asp:Content>


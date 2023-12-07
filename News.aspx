<%@ Page Title="" Language="C#" MasterPageFile="~/NewsMaster.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 90%;
            color:yellow;
            background-color:darkblue;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <div style="width: 500px; margin: auto; direction: rtl; text-align: center">

        <br />
        <br />

        <table align="center" class="auto-style3" dir="rtl" border="1">

            <%
                System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
                conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";

                System.Data.SqlClient.SqlCommand sda = new System.Data.SqlClient.SqlCommand("select * from TblNews where id=" + Request.QueryString["id"], conn);

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
                    Response.Write("<td><label>عنوان خبر:" + dr["title"].ToString() + "</label></td>");
                    Response.Write("</tr>");
                    Response.Write("<td style='text-align:center'>");
                    Response.Write("<label>متن خبر:" + dr["ncomments"].ToString() + "</td>");
                }
                conn.Close();
            %>
        </table>
       
        <br />

    </div>
</asp:Content>


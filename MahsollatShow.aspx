<%@ Page Title="" Language="C#" MasterPageFile="~/MahsollatMaster.master" AutoEventWireup="true" CodeFile="MahsollatShow.aspx.cs" Inherits="MahsollatShow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       <div id="mahsol_show">

        <%
            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
            conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";

            System.Data.SqlClient.SqlCommand sda = new System.Data.SqlClient.SqlCommand("select * from tblmahsollat where mah_category=@cat", conn);
            sda.Parameters.AddWithValue("@cat", Request.QueryString["cat"]);

            conn.Open();

            System.Data.SqlClient.SqlDataReader dr = sda.ExecuteReader();
            while (dr.Read())
            {
                Response.Write("<div id='All1'>");
                Response.Write("<div id='mah_detail'><div id='mah_img'>");
                Response.Write("<img src='" + dr["mah_img"].ToString() + "' width='80' height='80' id='mah_pic'/> </div>");
                Response.Write("<div id='mah_name'>");
                Response.Write("<label>" + dr["mah_name"].ToString() + "<label></div>");
                Response.Write("<div id='mah_name'>");
                Response.Write("<lable>قیمت:" + dr["mah_price"].ToString() + "</lable></div>");
                Response.Write("<div id='mah_coment'>");
                Response.Write("<a href='MahsoolDetail.aspx?id=" + dr["id"].ToString() + "'>مشخصات کالا</a></div>");
                Response.Write("<div id='mah_kharid'>");
                Response.Write("<a href='Sefaresh.aspx?id=" + dr["id"].ToString() + "'>سفارش کالا</a>");
                Response.Write("</div>");
                Response.Write("</div>");
                Response.Write("</div>");


            }
            conn.Close();
        %>
    </div>


</asp:Content>


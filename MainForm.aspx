<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="MainForm.aspx.cs" Inherits="MainForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 90%;
            text-align: center;
            direction: rtl;
            opacity:1;
        }

        .auto-style5 {
            width: 90%;
            opacity:.8;
            border:dashed 1px black;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="Diff" >
    <div id="Diffr" >

        <table align="center" class="auto-style5" dir="rtl" >
          <%
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
        conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";

        System.Data.SqlClient.SqlCommand sda = new System.Data.SqlClient.SqlCommand("select * from TblNews where nconf=@nc and imp=@imp", conn);
        sda.Parameters.AddWithValue("@nc", 1);
        sda.Parameters.AddWithValue("@imp", 1);
        

        conn.Open();

        System.Data.SqlClient.SqlDataReader dr = sda.ExecuteReader();

        while (dr.Read())
        {
            Response.Write("<div id='news'>");
            Response.Write("<div>");
            Response.Write("<img src='" + dr["nimage"].ToString() + "' width='50' height='50' id='newsimg/>");
            Response.Write("</div>");
            Response.Write("<div id='newsdetail'>");
            Response.Write("<a href='News.aspx?id="+dr["id"].ToString()+" & newscat="+dr["ncat"].ToString()+"' <label>عنوان خبر:" + dr["title"].ToString() + "</label>");
            Response.Write("</div>");
            Response.Write("</div>");

        }
        conn.Close();
    %>
                
                
           
        </table>

    </div>

    <div id="Diffl" >
        <br />
        <table align="center" class="auto-style2" dir="rtl" border="1">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td style="width: 45px; padding-top: 5px;">
                            <img src="<%#DataBinder.Eval(Container.DataItem,"image") %>" width="30" height="30" /></td>
                        <td><a href="<%#DataBinder.Eval(Container.DataItem,"download") %>"><%#DataBinder.Eval(Container.DataItem,"title") %></a></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>

    </div>
        </div>
</asp:Content>


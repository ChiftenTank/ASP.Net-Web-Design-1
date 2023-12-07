<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Slides.aspx.cs" Inherits="Admin_Slides" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 90%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div style="width:800px;height:auto; text-align:center; margin:auto; background-color:chartreuse; border:1px solid black">


        <table align="center" class="auto-style1" dir="rtl" border="1">
            <tr>
                <th>عکس</th>
                <th>عنوان</th>
                <th>عملیات</th>
            </tr>

           <%
                System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
                conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";

                System.Data.SqlClient.SqlCommand sda = new System.Data.SqlClient.SqlCommand("select * from TblSlideshow", conn);

                conn.Open();

                System.Data.SqlClient.SqlDataReader dr = sda.ExecuteReader();
                while (dr.Read())
                {
                    Response.Write("<tr>");
                    Response.Write("<td>" + dr["picture"].ToString() + "</td>");
                    Response.Write("<td>" + dr["title"].ToString() + "</td>");
                    Response.Write("<td><a href='delslid.aspx?sid=" + dr["id"].ToString()+"'><img src='../Images/Icons/1075.png' width=30;height=30'>");
                    Response.Write("&nbsp;&nbsp;&nbsp;<a href='Editslide.aspx?sid=" + dr["id"].ToString()+"'><img src='../Images/Icons/1077.png' width=30;height=30'> </td>");
                    Response.Write("</tr>");

                }
                conn.Close();
            %>
        </table>

          <hr width="500px" />
        <table align="center" dir="rtl" border="1">
          
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="عنوان:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtsubject" runat="server" Font-Names="B Nazanin"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="عکس:"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="simg" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Font-Names="B Nazanin" Font-Size="Medium" OnClick="Button1_Click" Text="ثبت اسلاید" Width="100px" />
                </td>
            </tr>
        </table>

    </div>
</asp:Content>


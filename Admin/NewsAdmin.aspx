<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="NewsAdmin.aspx.cs" Inherits="Admin_NewsAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <div style="width: 800px; margin: auto; text-align: center; background-color:chartreuse; border:1px solid black">
        <br />

        <table align="center" class="auto-style1" dir="rtl" border="1">
            <tr>
                <th>عنوان خبر</th>
                <th>تاریخ</th>
                <th>نویسنده</th>
                <th>عملیات</th>
            </tr>
            <%
                System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
                conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";

                System.Data.SqlClient.SqlCommand sda = new System.Data.SqlClient.SqlCommand("select * from tblnews where ncat=" + Request.QueryString["newscat"], conn);

                conn.Open();

                System.Data.SqlClient.SqlDataReader dr = sda.ExecuteReader();
                while (dr.Read())
                {
                    Response.Write("<tr>");
                    Response.Write("<td>" + dr["title"].ToString() + "</td>");
                    Response.Write("<td>" + dr["ndate"].ToString() + "</td>");
                    Response.Write("<td>" + dr["nwriter"].ToString() + "</td>");
                    Response.Write("<td><a href='delnews.aspx?nid=" + dr["id"].ToString() + "&newscat=" + Request.QueryString["newscat"] + "'><img src='../Images/Icons/1075.png' width=30;height=30'>");
                    Response.Write("&nbsp;&nbsp;&nbsp;<a href='editnews.aspx?nid=" + dr["id"].ToString() + "&newscat=" + Request.QueryString["newscat"] + "'><img src='../Images/Icons/1077.png' width=30;height=30'> </td>");
                    Response.Write("</tr>");

                }
                conn.Close();
            %>
        </table>
        <hr width="500px" />
        <table align="center" class="auto-style4" dir="rtl">
            <tr>
                <td class="auto-style5">
                    <asp:Image ID="Image10" runat="server" Height="60px" ImageUrl="~/Images/Icons/news icon.png" Width="60px" />
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="دسته خبر:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlcat" runat="server" Font-Names="B Nazanin">
                        <asp:ListItem Value="1">آشپزی</asp:ListItem>
                        <asp:ListItem Value="2">شیرینی پزی</asp:ListItem>
                        <asp:ListItem Value="3">دوره های آموزشی</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="عنوان خبر:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtsubject" runat="server" Font-Names="B Nazanin"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="تاریخ خبر :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="newsdate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="متن خبر :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="newsmatn" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="عکس خبر :"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="newsimg" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Font-Names="B Nazanin" Font-Size="Medium" OnClick="Button1_Click" Text="ثبت خبر" Width="100px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>


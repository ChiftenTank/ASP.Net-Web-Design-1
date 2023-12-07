<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Mahsoolat.aspx.cs" Inherits="Admin_Mahsoolat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div style="width: 800px; margin: auto; text-align: center; background-color:chartreuse; border:1px solid black">
        <br />

        <table align="center" class="auto-style1" dir="rtl" border="1">
            <tr>
                <th>نام محصول</th>
                <th>مشخصات محصول</th>
                <th>قیمت</th>
                <th>موجودی</th>
                <th>عملیات</th>
            </tr>
            <%
                System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
                conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";

                System.Data.SqlClient.SqlCommand sda = new System.Data.SqlClient.SqlCommand("select * from tblmahsollat where mah_category=" + Request.QueryString["mcat"], conn);

                conn.Open();

                System.Data.SqlClient.SqlDataReader dr = sda.ExecuteReader();
                while (dr.Read())
                {
                    Response.Write("<tr>");
                    Response.Write("<td>" + dr["mah_name"].ToString() + "</td>");
                    Response.Write("<td>" + dr["mah_comments"].ToString() + "</td>");
                    Response.Write("<td>" + dr["mah_price"].ToString() + "</td>");
                    Response.Write("<td>" + dr["mah_mojodi"].ToString() + "</td>");
                    Response.Write("<td><a href='delmahsool.aspx?id=" + dr["id"].ToString() + "&mcat=" + Request.QueryString["mcat"] + "'><img src='../Images/Icons/1075.png' width=30;height=30'>");
                    Response.Write("&nbsp;&nbsp;&nbsp;<a href='mahsoolatedit.aspx?id=" + dr["id"].ToString() + "&mcat=" + Request.QueryString["mcat"] + "'><img src='../Images/Icons/1077.png' width=30;height=30'> </td>");
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
                    <asp:Label ID="Label6" runat="server" Text="دسته کالا:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlcat" runat="server" Font-Names="B Nazanin">
                        <asp:ListItem Value="1">آشپزی</asp:ListItem>
                        <asp:ListItem Value="2">شیرینی پزی</asp:ListItem>
                        <asp:ListItem Value="3">کافی شاپ</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="نام کالا:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server" Font-Names="B Nazanin"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="قیمت :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtprice" runat="server" TextMode="Number" Width="62px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="موجودی :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txttedad" runat="server" TextMode="Number" Width="61px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="مشخصات کالا :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmatn" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="عکس کالا :"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="kalaimg" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Font-Names="B Nazanin" Font-Size="Medium" OnClick="Button1_Click" Text="ثبت کالا" Width="100px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>


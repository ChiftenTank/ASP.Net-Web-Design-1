<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Courses.aspx.cs" Inherits="Admin_Courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: auto;
            
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
     <div style="width: 900px; margin: auto; text-align: center; background-color:chartreuse; border:1px solid black">
        <br />

        <table align="center" class="auto-style1" dir="rtl" border="1">
            <tr>
                <th>عنوان </th>
                <th>عکس</th>
                <th>استاد</th>
                <th>تعداد جلسات</th>
                <th>هزینه </th>
                <th>توضیحات </th>
                <th>تاریخ برگزاری </th>
                <th>عملیات</th>
            </tr>
            <%
                System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
                conn.ConnectionString = "data source=.; initial catalog=MiladDB; integrated security=true";

                System.Data.SqlClient.SqlCommand sda = new System.Data.SqlClient.SqlCommand("select * from TblCourses where c_category=" + Request.QueryString["cid"], conn);

                conn.Open();

                System.Data.SqlClient.SqlDataReader dr = sda.ExecuteReader();
                while (dr.Read())
                {
                    Response.Write("<tr>");
                    Response.Write("<td>" + dr["c_title"].ToString() + "</td>");
                    Response.Write("<td>" + dr["c_image"].ToString() + "</td>");
                    Response.Write("<td>" + dr["c_teacher"].ToString() + "</td>");
                    Response.Write("<td>" + dr["c_session"].ToString() + "</td>");
                    Response.Write("<td>" + dr["c_price"].ToString() + "</td>");
                    Response.Write("<td>" + dr["c_comments"].ToString() + "</td>");
                    Response.Write("<td>" + dr["c_date"].ToString() + "</td>");
                    Response.Write("<td><a href='delcourse.aspx?coid=" + dr["id"].ToString() + "&cid=" + Request.QueryString["cid"] + "'><img src='../Images/Icons/1075.png' width=30;height=30'>");
                    Response.Write("&nbsp;&nbsp;&nbsp;<a href='CourseEdit.aspx?coid=" + dr["id"].ToString() + "&cid=" + Request.QueryString["cid"] + "'><img src='../Images/Icons/1077.png' width=30;height=30'> </td>");
                    Response.Write("</tr>");

                }
                conn.Close();
            %>
        </table>
        <hr width="500px" />
        <table align="center" dir="rtl">
            <tr>
                <td>
                    <asp:Image ID="Image10" runat="server" Height="60px" ImageUrl="~/Images/Icons/news icon.png" Width="60px" />
                </td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="دسته دوره:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlcat" runat="server" Font-Names="B Nazanin">
                        <asp:ListItem Value="1">آشپزی ایرانی</asp:ListItem>
                        <asp:ListItem Value="2">شیرینی پزی</asp:ListItem>
                        <asp:ListItem Value="3">آشپزی بین الملل</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="عنوان دوره:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtsubject" runat="server" Font-Names="B Nazanin"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="استاد دوره:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtteacher" runat="server" Font-Names="B Nazanin"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="تعداد جلسات:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtsession" runat="server" Font-Names="B Nazanin"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="هزینه دوره:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtprice" runat="server" Font-Names="B Nazanin" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="تاریخ برگزاری :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="توضیحات :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmatn" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="عکس دوره :"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="cimg" runat="server" />
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


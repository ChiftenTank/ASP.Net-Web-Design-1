<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="CourseEdit.aspx.cs" Inherits="Admin_CourseEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1 {
            width: 90%;
        }
        .auto-style2 {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div style="width: 800px; margin: auto; text-align:center; background-color:yellow; border:2px solid black">
        <br />
        <table align="center" class="auto-style1" dir="rtl" border="0">
            <tr>
                <td>
                    <asp:Image ID="nimg" runat="server" Height="100px" Width="100px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="عنوان دوره:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txttitle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="تاریخ برگزاری دوره:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="استاد دوره:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtteacher" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="هزینه دوره:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtprice" runat="server" TextMode="Number" Width="107px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="تعداد جلسات:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtsession" runat="server" TextMode="Number" Width="107px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="توضیحات دوره:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmatn" runat="server" Height="100px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="تایید دوره:"></asp:Label>
                </td>
                <td>
                    <asp:CheckBox ID="chkconf" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Font-Names="B Nazanin" Font-Size="Medium" OnClick="Button1_Click" Text="ثبت ویرایش" />
                </td>
            </tr>
        </table>
        </div>
</asp:Content>



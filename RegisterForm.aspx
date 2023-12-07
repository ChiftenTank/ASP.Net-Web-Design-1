<%@ Page Title="" Language="C#" MasterPageFile="~/RegisterMaster.master" AutoEventWireup="true" CodeFile="RegisterForm.aspx.cs" Inherits="RegisterForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <div style="width: 600px; height: auto; margin: auto; border: 1px solid blue; border-radius: 20px; box-shadow: 10px 10px 20px">
        <table align="center" dir="rtl">
            <tr>
                <td>
                    <asp:image id="Image10" runat="server" height="50px" imageurl="~/Images/Icons/register icon.png" width="50px" />
                </td>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:label runat="server" text="نام و نام خانوادگی" ID="TextBox1"></asp:label>
                </td>
                <td>
                    <asp:textbox id="txtname" runat="server" OnTextChanged="txtname_TextChanged"></asp:textbox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:label runat="server" text="جنسیت"></asp:label>
                </td>
                <td class="auto-style2" id="rblgender">
                    <asp:radiobuttonlist id="rblgender" runat="server" repeatdirection="Horizontal">
                                <asp:ListItem Value="1">زن</asp:ListItem>
                                <asp:ListItem Value="0">مرد</asp:ListItem>
                            </asp:radiobuttonlist>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:label runat="server" text="نام و نام کاربری" ID="TextBox2"></asp:label>
                </td>
                <td class="auto-style3">
                    <asp:textbox id="txtusername" runat="server"></asp:textbox>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:label runat="server" text="کلمه عبور" ID="TextBox3"></asp:label>
                </td>
                <td class="auto-style2">
                    <asp:textbox id="txtpassword" runat="server" TextMode="Password"></asp:textbox>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td>
                    <asp:label runat="server" text="تکرار کلمه عبور" ID="TextBox4"></asp:label>
                </td>
                <td>
                    <asp:textbox id="txtconfirm" runat="server" TextMode="Password"></asp:textbox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:label runat="server" text="شهر"></asp:label>
                </td>
                <td>
                    <asp:dropdownlist id="ddlcity" runat="server" font-names="B Nazanin">
                                <asp:ListItem>اصفهان</asp:ListItem>
                                <asp:ListItem>رشت</asp:ListItem>
                                <asp:ListItem>اهواز</asp:ListItem>
                                <asp:ListItem>تهران</asp:ListItem>
                            </asp:dropdownlist>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:label runat="server" text="آدرس ایمیل" ID="TextBox5"></asp:label>
                </td>
                <td>
                    <asp:textbox id="txtemail" runat="server" TextMode="Email"></asp:textbox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td>عکس</td>
                <td>
                    <asp:fileupload id="userimg" runat="server" />
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style4">
                    <asp:button id="btnRegister" runat="server" font-names="B Nazanin" text="ثبت نام" width="110px" font-size="Medium" OnClick="btnRegister_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

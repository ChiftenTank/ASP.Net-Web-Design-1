<%@ Page Title="" Language="C#" MasterPageFile="~/RegisterMaster.master" AutoEventWireup="true" CodeFile="LoginForm.aspx.cs" Inherits="LoginForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <style type="text/css">
            .auto-style1 {
                width: 90%;
                border: 1px solid #000000;
            }
            .auto-style2 {
                height: 24px;
            }
            .auto-style3 {
                height: 26px;
            }
            .auto-style4 {
                width: 146px;
            }
            .auto-style5 {
                height: 24px;
                width: 146px;
            }
            .auto-style6 {
                height: 26px;
                width: 146px;
            }
          .auto-style7 {
              width: 231px;
          }
          .auto-style8 {
              height: 26px;
              width: 231px;
          }
          .auto-style9 {
              height: 24px;
              width: 231px;
          }
          .auto-style10 {
              height: 50px;
          }
        </style>
     <br />
            <div style="background-color:yellow; width:600px; height:auto; margin:auto; border: 1px solid blue; border-radius:20px; box-shadow:10px 10px 20px">
                <table align="center" dir="rtl">
                    <tr>
                        <td>
                            <asp:Image ID="Image10" runat="server" Height="50px" ImageUrl="~/Images/Icons/login user icon.png" Width="50px" />
                        </td>
                        <td class="auto-style7">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label3" runat="server" Text="نام و نام کاربری" ForeColor="#0033CC"></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label4" runat="server" Text="کلمه عبور" ForeColor="Blue"></asp:Label>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td class="auto-style7">
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style10" colspan="2">
                            <asp:Label ID="lblerror" runat="server" Text="نام کاربری یا کلمه عبور اشتباه است." ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style7">
                            <asp:Button ID="Button1" runat="server" Font-Names="B Nazanin" Text="ورود کاربران" Width="140px" Font-Size="Large" OnClick="Button1_Click" ForeColor="Blue" />
                        </td>
                    </tr>
                </table>
            </div> 
</asp:Content>



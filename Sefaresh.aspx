<%@ Page Title="" Language="C#" MasterPageFile="~/MahsollatMaster.master" AutoEventWireup="true" CodeFile="Sefaresh.aspx.cs" Inherits="Sefaresh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1 {
            width: 70%;
        }

        .auto-style2 {
             height: 32px;
         }

        .auto-style5 {
            margin-right: 0px;
        }

        .auto-style6 {
            height: 51px;
            text-align: left;
        }
         .auto-style7 {
             height: 27px;
         }
         .auto-style8 {
             height: 94px;
         }
         .auto-style9 {
             width: 500px;
             height: 351px;
             float: right;
         }
         .auto-style10 {
             width: 750px;
             height: 350px;
         }
         .auto-style11 {
             height: 25px;
         }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
     <br />
    <br />
    <div style="margin-left: auto; margin-right: auto; margin-top: auto;" class="auto-style10">

        <div style=" width:250px; height:275px;float:right;text-align:center;padding-top:75px">
            <asp:image runat="server" ID="m_img" Height="200px" Width="200px"></asp:image>
        </div>
        <div class="auto-style9">       
            
            <br />
            <br />
            <table align="center" class="auto-style1" dir="rtl">
                <tr>
                    <td class="auto-style2">
                        <asp:label id="Label5" runat="server" text="نام کالا:"></asp:label>
                    </td>
                    <td class="auto-style2">
                        <asp:label id="lblname" runat="server" text="Label"></asp:label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:label id="Label6" runat="server" text="قیمت:"></asp:label>
                    </td>
                    <td class="auto-style7">
                        <asp:label id="lblprice" runat="server" text="Label"></asp:label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:label id="Label7" runat="server" text="مشخصات کالا:"></asp:label>
                    </td>
                    <td class="auto-style8">
                        <asp:label id="lblcomments" runat="server" text="Label"></asp:label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:label id="Label8" runat="server" text="تعداد:" Font-Names="B Nazanin"></asp:label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txttedad" runat="server" TextMode="Number" Width="47px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        <asp:label id="lblerroe" runat="server" text="تعداد درخواستی شما از موجودی بیشتر میباشد." ForeColor="Red" Visible="False"></asp:label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style6">
                        <asp:button id="Button1" runat="server" cssclass="auto-style5" font-names="B Nazanin" text="سفارش کالا" width="138px" Font-Size="Medium" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Font-Names="B Nazanin" Font-Size="Medium" OnClick="Button2_Click" Text="پرداخت" />
                    </td>
                </tr>
            </table>
        </div>
    </div>

</asp:Content>


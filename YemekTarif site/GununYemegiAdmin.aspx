<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="GununYemegiAdmin.aspx.cs" Inherits="GununYemegiAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style28 {
            color: #000000;
            background-color: #CCCCCC;
        }
        .auto-style35 {
            width: 35px;
        }
        .auto-style33 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style34 {
            font-weight: bold;
            font-size: x-large;
            margin-left: 0px;
        }
        .auto-style32 {
        text-align: left;
    }
        .auto-style31 {
        font-size: large;
    }
    .auto-style30 {
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style28">
        <table class="auto-style27">
            <tr>
                <td class="auto-style35"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style33" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style35"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style34" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style32">YEMEK LSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style27">
                    <tr>
                        <td class="auto-style32">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style31" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style30"><a href='yemekDuzenle.aspx?Yemekid=<%# Eval("Yemekid") %>'>
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/228-2285565_choose-done-select-feature-choice-tab-choose-png.png" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>


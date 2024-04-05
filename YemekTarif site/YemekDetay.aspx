<%@ Page Title="" Language="C#" MasterPageFile="~/kullanıcı.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style25 {
            font-size: 30pt;
            color: #FFFFFF;
        }
        .auto-style26 {
            width: 100%;
        }
        .auto-style27 {
            font-size: x-small;
        }
        .auto-style28 {
            font-size: x-large;
        }
    .auto-style29 {
        text-align: right;
    }
    .auto-style30 {
        margin-bottom: 1px;
    }
    .auto-style31 {
        text-align: left;
    }
    .auto-style32 {
        font-size: medium;
        font-weight: bold;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <strong>
    <asp:Label ID="Label3" runat="server"  CssClass="auto-style25"   Text="Label" ></asp:Label>
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style29">
        <ItemTemplate>
            <table class="auto-style26">
                <tr>
                    <td class="auto-style31">
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style28" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin" class="auto-style31">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumiçerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style27" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
        <br />
        <div style="background-color: #EEA4A4">YORUM YAPMA PANELİ</div>
        <asp:panel runat="server">
            <table class="auto-style26">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </strong>
                <tr>
                    <td class="auto-style29"><strong>Ad Soyad&nbsp;:</strong></td>
                    <strong>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style30" Height="20px" Width="200px"></asp:TextBox>
                    </td>
                    </strong>
                </tr>
                <tr>
                    <td class="auto-style29"><strong>Mail:</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29"><strong>Yorumumuz:</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style32" OnClick="Button1_Click" Text="Yorum yap" Width="200px" />
                        </strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
</asp:panel>
    </asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="yemekDuzenle.aspx.cs" Inherits="yemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style28 {
            margin-left: 40px;
        }
        .auto-style29 {
            font-size: medium;
        }
        .auto-style30 {
            font-size: large;
            text-align: right;
        }
        .auto-style31 {
            font-size: large;
            text-align: right;
            height: 26px;
        }
        .auto-style32 {
            height: 26px;
        }
        .auto-style33 {
            font-weight: bold;
            font-size: 18pt;
            background-color: #0099FF;
        }
    .auto-style35 {
        font-size: 18pt;
    }
    .auto-style36 {
        font-weight: bold;
        font-size: 18pt;
        background-color: #CCFFFF;
    }
        .auto-style37 {
            font-size: medium;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style27">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30"><strong>Yemek Ad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style30"><strong>&nbsp;Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" Width="250px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style31"><strong>Tarif:</strong></td>
            <td class="auto-style32">
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" Width="250px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style30"><strong>Kategori:</strong></td>
            <td class="auto-style28">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style37"><strong>Yemek Görüntü:</strong></td>
            <td class="auto-style28">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style28">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style33" Text="Güncelle" Width="250px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style28">
                <strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style36" OnClick="Button2_Click" Text="GününYemegi Seç" Width="250px" />
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>


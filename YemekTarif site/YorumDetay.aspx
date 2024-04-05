<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YorumDetay.aspx.cs" Inherits="YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style28 {
            height: 27px;
        }
        .auto-style29 {
            text-align: right;
        }
        .auto-style30 {
            height: 27px;
            text-align: right;
        }
        .auto-style31 {
            text-align: right;
            height: 25px;
        }
        .auto-style32 {
            height: 25px;
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
            <td class="auto-style30"><strong>Ad Soyad:</strong></td>
            <td class="auto-style28">
                <asp:TextBox ID="TxtAd" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style31"><strong>Mail Adresi:</strong></td>
            <td class="auto-style32">
                <asp:TextBox ID="TxtMail" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29"><strong>İçerik</strong></td>
            <td>
                <asp:TextBox ID="Txtiçerik" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29"><strong>Yemek:</strong></td>
            <td>
                <asp:TextBox ID="TxtYemek" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnOynayla" runat="server" Text="Onayla" Width="150px" OnClick="btnOynayla_Click" />
            </td>
        </tr>
    </table>
</asp:Content>


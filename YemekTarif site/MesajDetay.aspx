<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="MesajDetay.aspx.cs" Inherits="MesajDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style28 {
            margin-left: 80px;
        }
        .auto-style29 {
            text-align: right;
        }
        .auto-style30 {
            text-align: right;
            height: 24px;
        }
        .auto-style31 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style27">
        <tr class="auto-style28">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr class="auto-style28">
            <td class="auto-style29"><strong>MesajGonderen:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr class="auto-style28">
            <td class="auto-style30"><strong>Başlık</strong></td>
            <td class="auto-style31">
                <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr class="auto-style28">
            <td class="auto-style29"><strong>Mail Adresi:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr class="auto-style28">
            <td class="auto-style29"><strong>Mesaj İcerik:</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr class="auto-style28">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TarifOnerDetay.aspx.cs" Inherits="TarifOnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style28 {
            margin-left: 80px;
        }
        .auto-style29 {
            height: 20px;
        }
        .auto-style30 {
            height: 20px;
            text-align: right;
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
            <td class="auto-style30"><strong>TraifAd:</strong></td>
            <td class="auto-style29">
                <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr class="auto-style28">
            <td class="auto-style30"><strong>TraifMalzeme:</strong></td>
            <td class="auto-style29">
                <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr class="auto-style28">
            <td class="auto-style30"><strong>TraifYaplis:</strong></td>
            <td class="auto-style29">
                <asp:TextBox ID="TextBox5" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr class="auto-style28">
            <td class="auto-style30"><strong>TraifResim:</strong></td>
            <td class="auto-style29">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr class="auto-style28">
            <td class="auto-style30"><strong>Tarif Öner:</strong></td>
            <td class="auto-style29">
                <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr class="auto-style28">
            <td class="auto-style30"><strong>Öneren Mail:</strong></td>
            <td class="auto-style29">
                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr class="auto-style28">
            <td class="auto-style30"><strong>Kategori</strong>:</td>
            <td class="auto-style29">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="auto-style28">
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style29">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Onayla" Width="200px" />
            </td>
        </tr>
    </table>
</asp:Content>


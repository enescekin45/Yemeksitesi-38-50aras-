<%@ Page Title="" Language="C#" MasterPageFile="~/kullanıcı.master" AutoEventWireup="true" CodeFile="TarıfOner.aspx.cs" Inherits="TarıfOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style25 {
        text-align: left;
    }
    .auto-style26 {
        height: 22px;
    }
    .auto-style27 {
        margin-left: 40px;
    }
    .auto-style28 {
        text-align: right;
    }
    .auto-style30 {
        text-align: right;
        height: 26px;
    }
    .auto-style31 {
        height: 26px;
        margin-left: 40px;
    }
    .auto-style32 {
        border: 2px solid #456879;
        border-radius: 10px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style8">
    <tr>
        <td class="auto-style28"><strong>Tarif Ad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
        <td>
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="238px" CssClass="auto-style32"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>Malzemeler:&nbsp;&nbsp; </strong></td>
        <td>
            <asp:TextBox ID="TxtMalzemler" runat="server" Height="80px" TextMode="MultiLine" Width="237px" CssClass="auto-style32"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>Yaplis:</strong></td>
        <td class="auto-style27">
            <asp:TextBox ID="TxtYapis" runat="server" Height="150px" TextMode="MultiLine" Width="233px" CssClass="auto-style32"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>Resim:</strong></td>
        <td class="auto-style27">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="234px" CssClass="auto-style32" />
        </td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>Tarif Öneren:</strong></td>
        <td class="auto-style27">
            <asp:TextBox ID="TextTarifOneren" runat="server" Width="225px" CssClass="auto-style32"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style30"><strong>Mail Adresi:</strong></td>
        <td class="auto-style31">
            <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email" Width="225px" CssClass="auto-style32"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style27"><strong><em>
            <asp:Button ID="BtnTraifOner" runat="server" BackColor="#FFFFCC" CssClass="fb8" Height="40px" Text="Tarif Öner" Width="114px" OnClick="BtnTraifOner_Click" />
            </em></strong></td>
    </tr>
</table>
</asp:Content>


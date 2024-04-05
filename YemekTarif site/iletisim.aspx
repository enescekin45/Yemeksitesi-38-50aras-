<%@ Page Title="" Language="C#" MasterPageFile="~/kullanıcı.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style25 {
        width: 100%;
    }
    .auto-style26 {
        height: 22px;
    }
    .auto-style28 {
            height: 114px;
            text-align: right;
            width: 604px;
        }
    .auto-style29 {
        font-size: x-large;
        color: #000000;
    }
    .auto-style30 {
        border: 2px solid #456879;
        border-radius: 10px;
    }
        .auto-style31 {
            height: 60px;
            text-align: right;
            width: 604px;
        }
        .auto-style34 {
            height: 66px;
            width: 604px;
        }
        .auto-style35 {
            height: 3px;
            text-align: right;
            width: 604px;
        }
        .auto-style36 {
            width: 700px;
            height: 3px;
        }
        .auto-style37 {
            height: 62px;
            text-align: right;
            width: 604px;
        }
        .auto-style39 {
            border: 2px solid #456879;
            border-radius: 10px;
            margin-bottom: 0px;
        }
        .auto-style40 {
            width: 100%;
            margin-left: 0px;
            margin-bottom: 0px;
        }
        .auto-style41 {
            height: 66px;
            width: 700px;
        }
        .auto-style42 {
            width: 700px;
            height: 114px;
        }
        .auto-style43 {
            height: 62px;
            width: 700px;
        }
        .auto-style44 {
            height: 60px;
            width: 700px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style40">
    <tr>
        <td class="auto-style29" colspan="2"><strong>MESAJ PANELİ</strong></td>
    </tr>
    <tr>
        <td class="auto-style31"><strong>Ad Soyad:</strong></td>
        <td class="auto-style44">
            <asp:TextBox ID="TxtGonderen" runat="server" CssClass="auto-style30" Width="187px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style37"><strong>Mail Adresiniz:</strong></td>
        <td class="auto-style43">
            <asp:TextBox ID="TxtMail" runat="server" CssClass="auto-style30" Width="192px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style35"><strong>Konu:</strong></td>
        <td class="auto-style36">
            <asp:TextBox ID="TxtBaslik" runat="server" CssClass="auto-style30" Width="199px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>Mesaj:</strong></td>
        <td class="auto-style42">
            <asp:TextBox ID="TxMesaj" runat="server" CssClass="auto-style39" Width="203px" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style34"></td>
        <td class="auto-style41"><strong>
            <asp:Button ID="Button1" runat="server" CssClass="fb8" Text="Gönder" Width="230px" OnClick="Button1_Click" />
            </strong></td>
    </tr>
</table>
</asp:Content>


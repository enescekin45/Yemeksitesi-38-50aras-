<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Hakkımızda.Admin.aspx.cs" Inherits="Hakkımızda_Admin" %>

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
        .auto-style36 {
            margin-left: 80px;
        }
        .auto-style37 {
            font-size: large;
        }
        .auto-style38 {
            font-size: small;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style28">
        <table class="auto-style27">
            <tr>
                <td class="auto-style35"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style33" Height="30px"  Text="+" Width="30px"  />
                    </strong></td>
                <td class="auto-style35"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style34" Height="30px"  Text="-" Width="30px" />
                    </strong></td>
                <td class="auto-style32">HAKKIMIZDA </td>
            </tr>
        </table>
    </asp:Panel>
    <table class="auto-style27">
        <tr>
            <td class="auto-style36">
                <em>
                <asp:TextBox ID="TextBox2" runat="server" Height="200px" TextMode="MultiLine" Width="435px" CssClass="auto-style38"></asp:TextBox>
                </em>
            </td>
        </tr>
    </table>
    <strong>
    <asp:Button ID="Button3" runat="server" Text="Güncele" CssClass="auto-style37" Width="200px" OnClick="Button3_Click"  />
    </strong>
    </asp:Content>


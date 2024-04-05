<%@ Page Title="" Language="C#" MasterPageFile="~/kullanıcı.master" AutoEventWireup="true" CodeFile="Gunuyemegi.aspx.cs" Inherits="Gunuyemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style38 {
            width: 239px;
            text-align: left;
            height: 407px;
        }

        .auto-style30 {
            font-size: x-large;
        }

        .auto-style29 {
            width: 136%;
            height: 169px;
        }

        .auto-style32 {
            text-align: left;
        }

        .auto-style27 {
            margin-bottom: 0px;
        }

        .auto-style34 {
            width: 115%;
        }

        .auto-style36 {
            width: 113px;
            text-align: justify;
            height: 21px;
        }

        .auto-style26 {
            width: 67%;
            height: 387px;
        }

        .auto-style40 {
            margin-top: 0px;
        }
        .auto-style41 {
            width: 417px;
            height: 150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <p>
        <asp:DataList ID="DataList2" runat="server" CssClass="auto-style40">
            <ItemTemplate>
                <table class="auto-style41">
                    <tr>
                        <td class="auto-style38">
                            <table class="auto-style8">
                                <tr>
                                    <td class="auto-style32"><strong>
                                        <asp:Label ID="Label3" runat="server" CssClass="auto-style30" Text='<%# Eval("YemekAd") %>'></asp:Label>
                                    </strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style32"><strong>Mazemeler:</strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <table class="auto-style8">
                                <tr>
                                    <td><strong>Tarif:</strong><asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <table class="auto-style29">
                                <tr>
                                    <td class="auto-style32">
                                        <asp:Image ID="Image1" runat="server" CssClass="auto-style27" Height="181px" Width="361px" ImageUrl='<%# Eval("YemekResim") %>' />
                                    </td>
                                </tr>
                            </table>
                            <table class="auto-style34">
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <table class="auto-style8">
                                            <tr>
                                                <td class="auto-style36">Puan:<asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style25"><strong>Ekleme Tarih: <em>
                                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                                </em></strong></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>



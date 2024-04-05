<%@ Page Title="" Language="C#" MasterPageFile="~/kullanıcı.master" AutoEventWireup="true" CodeFile="KategoriiDetay.aspx.cs" Inherits="KategoriiDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style25 {
            width: 100%;
            height: 132px;
        }
        .auto-style30 {
            color: #FFFFFF;
            background-color: #FFFF99;
            height: 36px;
        }
        .auto-style26 {
            font-size: x-large;
            color: #CC0066;
        }
        .auto-style27 {
            height: 23px;
        }
        .auto-style29 {
            color: #CC99FF;
        }
        .auto-style28 {
            color: #FFFFFF;
        }
        .auto-style31 {
        margin-right: 1px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style31">
            <ItemTemplate>
                <table class="auto-style25">
                    <tr>
                        <td class="auto-style30"><strong>

                           <a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>"> <asp:Label ID="Label3" runat="server" CssClass="auto-style26" Text='<%# Eval("YemekAd") %>' BorderColor="#FFCCFF"></asp:Label></a>
                            </strong></td>
                    </tr>
                    <tr>
                        <td><strong>Malzemeler:</strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>YemekTarifi:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style27"><strong>Ekleme Tarihi:</strong><asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>' CssClass="auto-style29"></asp:Label>
                            &nbsp;- <strong><em>Puan:</em><asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>' CssClass="auto-style28"></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333"></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
      
</asp:Content>


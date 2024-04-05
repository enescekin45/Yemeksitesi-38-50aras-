<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style28 {
            color: #000000;
            background-color: #CCCCCC;
        }
    .auto-style30 {
        text-align: right;
    }
    .auto-style31 {
        font-size: large;
    }
    .auto-style32 {
        text-align: left;
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
        .auto-style35 {
            width: 35px;
        }
        .auto-style36 {
            background-color: #CCCCCC;
        }
        .auto-style39 {
            height: 33px;
        }
        .auto-style40 {
            width: 100%;
            margin-bottom: 0px;
        }
        .auto-style41 {
            font-weight: bold;
        }
        .auto-style42 {
            height: 33px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style28">
        <table class="auto-style27">
            <tr>
                <td class="auto-style35"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style33" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style35"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style34" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style32">YEMEK LSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
    <asp:DataList ID="DataList1" runat="server" Width="448px">
        <ItemTemplate>
            <table class="auto-style27">
                <tr>
                    <td class="auto-style32">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style31" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </td>
                    <td class="auto-style30">
                        <a href='Yemekler.aspx?Yemekid=<%# Eval("Yemekid") %>&islem=sil'>
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="30px" />
                        </a>
                    </td>
                    <td class="auto-style30">
                        <a href='yemekDuzenle.aspx?Yemekid=<%# Eval("Yemekid") %>'>
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/5565956.png" Width="30px" />
                        </a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Panel>
    <asp:panel runat="server" CssClass="auto-style36">
        <asp:Panel ID="Panel4" runat="server" CssClass="auto-style28">
            <table class="auto-style27">
                <tr>
                    <td class="auto-style35"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style33" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                        </strong></td>
                    <td class="auto-style35"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style34" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                        </strong></td>
                    <td class="auto-style32">YEMEK EKLEME</td>
                </tr>
            </table>
        </asp:Panel>
    </asp:panel>
    <asp:panel runat="server">
        <table class="auto-style40">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>YEMEK&nbsp; AD:&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>MALZEMELER:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>YEMEK TARİFİ:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
  
            </tr>
            <tr>
                <td>KATEGORİ:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style39"></td>
                <td class="auto-style42"><strong>
                    <asp:Button ID="btnEkle" runat="server" CssClass="auto-style41" OnClick="btnEkle_Click" Text="Ekle" Width="100px" />
                    </strong></td>
            </tr>
        </table>
    </asp:panel>
</asp:Content>




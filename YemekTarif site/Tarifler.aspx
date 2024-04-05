﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Tarifler.aspx.cs" Inherits="Tarifler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .auto-style32 {
            width: 33px;
        }
        .auto-style31 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style34 {
            width: 38px;
        }
        .auto-style33 {
            font-weight: bold;
            font-size: large;
            margin-left: 0px;
        }
        .auto-style35 {
            width: 100%;
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" style="background-color:#CCCCCC; height:33px;">
        <table class="auto-style24">
            <tr>
                <td class="auto-style32"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style31" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"   />
                    </strong></td>
                <td class="auto-style34"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style33" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"/>
                    </strong></td>
                <td>ONAYSIZ TARİLER LİSTESİ </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px" CssClass="auto-style36" Height="227px">
            <ItemTemplate>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style29">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style28" Text='<%# Eval("TraifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style35">
                           <a href="TarifOnerDetay.aspx?Traifid=<%#Eval("Traifid")%>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/1.png" Width="30px" /></a>
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="background-color:#CCCCCC;margin-top:20px; height:33px;">
        <table class="auto-style24">
            <tr>
               <td class="auto-style32"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style31" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"   />
                    </strong></td>
                <td class="auto-style34"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style33" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"/>
                    </strong></td>
                <td>ONAYLI TARİLER LİSTESİ </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="449px" CssClass="auto-style36" Height="227px">
            <ItemTemplate>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style29">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style28" Text='<%# Eval("TraifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style35">
                           <a href="TarifOnerDetay.aspx?Traifid=<%#Eval("Traifid")%>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/1.png" Width="30px" /></a>
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>


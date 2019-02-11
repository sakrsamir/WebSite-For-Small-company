<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Finish.aspx.cs" Inherits="Finish" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .pAbout{
            font-family:'Arabic Typesetting';
            font-size:xx-large;
            color:green

        }
        @media only screen and (max-width: 780px) {
            .pAbout{
            font-family:'Arabic Typesetting';
            font-size:medium;

        }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-left:5%;margin-right:5%; text-align:center;padding-top:10%;">
        <asp:Label ID="Label1" CssClass="pAbout" runat="server" Text="تم التسجيل بنجاح"></asp:Label>
        <br />
        <br />
        <asp:Image ID="img" runat="server" Height="100" Width="100" />
        <br />
        <br />
        <asp:Label ID="lblName" CssClass="pAbout" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" CssClass="pAbout" runat="server" Text="سيتم التواصل معكم قريبا"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" CssClass="pAbout" runat="server" Text="نتمنى لكم التوفيق"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" CssClass="pAbout" runat="server" Text="جمعية تنمية المجتمع"></asp:Label>
        <br />
        <br />
        <p class="pAbout"><span style="color:green"> للاستفسار : 040/4832673-- 01000909568 -- 01004064989 صندوق بريد /31794</span></p>
    </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="error.aspx.cs" Inherits="error" %>

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
    <div style="margin-left:5%;margin-right:5%; text-align:center;padding-top:30%;">
        <asp:Label ID="Label1" CssClass="pAbout" runat="server" Text="عفوا حدث خطأ ما"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblName" CssClass="pAbout" runat="server">يرجي المحاولة مرة اخري</asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" CssClass="pAbout" runat="server" Text="يجب التأكد من ادخال القيم الصحيحة"></asp:Label>
        <br />
        <br />
        <p class="pAbout"><span style="color:green"> للاستفسار : 040/4832673-- 01000909568 -- 01004064989 صندوق بريد /31794</span></p>
    </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="query.aspx.cs" Inherits="query" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .ma{
            width:80%;
            margin-left:10%;
            margin-right:10%;
            text-align:center;
            padding-top:5%;
            font-family:'Arabic Typesetting';
            font-size:x-large;
        }
        .t{
            direction:rtl;
        }
        @media only screen and (max-width: 780px) {
            .ma {
                width: 80%;
                margin-left: 10%;
                margin-right: 10%;
                text-align: center;
                padding-top: 5%;
                font-family:'Arabic Typesetting';
            font-size:medium;
            }
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="ma">
        
        <asp:TextBox ID="TextBox1" runat="server" Width="25%" CssClass="t"  MaxLength="14" Height="20px" ></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="بحث بالرقم القومى او الهاتف" OnClick="Button1_Click"  />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="address" HeaderText="العنوان" />
                <asp:BoundField DataField="name" HeaderText="إسم الطالب" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </div>
</asp:Content>


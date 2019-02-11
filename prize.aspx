<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="prize.aspx.cs" Inherits="prize" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>

        .main{
            width:100%;
            padding-top:10px;
            text-align:center;
        }
        .pAbout{
            font-family:'Arabic Typesetting';
            font-size:x-large;

        }
        .pAbouth{
            font-family:'Arabic Typesetting';
            font-size:x-large;
            color:red;
            text-align:right;

        }
        @media only screen and (max-width: 780px) {
            .pAbout{
            font-family:'Arabic Typesetting';
            font-size:medium;

        }
            .pAbouth{
            font-family:'Arabic Typesetting';
            font-size:medium;
            color:red;
            text-align:right;

        }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main">
        <%--<img width="80%" height="auto" src="images/1245.png" style="border-radius:50px;" />--%>
        <br />
        
        <span class="pAbouth">المركز الاول </span>
        <span class="pAbout">يحصل المركز الاول على مبغ وقدره 6000جنية مصري</span>
        <br />
        <br />
        <br />
        <br />
        <span class="pAbouth">المركز الثانى </span>
        <span class="pAbout">يحصل المركز الثاني على مبغ وقدره 5000جنية مصري</span>
        <br />
        <br />
        <br />
        <br />
        
        <span class="pAbouth">المركز الثالث </span>
        <span class="pAbout">يحصل المركز الثالث على مبغ وقدره 4500جنية مصري</span>
        <br />
        <br />
        <br />
        <br />
        
        <span class="pAbouth">المركز الرابع </span>
        <span class="pAbout">يحصل المركز الرابع على مبغ وقدره 4000جنية مصري</span>
        <br />
        <br />
        <br />
        <br />
        <span class="pAbouth">المركز الخامس </span>
        <span class="pAbout">يحصل المركز الخامس على مبغ وقدره 3500جنية مصري</span>
        <br />
        <br />
        <br />
        <br />
        <span class="pAbouth">المركز السادس </span>
        <span class="pAbout">يحصل المركز السادس على مبغ وقدره 3000جنية مصري</span>
        <br />
        <br />
        <br />
        <br />
        <span class="pAbouth">المركز السابع </span>
        <span class="pAbout">يحصل المركز السابع على مبغ وقدره 2500جنية مصري</span>
        <br />
        <br />
        <br />
        <br />

        <span class="pAbouth">المركز الثامن </span>
        <span class="pAbout">يحصل المركز الثامن على مبغ وقدره 2000جنية مصري</span>
        <br />
        <br />
        <br />
        <br />
        <span class="pAbouth">المركز التاسع </span>
        <span class="pAbout">يحصل المركز التاسع على مبغ وقدره 1500جنية مصري</span>
        <br />
        <br />
        <br />
        <span class="pAbouth">المركز العاشر </span>
        <span class="pAbout">يحصل المركز العاشر على مبغ وقدره 1000جنية مصري</span>
        <br />
        
    </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="log.aspx.cs" Inherits="log" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
         /*signUp*/
        .sign {
            text-align:center;
            padding-top: 10%;
            margin-left: 20%;
            margin-right: 20%;
            
        }
        .p{
            font-family:'Arabic Typesetting';
            font-size:x-large;
        }
        .input {
            width: 90%;
            font-family: 'Arabic Typesetting';
            font-size: x-large;
        }
        .button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 8px 16px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-family:'Arabic Typesetting';
            font-size:x-large;
            margin: 4px 2px;
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
            cursor: pointer;
        }
        .button1 {
            background-color: white;
            color: black;
            border: 2px solid #4CAF50;
        }

            .button1:hover {
                background-color: #4CAF50;
                color: white;
            }
        @media only screen and (max-width: 780px) {
            /*signUp*/
            .sign {
            text-align:center;
            padding-top: 10%;
            margin-left: 10%;
            margin-right: 10%;
            
        }
            .p{
            font-family:'Arabic Typesetting';
            font-size:medium;
        }
        .input {
            width: 90%;
            font-family: 'Arabic Typesetting';
            font-size: medium;
        }
        .button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 4px 8px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-family:'Arabic Typesetting';
            font-size:medium;
            margin: 4px 2px;
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
            cursor: pointer;
        }
        .button1 {
            background-color: white;
            color: black;
            border: 1px solid #4CAF50;
        }
        }
        @media only screen and (max-width: 450px) {
            /*signUp*/
            .sign {
            text-align:center;
            padding-top: 10%;
            margin-left: 10%;
            margin-right: 10%;
            
        }
            .p{
            font-family:'Arabic Typesetting';
            font-size:small;
        }
        .input {
            width: 50%;
            font-family: 'Arabic Typesetting';
            font-size: small;
        }
        .button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 4px 8px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-family:'Arabic Typesetting';
            font-size:small;
            margin: 4px 2px;
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
            cursor: pointer;
        }
        .button1 {
            background-color: white;
            color: black;
            border: 1px solid #4CAF50;
        }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="sign">
                    
                    <table border="0" dir="rtl" style="text-align:center;width:100%;" >
                        <tr><td>
                            <asp:Label CssClass="p" ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                            </td><td><p class="p">يجب ان تكون الشروط مستوفاه قبل التقديم.</p></td><td></td></tr>
                        <tr><td><p class="p">الاسم بالكامل :</p></td><td>
                            <asp:TextBox ID="txtName" CssClass="input" runat="server"></asp:TextBox></td><td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtName" Display="Dynamic" Font-Bold="True" Font-Size="13pt" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
                        <tr><td><p class="p">الرقم القومي :</p></td><td><asp:TextBox ID="txtNumber" CssClass="input" runat="server" TextMode="Phone" MaxLength="14"></asp:TextBox></td><td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtNumber" Display="Dynamic" Font-Bold="True" Font-Size="13pt" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNumber" ErrorMessage="ارقام فقط" SetFocusOnError="True" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                            </td></tr>
                        <tr><td><p class="p">المركز التابع له :</p></td><td>
                            <asp:DropDownList ID="cityList" CssClass="input" runat="server">
                                <asp:ListItem Value="0">كفر الزيات</asp:ListItem>
                                <asp:ListItem Value="1">السنطة</asp:ListItem>
                                <asp:ListItem Value="2">المحلة الكبرى</asp:ListItem>
                                <asp:ListItem Value="3">بسيون</asp:ListItem>
                                <asp:ListItem Value="4">زفتى</asp:ListItem>
                                <asp:ListItem Value="5">سمنود</asp:ListItem>
                                <asp:ListItem Value="6">طنطا</asp:ListItem>
                                <asp:ListItem Value="7">قطور</asp:ListItem>
                            </asp:DropDownList></td><td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="cityList" Display="Dynamic" Font-Bold="True" Font-Size="13pt" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
                        <tr><td><p class="p">تاريخ الميلاد :</p></td><td>&nbsp;<asp:DropDownList ID="daylist" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>28</asp:ListItem>
                            <asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                            <asp:ListItem>31</asp:ListItem>
                            </asp:DropDownList>
&nbsp;-<asp:DropDownList ID="monlist" runat="server">
                                <asp:ListItem Value="1">يناير</asp:ListItem>
                                <asp:ListItem Value="2">فبراير</asp:ListItem>
                                <asp:ListItem Value="3">مارس</asp:ListItem>
                                <asp:ListItem Value="4">ابريل</asp:ListItem>
                                <asp:ListItem Value="5">مايو</asp:ListItem>
                                <asp:ListItem Value="6">يونية</asp:ListItem>
                                <asp:ListItem Value="7">يوليو</asp:ListItem>
                                <asp:ListItem Value="8">اغسطس</asp:ListItem>
                                <asp:ListItem Value="9">سبتمبر</asp:ListItem>
                                <asp:ListItem Value="10">اكتوبر</asp:ListItem>
                                <asp:ListItem Value="11">نوفمبر</asp:ListItem>
                                <asp:ListItem Value="12">ديسمبر</asp:ListItem>
                            </asp:DropDownList>
&nbsp;-<asp:DropDownList ID="yearlist" runat="server">
                                <asp:ListItem>1987</asp:ListItem>
                                <asp:ListItem>1988</asp:ListItem>
                                <asp:ListItem>1989</asp:ListItem>
                                <asp:ListItem>1990</asp:ListItem>
                                <asp:ListItem>1991</asp:ListItem>
                                <asp:ListItem>1992</asp:ListItem>
                                <asp:ListItem>1993</asp:ListItem>
                                <asp:ListItem>1994</asp:ListItem>
                                <asp:ListItem>1995</asp:ListItem>
                                <asp:ListItem>1996</asp:ListItem>
                                <asp:ListItem>1997</asp:ListItem>
                                <asp:ListItem>1998</asp:ListItem>
                                <asp:ListItem>1999</asp:ListItem>
                                <asp:ListItem>2000</asp:ListItem>
                                <asp:ListItem>2001</asp:ListItem>
                                <asp:ListItem>2002</asp:ListItem>
                                <asp:ListItem>2003</asp:ListItem>
                                <asp:ListItem>2004</asp:ListItem>
                                <asp:ListItem>2005</asp:ListItem>
                                <asp:ListItem>2006</asp:ListItem>
                                <asp:ListItem>2007</asp:ListItem>
                                <asp:ListItem>2008</asp:ListItem>
                                <asp:ListItem>2009</asp:ListItem>
                                <asp:ListItem>2010</asp:ListItem>
                                <asp:ListItem>2011</asp:ListItem>
                                <asp:ListItem>2012</asp:ListItem>
                                <asp:ListItem>2013</asp:ListItem>
                                <asp:ListItem>2014</asp:ListItem>
                                <asp:ListItem>2015</asp:ListItem>
                            </asp:DropDownList>
                            </td><td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="yearlist" Display="Dynamic" Font-Bold="True" Font-Size="13pt" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
                        <tr><td><p class="p">العنوان بالتفصيل :</p></td><td><asp:TextBox ID="txtAddress" CssClass="input" runat="server"></asp:TextBox></td><td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtAddress" Display="Dynamic" Font-Bold="True" Font-Size="13pt" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
                        <tr><td><p class="p">اسم الشيخ :</p></td><td><asp:TextBox ID="txtTeacher" CssClass="input" runat="server"></asp:TextBox></td><td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtTeacher" Display="Dynamic" Font-Bold="True" Font-Size="13pt" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
                        <tr><td><p class="p">رقم الهاتف للمتسابق :</p></td><td><asp:TextBox ID="txtPhone" CssClass="input" runat="server"></asp:TextBox></td><td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="txtPhone" Display="Dynamic" Font-Bold="True" Font-Size="13pt" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhone" ErrorMessage="ارقام فقط" SetFocusOnError="True" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                            </td></tr>
                        <tr><td><p class="p">رقم الهاتف للشيخ :</p></td><td><asp:TextBox ID="txtHphone" CssClass="input" runat="server"></asp:TextBox></td><td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="txtHphone" Display="Dynamic" Font-Bold="True" Font-Size="13pt" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtHphone" ErrorMessage="ارقام فقط" SetFocusOnError="True" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                            </td></tr>
                        <tr><td><p class="p">صورة شخصية :</p></td><td>
                            <asp:FileUpload ID="img" runat="server"  />
                            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                            </td><td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="img" Display="Dynamic" Font-Bold="True" Font-Size="13pt" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
                        <%--<tr><td><p class="p">name</p></td><td><input class="input" type="text" /></td><td>*</td></tr>--%>
                        <tr><td>  </td><td>  </td><td>  </td></tr>
                        <tr><td></td><td><asp:Button runat="server" cssclass="button button1" Text="تقديم" OnClick="Unnamed1_Click"/> </td><td></td></tr>
                    </table>
                    
                </div>
</asp:Content>


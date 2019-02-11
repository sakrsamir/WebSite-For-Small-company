<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>

        .main{
            padding-top:10px;
            width:100%;
           
            text-align:center;
            
        }
        .pAbout{
            font-family:'Arabic Typesetting';
            font-size:x-large;

        }
        @media only screen and (max-width: 780px) {
            .pAbout{
            font-family:'Arabic Typesetting';
            font-size:medium;

        }
        }
         @media only screen and (max-width: 655px) {
            .pAbout{
            font-family:'Arabic Typesetting';
            font-size:small;

        }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main">
        <%--<p class="pAbout"><span style="color:green">إجراءات المسابقة</span></p>--%>
        <p class="pAbout"> توزع الدرجات <span style="color:red">70درجة للحفظ </span><span style="color:blue">15درجة للتلاوة والاداء </span><span style="color:#808080">15درجة للاسئلة الشفوية </span></p>
        <%--<p class="pAbout">يرجي إحضار صورة شخصية مع صورة البطاقة لمن استخرجها او صورة شهادة الميلاد وصورة بطاقة الاب لصغار السن</p>--%>
        <p class="pAbout"><span style="color:green">تنقسم المسابقة لثلاث تصفيات</span></p>
        <p class="pAbout">يتم تحديد ميعاد التصفية لكل بلد بالاتصال التليفونى من الجمعية وعليه يحدد ميعاد التصفية الاولى</p>
        <p class="pAbout"><span style="color:green">التصفية الاولى</span></p>
        <p class="pAbout">يحصل المشترك فى التصفية الاولى ولم يحقق درجة الصعود للتصفية الثانية على الاتى </p>
        <p class="pAbout">من ححق درجة من 70 الى 84 يحصل على مكافاة قدرها 100 جنية فقط</p>
        <p class="pAbout">من حقق درجة اقل من 70 يحصل على مبلغ نظير انتقالاته فقط</p>
        <p class="pAbout">يحصل المحفظ المسئول عن المشتركين ولم يصعد منهم احد للتصفية الثانية مكافاة 100 جنية</p>
        <p class="pAbout"><span style="color:green">التصفية الثانية</span></p>
        <p class="pAbout">من حصل علي 85 درجة فاكثر سيدخل التصفية الثانية</p>
        <p class="pAbout">اذا لم يحقق المشترك الذى صعد الى التصفية الثانية درجة التصفية الاولى والثالثة كناتج المتوسط العام المطلوب للصعود الى التصفية الثالثة والاخيرة يحصل على مكافاة 150 جنية</p>
        <p class="pAbout">يحصل المحفظ المسئول عن المشتركين الذي صعد الى التصفية الثانية ولم يصعد الى الثالثة مكافاة 150ج</p>
        <p class="pAbout"><span style="color:green">التصفية الثالثة</span></p>
        <p class="pAbout">يتم التصفية بين اعلى عشرين درجة من النتائج (المتوسط العام)للتصفيتين الاولى والثانبة ويتم حساب إجمالى التصفيات (الاولى+الثانية+درجات عدد اللجنة فى التصفية الثالثة)</p>
        <p class="pAbout">يتم فرز وإختيار أعلى عشر درجات من إجمالى عشرين مشترك بالتصفية الثالثة والاخيرة وبذلك يتحدد العشرة الفائزين بالمسابقة الكبري</p>
        <p class="pAbout">يحفظ المحفظ المسئول عن المشترك الذى صعد الى التصفية الثالثة ولم يحقق درجة الفائز على 200 جنية. كما يتم مكافاة المراكز من 11 الى 20 مبلغ وقدرة 500 جنية</p>
        <p class="pAbout">يحصل المحفظ المسئول عن المشترك الذى صعد ضمن العشر الاوائل على 500 جنية</p>
        <p class="pAbout"> صغار السن او مكفوفى البصر لهم مكافأة خاصة</p>
        <p class="pAbout"><span style="color:red">لايجوز الجمع بين اكثر من جائزة كما يجوز للفائزين فى الاعوام السابقة دخول مسابقة حفظ المستوى لمتابعة مستواهم</span></p>
        <%--<p class="pAbout"><span style="color:red"></span></p>--%>
        <p class="pAbout"><span style="color:green"> للاستفسار : 040/4832673-- 01000909568 -- 01004064989 صندوق بريد /31794</span></p>
        
    </div>
</asp:Content>


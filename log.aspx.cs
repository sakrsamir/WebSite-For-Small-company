using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class log : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
         if (IsValid&&Path.GetExtension( img.FileName).ToLower()==".jpg")
            {
             int x=SqlHelper.ExcuteNonQuery("insert_student", SqlHelper.createInputParamter("@national_id", System.Data.SqlDbType.BigInt,txtNumber.Text),
                                                                       SqlHelper.createInputParamter("@name", System.Data.SqlDbType.NVarChar, txtName.Text),
                                                                       SqlHelper.createInputParamter("@ch_phone", System.Data.SqlDbType.NVarChar, txtHphone.Text),
                                                                       SqlHelper.createInputParamter("@phone", System.Data.SqlDbType.NVarChar, txtPhone.Text),
                                                                       SqlHelper.createInputParamter("@city", System.Data.SqlDbType.Int,cityList.SelectedValue),
                                                                       SqlHelper.createInputParamter("@year", System.Data.SqlDbType.VarChar, yearlist.SelectedValue),
                                                                       SqlHelper.createInputParamter("@month", System.Data.SqlDbType.VarChar, monlist.SelectedValue),
                                                                       SqlHelper.createInputParamter("@day", System.Data.SqlDbType.VarChar, daylist.SelectedValue),
                                                                       SqlHelper.createInputParamter("@address", System.Data.SqlDbType.NVarChar,txtAddress.Text),
                                                                       SqlHelper.createInputParamter("@chname", System.Data.SqlDbType.NVarChar,txtTeacher.Text));
             string srcimg = Server.MapPath("~/images/" + txtNumber.Text + ".jpg");
                string srcrenderdimg = Server.MapPath("~/admin/images/" + txtNumber.Text + ".jpg");
                if (x>0)
                {
                    
                   img.SaveAs(srcimg);

                    CreateThumbnail(srcimg, srcrenderdimg, 200, 200);
                    File.Delete(srcimg);
                    Response.Redirect("~/Finish.aspx?id=" + txtNumber.Text);
                }
                else
                {
                   Label2.Text = "تم التسجيل من قبل";
                }
                
                

                
                
                
                
            }
            else
            {
                Response.Write("<script>alert('يجب إرفاق صورة '+'jpg')</script>");
               Label1.Text = "يجب إرفاق صورة " + "jpg";
            }
        }
    public static void CreateThumbnail(string FilenameSrc, string Filename, int imgWidth, int imgHeight)
    {
        System.Drawing.Bitmap bmpOut = null;
        Bitmap BMP = new Bitmap(FilenameSrc);
        ImageFormat Format = BMP.RawFormat;
        //HttpContext.Current.Response.ContentType = "image/jpeg";
        decimal Ratio;
        int NewWidth = 0;
        int NewHeight = 0;

        if (BMP.Width < imgWidth && BMP.Height < imgHeight)
        {
            BMP.Save(Filename);
        }
        else if (BMP.Width > imgWidth)
        {
            Ratio = (decimal)imgWidth / BMP.Width;
            Decimal tempNewWidth = Ratio * BMP.Width;
            Decimal tempNewHeight = Ratio * BMP.Height;
            NewHeight = (int)tempNewHeight;
            NewWidth = (int)tempNewWidth;
        }
        else if (BMP.Width > imgWidth)
        {
            Ratio = (decimal)imgHeight / BMP.Height;
            Decimal tempNewWidth = Ratio * BMP.Width;
            Decimal tempNewHeight = Ratio * BMP.Height;
            NewHeight = (int)tempNewHeight;
            NewWidth = (int)tempNewWidth;
        }
        else
        {
            NewHeight = imgHeight;
            NewWidth = imgWidth;
        }
        bmpOut = new Bitmap(NewWidth, NewHeight);
        Graphics g = Graphics.FromImage(bmpOut);
        g.DrawImage(BMP, 0, 0, NewWidth, NewHeight);
        bmpOut.Save(Filename);
        BMP.Dispose();
        bmpOut.Dispose();
    }
    
}
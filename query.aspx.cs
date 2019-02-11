using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class query : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            using (DataSet ds = SqlHelper.GetDataSet("return_all_query", "x"))
            {
                GridView1.DataSource = ds.Tables["x"];
                GridView1.DataBind();
            }
        }
        
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (DataSet ds = SqlHelper.GetDataSet("searchByany", "x", SqlHelper.createInputParamter("@keyword", SqlDbType.VarChar, TextBox1.Text)))
        {
            GridView1.DataSource = ds.Tables["x"];
            GridView1.DataBind();
        }
    }
}
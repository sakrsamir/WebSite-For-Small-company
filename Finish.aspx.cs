using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finish : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (DataSet sd = SqlHelper.GetDataSet("select_studentByID_index", "x", SqlHelper.createInputParamter("@national_id", System.Data.SqlDbType.BigInt, Request.QueryString["id"])))
        {
            img.ImageUrl = sd.Tables["X"].Rows[0]["path"].ToString();
            lblName.Text = sd.Tables["X"].Rows[0]["name"].ToString();
        }
    }
}
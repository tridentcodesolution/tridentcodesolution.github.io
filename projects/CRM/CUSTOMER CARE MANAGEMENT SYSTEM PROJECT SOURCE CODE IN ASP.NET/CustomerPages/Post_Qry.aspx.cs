using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class CustomerPages_Post_Qry : System.Web.UI.Page
{
    BLPostQry b;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Label8.Visible = false;
            b = new BLPostQry();
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }

    }
    protected void btnSubmitQry_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet i;       
            try
            {
                b.CustomerName = TextBox1.Text.Trim();
                b.EMail = TextBox3.Text.Trim();
                b.ContactNo = TextBox4.Text.Trim();
                b.QueryText = TextBox5.Text.Trim();
                i = b.In_Dat();
                
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            if (i != null)
                Response.Redirect("~/default.aspx?qrid=" + i.Tables[0].Rows[0][0].ToString());
               
        

    }
}

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

public partial class CustomerPages_CCHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/CustomerPages/Post_Qry.aspx");
    }
    protected void lnkPostQry_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/CustomerPages/Post_Qry.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/CustomerPages/Qry_status.aspx");
    }
    protected void lblQrySt_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/CustomerPages/Qry_status.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/CustomerPages/Qry_Soln.aspx");
    }
    protected void lblPrevSol_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/CustomerPages/Qry_Soln.aspx");
    }
}

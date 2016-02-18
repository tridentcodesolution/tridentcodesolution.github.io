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

public partial class HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
   
    protected void lnkPostQry_Click(object sender, EventArgs e)
    {
       
            Response.Redirect("CustomerPages/Post_Qry.aspx");
       
        
    }
    protected void lblQrySt_Click(object sender, EventArgs e)
    {
       
            Response.Redirect("CustomerPages/Qry_status.aspx");
       
        
    }
    protected void lblPrevSol_Click(object sender, EventArgs e)
    {
      
            Response.Redirect("CustomerPages\\Qry_Soln.aspx");
       /* }  try
        {
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }*/
        
    }


    protected void SP_LeftPane1_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("CustomerPages/Post_Qry.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("CustomerPages/Qry_status.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("CustomerPages\\Qry_Soln.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("CusCare/CCHome.aspx");
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("CusCare/CCHome.aspx");
    }
}

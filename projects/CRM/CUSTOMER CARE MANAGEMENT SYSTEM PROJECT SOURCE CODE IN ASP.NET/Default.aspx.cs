using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string s=Convert.ToString(Request.QueryString["qrid"]);
        if(s!=null)
         {
                    Label1.Text = "Your QueryId is: " + s;
                }
                else
                    Label1.Text = "Error in adding";
    }
    protected void Headerl1_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("homepage.aspx");
    }
}

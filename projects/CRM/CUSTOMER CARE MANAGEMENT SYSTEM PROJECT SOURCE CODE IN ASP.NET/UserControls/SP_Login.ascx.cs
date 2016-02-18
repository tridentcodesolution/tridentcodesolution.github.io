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

public partial class UserControls_SP_Login : System.Web.UI.UserControl
{
    BLLogin b;
    string s;
    string[] t;
    //		SqlConnection cn;
    //		SqlDataReader dr;
    //		SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            b = new BLLogin();
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            b.UserName = TextBox1.Text.Trim();
            b.Password = TextBox2.Text.Trim();
            s = b.LG_Call();
            Session["E_Id"] = s;
            string str = Convert.ToString(Session["E_Id"]);  
        }
        catch (NullReferenceException ex)
        {
            Response.Write(ex.Message);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        if (s != null)
            {
                t = s.Split('*');
                FormsAuthentication.RedirectFromLoginPage(s, false);
                if (t[1] == "qm")
                    Response.Redirect("CusMgr/Cus_Qry_Mgr.aspx");
                else
                    Response.Redirect("CusCare/CCHome.aspx");
            }
            else
                Label4.Text = "Invalid User";
       

    }

}

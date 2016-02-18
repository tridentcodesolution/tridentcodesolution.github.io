using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for BLLogin
/// </summary>
public class BLLogin
{
    clsDALayer d;
    string U_Name, P_Word;
    public BLLogin()
	{
        d = new clsDALayer();
	}
    public string UserName
    {
        get { return U_Name; }
        set { U_Name = value; }
    }
    public string Password
    {
        get { return P_Word; }
        set { P_Word = value; }
    }
    public string LG_Call()
    {
        try
        {
            string i = d.LoginCheck(U_Name, P_Word);
            return i;
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }



}

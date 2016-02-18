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
/// Summary description for BLPrevSoln
/// </summary>
public class BLPrevSoln
{
    DataSet ds;
    clsDALayer d;
    string s = ConfigurationManager.AppSettings["ConStr"];
	public BLPrevSoln()
	{
        d = new clsDALayer();  
	}
    public DataSet Ex_DRL(string u)
    {
        try
        {
            ds = d.RunDRLCommand(s, u, "tblqrydetails");
            return ds;
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    public int Ex_DML(string u)
    {
        try
        {
            int b = d.RunDMLCommand(s, u, "tblqrydetails");
            return b;
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }


}

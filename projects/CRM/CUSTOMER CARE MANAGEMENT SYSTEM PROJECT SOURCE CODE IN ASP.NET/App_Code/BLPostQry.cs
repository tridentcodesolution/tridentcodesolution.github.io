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
/// Summary description for BLPostQry
/// </summary>
public class BLPostQry
{
    string s = ConfigurationManager.AppSettings["ConStr"];
    clsDALayer d;
    string Cus_Name, EMl, QryTxt,Con_No;
	public BLPostQry()
	{
        d = new clsDALayer();
	}
    public string CustomerName
    {
        get { return Cus_Name; }
        set { Cus_Name = value; }
    }
    public string EMail
    {
        get { return EMl; }
        set { EMl = value; }
    }
    public string QueryText
    {
        get { return QryTxt; }
        set { QryTxt = value; }
    }
    public string ContactNo
    {
        get { return Con_No; }
        set { Con_No = value; }
    }
    public DataSet In_Dat()
    {
        try
        {
            string t, u;
            DateTime dt = System.DateTime.Now;
            t = "insert into tblqrydetails(Cus_Name,Cus_Eml_Id,Cus_Con_No,Qry_Text,Qry_Dt) values('" + Cus_Name + "','" + EMl + "','" + Con_No + "','" + QryTxt + "','" + dt + "')";
            u = "select Qry_Id from tblqrydetails where Cus_Name='" + Cus_Name + "' and Cus_Eml_Id='" + EMl + "' and Cus_Con_No='" + Con_No + "' and Qry_Text LIKE '" + QryTxt + "' and Qry_Dt='" + dt + "'";
            int i = d.RunDMLCommand(s, t, "tblqrydetails");
            DataSet j = d.RunDRLCommand(s, u, "tblqrydetails");
            return j;
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }

    }

}

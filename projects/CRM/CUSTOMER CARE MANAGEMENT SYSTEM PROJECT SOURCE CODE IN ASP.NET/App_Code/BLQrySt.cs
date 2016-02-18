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
/// Summary description for BLQrySt
/// </summary>
public class BLQrySt
{
    long Qry_Id;
    clsDALayer d;
    public long QueryId
    {
        get { return Qry_Id; }
        set { Qry_Id = value; }
    }
	public BLQrySt()
	{
		d=new clsDALayer();
	}
    public string Gt_St()
    {
        try
        {
            string pt = d.GetQueryStatus(Qry_Id);
            return pt;
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

}

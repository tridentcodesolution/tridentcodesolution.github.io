using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// Summary description for clsCon
/// </summary>
public static class clsCon
{
    public static SqlConnection cn;
	static clsCon()
    {
        try
        {
            cn = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    public static void OpenConnection()
    {
        try
        {
            cn.Open();
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }

    }
    public static void CloseConnection()
    {
        try
        {
            cn.Close();
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }

    }


	
}

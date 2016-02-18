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
/// Summary description for clsDALayer
/// </summary>
public class clsDALayer
{ 
    SqlCommand cmd;
    DataSet ds;
    SqlDataAdapter da;
    SqlDataReader dr;
    string stt;
	public clsDALayer()
	{

	}
    public string LoginCheck(string un, string pw)
    {
        try
        {
            clsCon.OpenConnection();
            cmd = new SqlCommand("chkloginSP", clsCon.cn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter uid = new SqlParameter("@uid", SqlDbType.VarChar);
            uid.Direction = ParameterDirection.Input;
            uid.Value = un;
            cmd.Parameters.Add(uid);
            SqlParameter pwd = new SqlParameter("@pwd", SqlDbType.VarChar);
            pwd.Direction = ParameterDirection.Input;
            pwd.Value = pw;
            cmd.Parameters.Add(pwd);
            dr = cmd.ExecuteReader();
            if (dr.Read())
                stt = dr[0].ToString() + "*" + dr[1].ToString();
            return stt;
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
        finally
        {
            clsCon.CloseConnection();        
        }
    }
    public string GetQueryStatus(long q)
    {
        try
        {
            clsCon.OpenConnection();
            cmd = new SqlCommand("sp_Qry_Status", clsCon.cn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter qid = new SqlParameter("@qid", SqlDbType.VarChar);
            qid.Direction = ParameterDirection.Input;
            qid.Value = q;
            cmd.Parameters.Add(qid);
            dr = cmd.ExecuteReader();
            if (dr.Read())
                return Convert.ToString(dr[0] + "*" + dr[1]);
            else
                return null;
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
        finally
        {
            clsCon.CloseConnection();
        }
    }
    public DataSet RunDRLCommand(string ConStr, string DRLStat, string TblName)
    {
        try
        {
            ds = new DataSet();
            da = new SqlDataAdapter(DRLStat, clsCon.cn);
            da.Fill(ds);
            return ds;
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    public int RunDMLCommand(string ConStr, string DMLStat, string TblName)
    {
        try
        {
            clsCon.OpenConnection();
            cmd = new SqlCommand(DMLStat, clsCon.cn);
            int i = cmd.ExecuteNonQuery();
            return i;
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
        finally
        {
            clsCon.CloseConnection();
        }
    }	


}

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
using System.Data.OleDb;

public partial class UserControls_Headerl : System.Web.UI.UserControl
{
    //OleDbConnection cn;
    //OleDbCommand cmd;
   // OleDbDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        //cn = new OleDbConnection("provider=microsoft.jet.oledb.4.0;data source=J:/FinalProjects/OnlineCC_SP/Resources/SP_OnlineCC.mdb");
        //cn.Open();
        //cmd = new OleDbCommand("select * from HHeaderLinks", cn);
        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("~/Header.xml"));
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }
    public void getdata(object o, DataListCommandEventArgs e)
    {

        Response.Redirect(e.CommandArgument.ToString());


    }

}

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

public partial class CustomerPages_Qry_Soln : System.Web.UI.Page
{
    BLPrevSoln b;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    public void BindData(string s)
    {
        try
        {
            ds = b.Ex_DRL(s);
            if (ds != null)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
                Label1.Text = " No Records";

        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    protected void GridView1_Paging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            string s = "select Qry_Text,Qry_Sol from tblqrydetails where Qry_Sol is not null and Qry_sol not like '' and deptcode='" + DropDownList1.SelectedItem.Text.Trim() + "'";
            GridView1.PageIndex = e.NewPageIndex;
            BindData(s);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }	

    }
    protected void SIC_DDL1(object sender, EventArgs e)
    {
        try
        {
            b = new BLPrevSoln();
            string s = "select Qry_Text,Qry_Sol from tblqrydetails where Qry_Sol is not null and Qry_sol not like '' and deptcode='" + DropDownList1.SelectedItem.Text.Trim() + "'";
            BindData(s);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
}

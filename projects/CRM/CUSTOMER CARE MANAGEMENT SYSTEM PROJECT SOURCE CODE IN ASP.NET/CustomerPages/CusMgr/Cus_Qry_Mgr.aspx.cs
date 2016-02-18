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


public partial class CusMgr_Cus_Qry_Mgr : System.Web.UI.Page
{
    //int i;
    string s = "select Qry_Text,Qry_Dt,DeptCode from tblqrydetails where DeptCode is null";
    BLPrevSoln b;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        b = new BLPrevSoln();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       ds=b.Ex_DRL(s);
       GridView1.DataSource = ds;
       GridView1.DataBind();    
    }   
    public void GetData(string s)
		{
			try
			{
				ds=b.Ex_DRL(s);
				GridView1.DataSource=ds;
				GridView1.DataBind();
			}
			catch(Exception ex)
			{
				throw new ArgumentException(ex.Message);
			}		
		}

    public int UpdateData(string s)
    {
        try
        {
            int i = b.Ex_DML(s);
            return i;
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    protected void GridView1_Edit(object sender, GridViewEditEventArgs e)
    {
        try
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetData(s);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }

    }

    protected void GridView1_Update(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            int i = e.RowIndex;
             string sDept=((DropDownList)GridView1.Rows[i].FindControl("DropDownList1")).SelectedItem.Text.Trim();
            string sQry = ((Label)GridView1.Rows[i].FindControl("Label6")).Text.Trim();
            string u = "update tblqrydetails set deptcode='" + sDept + "' where Qry_Text like '" + sQry + "'";
            i = UpdateData(u);
            GridView1.EditIndex = -1;
            GetData(s);
            if (i != 0)
                Label8.Text = "Department Allocated";
            else
                Label8.Text = "Could Not Allocate";
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }		

    }
    protected void GridView1_Cancel(object sender, GridViewCancelEditEventArgs e)
    {
        try
        {
            GridView1.EditIndex = -1;
            GetData(s);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }

    }
    protected void GridView1_Sort(object sender, GridViewSortEventArgs e)
    {
        try
        {
            string s = "select Qry_Text,Qry_dt,deptcode from tblqrydetails where Qry_Sol is not null order by " + e.SortExpression;
            GetData(s);
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
            GridView1.PageIndex = e.NewPageIndex;
            GetData(s);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }		
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/SignOut.aspx");
    }
}

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

public partial class CusCare_CCHome : System.Web.UI.Page
{
    DataSet ds;
    BLPrevSoln b;
    int i;
    string[] t;
    protected void Page_Load(object sender, EventArgs e)
    {
        b = new BLPrevSoln();
    }
    public void BindData()
    {
        string s = "select Qry_Text,Qry_Sol from tblqrydetails where Qry_Sol is not null and Qry_sol not like ''";
            ds = b.Ex_DRL(s);
            DataGrid2.DataSource = ds;
            DataGrid2.DataBind();
        }
     public void BindData1()
    {
        string s = Convert.ToString(Session["E_Id"]), p;
        t = s.Split('-');
        p = "select Qry_Text,Qry_Sol from tblqrydetails where Qry_Sol is null and deptcode='" + t[0] + "'";
        ds = b.Ex_DRL(p);
        DataGrid1.DataSource = ds;
        DataGrid1.DataBind();     
    }
   
   
    public void GetData(string s)
    {
        try
        {
            ds = b.Ex_DRL(s);
            DataGrid1.DataSource = ds;
            DataGrid1.DataBind();
        }
        catch (Exception ex)
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

    public void Edit(object o, DataGridCommandEventArgs e)
    {
        try
        {
            string s = Convert.ToString(Session["E_Id"]), p;
            t = s.Split('-');
            p = "select Qry_Text,Qry_sol from tblqrydetails where Qry_Sol is null and deptcode='" + t[0] + "'";
            DataGrid1.EditItemIndex = e.Item.ItemIndex;
            GetData(p);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    public void Cancel(object o, DataGridCommandEventArgs e)
    {
        try
        {
             string s = "select Qry_Text,Qry_Dt,Deptcode from tblqrydetails where Qry_Sol is not null";
            DataGrid1.EditItemIndex = -1;
            GetData(s);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    public void paging(object o, DataGridPageChangedEventArgs e)
    {

        try
        {
            string s = "select Qry_Text,Qry_Sol from tblqrydetails where Qry_Sol is not null";
            DataGrid2.CurrentPageIndex = e.NewPageIndex;
            ds = b.Ex_DRL(s);
            DataGrid2.DataSource = ds;
            DataGrid2.DataBind();
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }

    }
    public void Update(object o, DataGridCommandEventArgs e)
    {
        try//mDept=(DropDownList)e.Item.FindControl("ddlDept");
        {
            TextBox mSoln;
            DateTime dt = System.DateTime.Now;
            mSoln = (TextBox)e.Item.FindControl("txt1");
            string sss = ((Label)e.Item.FindControl("lbl1")).Text.Trim();
            string u = "update tblqrydetails set Qry_Sol='" + mSoln.Text.Trim() + "',sol_dt='" + dt + "',Qry_st=1 where Qry_Text like '" + sss + "'";
            if (mSoln.Text.Trim() != "")
                i = UpdateData(u);
            else
                Label1.Text = "No Blanks";
            DataGrid1.EditItemIndex = -1;
            string st = Convert.ToString(Session["E_Id"]);
            t = st.Split('-');
            string s = "select Qry_Text,Qry_sol from tblqrydetails where Qry_Sol is null and deptcode='" + t[0] + "'";
            GetData(s);
            if (i != 0)
                Label1.Text = "Query Answered";
            else
                Label1.Text = "Could Not Answer";
        }
        
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    protected void DataGrid2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {

        BindData1();
        
       /* catch try
        {}(Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }*/
    }
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        try
        {

            BindData();
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
    protected void page(object source, DataGridPageChangedEventArgs e)
    {
        DataGrid1.CurrentPageIndex=e.NewPageIndex;
        BindData1();
    }
    protected void LinkButton3_Click1(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/SignOut.aspx");
    }
}

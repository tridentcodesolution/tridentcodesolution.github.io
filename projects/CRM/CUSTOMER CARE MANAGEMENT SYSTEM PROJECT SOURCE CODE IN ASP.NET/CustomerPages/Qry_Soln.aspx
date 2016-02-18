<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Qry_Soln.aspx.cs" Inherits="CustomerPages_Qry_Soln" %>

<%@ Register Src="../UserControls/SP_LeftPane.ascx" TagName="SP_LeftPane" TagPrefix="uc2" %>

<%@ Register Src="../UserControls/Headerl.ascx" TagName="Headerl" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="background-color:#f5fffa" >
        <table>
            <tr>
                <td colspan="3">
                </td>
            </tr>
            <tr>
                <td rowspan="1" >
                </td>
                <td valign="top">
                    <asp:Label ID="Label2" runat="server" Style="position: relative" Text="Select Department:                                                            "
                        Width="542px"></asp:Label></td>
                <td >
                </td>
            </tr>
            <tr>
                <td rowspan="1" >
                </td>
                <td valign="top">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="DDl_dept"
                        DataTextField="DeptCode" DataValueField="DeptCode" OnSelectedIndexChanged="SIC_DDL1"
                        Style="position: relative">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList><asp:SqlDataSource ID="DDl_dept" runat="server" ConnectionString="<%$ ConnectionStrings:SP_OnlineCCConnectionString %>"
                        SelectCommand="SELECT [DeptCode] FROM [tblDept]"></asp:SqlDataSource>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td rowspan="2" >
                </td>
                <td valign="top">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px"
                        CellPadding="3" PageSize="3" Style="position: static" GridLines="Vertical" OnPageIndexChanging="GridView1_Paging" Width="544px">
                        <FooterStyle BackColor="Lavender" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="Lavender" ForeColor="Black" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#C0C0FF" Font-Bold="True" ForeColor="Black" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <AlternatingRowStyle BackColor="GhostWhite" />
                    </asp:GridView>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Style="position: static"></asp:Label></td>
                <td>
                </td>
            </tr>
        </table>
       </div>
    
</asp:Content>
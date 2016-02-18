<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Cus_Qry_Mgr.aspx.cs" Inherits="CusMgr_Cus_Qry_Mgr" %>

<%@ Register Src="../UserControls/Headerl.ascx" TagName="Headerl" TagPrefix="uc1" %>

<%@ Register Src="../UserControls/SP_LeftPane.ascx" TagName="SP_LeftPane" TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-color:#f5fffa" >

        <table>
            <tr>
                <td colspan="3" align="right">
                   <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Small" ForeColor="#000040"
                        OnClick="LinkButton2_Click" Style="left: -12px; position: relative; top: -7px">Sign Out</asp:LinkButton>
                   
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" BackColor="#C0C0FF"  Font-Bold="True" Style="position: static"
                        Text="Allot Department" Width="360px"></asp:Label>
                    </td>
                <td>
                </td>
            </tr>
            <tr>
                <td >
                </td>
                <td colspan="2" >
                    <asp:Label ID="Label1" runat="server" Style="position: static" Text="To allot the department, click "></asp:Label>
                    <asp:LinkButton ID="LinkButton1" runat="server" Style="position: static" OnClick="LinkButton1_Click">here</asp:LinkButton></td>
            </tr>
            <tr>
                <td  rowspan="3">
                    </td>
                <td >
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical"
                        PageSize="2" Style="position: static" Width="310px" AllowPaging="True" AllowSorting="True" OnRowCancelingEdit="GridView1_Cancel" OnRowEditing="GridView1_Edit" OnRowUpdating="GridView1_Update" OnSorting="GridView1_Sort" OnPageIndexChanging="GridView1_Paging">
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <Columns>
                            <asp:TemplateField HeaderText="Query ">
                                <EditItemTemplate>
                                    <p class="MsoNormal" style="margin: 0in 0in 0pt">
                                        &nbsp;<asp:Label ID="Label6" Text='<%#DataBinder.Eval(Container.DataItem,"Qry_Text")%>' runat="server" Style="position: static" ></asp:Label></p>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <p class="MsoNormal" style="margin: 0in 0in 0pt">
                                        <asp:Label ID="Label5" Text='<%#DataBinder.Eval(Container.DataItem,"Qry_Text")%>'  runat="server" Style="position: static" ></asp:Label>&nbsp;</p>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Query Date">
                                <EditItemTemplate>
                                    <span style="font-size: 12pt; font-family: 'Times New Roman'">
                                        </span>
                                    <asp:Label ID="Label7" Text='<%#DataBinder.Eval(Container.DataItem,"Qry_dt")%>'  runat="server" Style="position: static" ></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <span style="font-size: 12pt; font-family: 'Times New Roman'">
                                        </span>&nbsp;<asp:Label ID="Label2" Text='<%#DataBinder.Eval(Container.DataItem,"Qry_dt")%>' runat="server" Style="position: static" ></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Department">
                                <EditItemTemplate>
                                    <p class="MsoNormal" style="margin: 0in 0in 0pt">
                                        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="dept1" DataTextField="DeptCode"
                                            DataValueField="DeptCode" Style="position: static">
                                        </asp:DropDownList></p>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" Text='<%#DataBinder.Eval(Container.DataItem,"deptcode")%>' runat="server" Style="position: static" ></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowEditButton="True" />
                        </Columns>
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#C0C0FF" Font-Bold="True" ForeColor="Black" />
                        <AlternatingRowStyle BackColor="Gainsboro" />
                    </asp:GridView>
                   
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="Label8" runat="server" Style="position: static"></asp:Label></td>
                <td >
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="dept1" runat="server" ConnectionString="<%$ ConnectionStrings:SP_OnlineCCConnectionString %>"
                        SelectCommand="SELECT [DeptCode] FROM [tblDept]"></asp:SqlDataSource>
                </td>
                <td>
                </td>
            </tr>
        </table>
    </div>
    
</asp:Content>
<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="CCHome.aspx.cs" Inherits="CusCare_CCHome" %>

<%@ Register Src="../UserControls/Headerl.ascx" TagName="Headerl" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-color:#f5fffa" >

<table>
            <tr>
                <td colspan="3" align="right">
                    <uc1:Headerl ID="Headerl1" runat="server" />
                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Small" ForeColor="#000040"
                        OnClick="LinkButton3_Click1" Style="left: -12px; position: relative; top: -7px">Sign Out</asp:LinkButton></td>
            </tr>
            <tr>
                <td rowspan="2">
                    
                </td>
                <td colspan="2" valign="top">
                    <table style="position: relative">
                        <tr>
                            <td>
                    <asp:Label ID="Label4" runat="server" BackColor="#C0C0FF" Font-Bold="True" Style="position: relative"
                        Text="My Tasks" Width="472px"></asp:Label></td>
                            <td >
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                    <asp:Label ID="Label2" runat="server" Style="position: relative" Text="To get your tasks, click "
                        Width="142px"></asp:Label><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1" Style="position: relative">here</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td >
                    <asp:DataGrid ID="DataGrid1" runat="server" OnEditCommand="Edit" OnCancelCommand="Cancel" OnUpdateCommand="Update" Style="position: relative" Width="470px" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AllowPaging="True" OnPageIndexChanged="page">
                          <Columns>
                           
                            <asp:TemplateColumn HeaderText="Query">
                          
									<ItemTemplate>
										<%#DataBinder.Eval(Container.DataItem, "Qry_Text")%>
									</ItemTemplate>
                            <EditItemTemplate>
										<asp:Label ID="lbl1" Text='<%#DataBinder.Eval(Container.DataItem,"Qry_Text")%>' Runat="server"></asp:Label>
									</EditItemTemplate></asp:TemplateColumn>
									
									
                            <asp:TemplateColumn HeaderText="Solution">                          
									
									<ItemTemplate>
										<%#DataBinder.Eval(Container.DataItem,"Qry_Sol")%>
									</ItemTemplate>
									
							
                            <EditItemTemplate>
                            <asp:TextBox ID="txt1" Text='<%#DataBinder.Eval(Container.DataItem,"Qry_Sol")%>' runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            </asp:TemplateColumn> 
                            <asp:EditCommandColumn CancelText="Cancel" EditText="Edit" UpdateText="Update"></asp:EditCommandColumn>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" Mode="NumericPages" />
                        <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <HeaderStyle BackColor="Lavender" Font-Bold="True" ForeColor="Black" />
                        <AlternatingItemStyle BackColor="GhostWhite" />
                       
                    </asp:DataGrid>
                   <asp:Label ID="Label1" runat="server" ForeColor="Blue" Style="position: relative; left: 2px; top: 0px;"></asp:Label></td>
                            <td >
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table >
                        <tr>
                            <td>
                    <asp:Label ID="Label5" runat="server" BackColor="#C0C0FF" Font-Bold="True" Style="position: relative; left: 1px; top: 0px;"
                        Text="Previous Solutions" Width="465px"></asp:Label></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                    <asp:Label ID="Label3" runat="server" Style="position: relative" Text="To get previous tasks, click "
                        Width="172px"></asp:Label><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click1" Style="position: relative; left: 0px;">here</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td>
                    <asp:DataGrid ID="DataGrid2" runat="server" OnPageIndexChanged="paging" OnSelectedIndexChanged="DataGrid2_SelectedIndexChanged"
                        Style="position: relative" Width="470px" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                        <FooterStyle BackColor="#FFE0C0" ForeColor="Black" />
                        <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="Lavender" ForeColor="Black" HorizontalAlign="Center" Mode="NumericPages" />
                        <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <HeaderStyle BackColor="Lavender" Font-Bold="True" ForeColor="Black" />
                        <AlternatingItemStyle BackColor="#E0E0E0" />
                    </asp:DataGrid></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        </div>
    
</asp:Content>
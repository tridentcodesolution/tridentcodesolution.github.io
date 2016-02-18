<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<%@ Register Src="UserControls/SP_LeftPane.ascx" TagName="SP_LeftPane" TagPrefix="uc2" %>
<%@ Register Src="UserControls/Headerl.ascx" TagName="Headerl" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div  style="background-color:#f5fffa">
        <table >
            <tr>
                <td colspan="9">
                    
                </td>
            </tr>
            <tr>
                <td rowspan="2"  valign="top">
                    
                </td>
                <td colspan="5" valign="top">
                    
                    <table >
                        <tr>
                            <td colspan="2" >
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" Style="left: 2px;
                                    position: relative; top: 1px" Text="Welcome...."></asp:Label></td>
                            <td >
                            </td>
                            <td >
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <asp:Label ID="Label3" runat="server" Font-Bold="False" ForeColor="#000040" Height="72px"
                                    Style="left: 1px; position: relative; top: 2px" Text="Welcome to the World of Ultimate Customer Satisfaction. It provides you with the different  features such as Post-a-Query, Know-Query-Status, Previous-Solutions with user friendly interface. Please have a look at those features.....    "
                                    Width="606px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td  valign="bottom">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Style="left: 3px; position: relative;
                                    top: 0px" Text="Customer"></asp:Label></td>
                            <td  valign="bottom">
                            </td>
                            <td  valign="bottom">
                            </td>
                            <td  valign="bottom">
                            </td>
                        </tr>
                        <tr>
                            <td >
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="84px" ImageUrl="~/Resources/smd5.jpg"
                                    OnClick="ImageButton1_Click" Style="position: relative" ToolTip="Post a Query"
                                    Width="142px" /></td>
                            <td >
                                <asp:ImageButton ID="ImageButton2" runat="server" Height="84px" ImageUrl="~/Resources/graphics.jpg"
                                    OnClick="ImageButton2_Click" Style="left: 0px; position: relative; top: -2px"
                                    ToolTip="Query Status" Width="142px" /></td>
                            <td >
                                <asp:ImageButton ID="ImageButton3" runat="server" Height="84px" ImageUrl="~/Resources/pf3.jpg"
                                    OnClick="ImageButton3_Click" Style="position: relative" ToolTip="Previous Solutions"
                                    Width="141px" /></td>
                            <td >
                            </td>
                        </tr>
                        <tr>
                            <td >
                    <asp:LinkButton ID="lnkPostQry" runat="server" Font-Bold="False" Font-Size="Medium"
                        OnClick="lnkPostQry_Click" Style="position: relative" Width="102px">Post A Query </asp:LinkButton></td>
                            <td>
                    <asp:LinkButton ID="lblQrySt" runat="server" Font-Bold="False" Font-Size="Medium"
                        OnClick="lblQrySt_Click" Style="position: relative" Width="114px">Query Status</asp:LinkButton></td>
                            <td >
                    <asp:LinkButton ID="lblPrevSol" runat="server" Font-Bold="False" Font-Size="Medium"
                        OnClick="lblPrevSol_Click" Style="position: relative; left: 2px; top: 0px;" Width="135px">Previous Solutions</asp:LinkButton></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td  valign="bottom">
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Style="left: 3px; position: relative;
                                    top: 0px" Text="Emp"></asp:Label></td>
                            <td  valign="bottom">
                            </td>
                            <td  valign="bottom">
                            </td>
                            <td  valign="bottom">
                            </td>
                        </tr>
                        <tr>
                            <td >
                                <asp:ImageButton ID="ImageButton4" runat="server" Height="84px" ImageUrl="~/Resources/marketing.jpg"
                                    OnClick="ImageButton4_Click" Style="position: relative; left: -1px; top: -1px;" ToolTip="Emp Login" Width="142px" /></td>
                            <td >
                            </td>
                            <td >
                            </td>
                            <td >
                            </td>
                        </tr>
                        <tr>
                            <td >
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1" Style="position: relative">Login</asp:LinkButton></td>
                            <td >
                            </td>
                            <td >
                            </td>
                            <td >
                            </td>
                        </tr>
                    </table>
                </td>
                <td colspan="1"  valign="top">
                </td>
                <td colspan="1"  valign="top">
                </td>
                <td colspan="1"  valign="top">
                </td>
            </tr>
            <tr>
                <td >
                </td>
                <td >
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Style="position: relative; left: 266px; top: 251px;" Text="Emp"></asp:Label></td>
                <td >
                </td>
                <td >
                </td>
                <td >
                </td>
                <td >
                </td>
                <td >
                </td>
                <td >
                </td>
            </tr>
        </table>
        </div>
   </asp:Content>
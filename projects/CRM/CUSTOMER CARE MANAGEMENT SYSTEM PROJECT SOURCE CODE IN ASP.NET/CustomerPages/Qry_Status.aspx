<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Qry_Status.aspx.cs" Inherits="CustomerPages_Qry_Status" %>

<%@ Register Src="../UserControls/SP_LeftPane.ascx" TagName="SP_LeftPane" TagPrefix="uc2" %>

<%@ Register Src="../UserControls/Headerl.ascx" TagName="Headerl" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-color:#f5fffa" >

        <table >
            <tr>
                <td colspan="3">
                    </td>
            </tr>
            <tr>
                <td rowspan="2">
                   </td>
                <td  valign="top">
                </td>
                <td >
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <table >
                        <tr>
                            <td colspan="5">
                                <asp:Label ID="Label1" runat="server" BackColor="#C0C0FF" Font-Bold="True" Style="position: static"
                                    Text="Query Status" Width="211px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td >
                                <asp:Label ID="Label3" runat="server" Style="position: static" Text="QueryId" Width="46px"></asp:Label></td>
                            <td >
                                <asp:TextBox ID="TextBox1" runat="server" Style="position: static"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"
                                    Style="position: static" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>&nbsp;
                            </td>
                            <td >
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1"
                                    ErrorMessage="Type a Lesser Value" MaximumValue="429496729" MinimumValue="0" Style="position: relative; left: -5px; top: -8px;" Display="Dynamic" Type="Integer" Width="1px">*</asp:RangeValidator></td>
                            <td >
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Integers Only"
                                    Style="position: relative; left: -1px; top: -9px;" Width="82px" ControlToValidate="TextBox1" Operator="DataTypeCheck" Type="Integer" Display="Dynamic"></asp:CompareValidator></td>
                        </tr>
                        <tr>
                            <td >
                            </td>
                            <td align="right" >
                                <asp:Button ID="Button1" runat="server" Style="position: static" Text="Submit" OnClick="Button1_Click1" /></td>
                            <td >
                            </td>
                            <td >
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td align="left" >
                                <asp:Label ID="Label2" runat="server" Style="position: relative" Width="153px"></asp:Label></td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td >
                            </td>
                        </tr>
                        <tr>
                            <td align="right" colspan="2" rowspan="3">                              
                                <table >
                                    <tr>
                                        <td  valign="top">
                                            <asp:Label ID="Label4" runat="server" Style="position: relative" Text="Qn :"></asp:Label></td>
                                        <td align="left" >
                                            <asp:Label ID="Label8" runat="server" Style="position: relative"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            <asp:Label ID="Label7" runat="server" Style="position: relative" Text="Ans :"></asp:Label></td>
                                        <td align="left">
                                            <asp:Label ID="Label9" runat="server" Style="position: relative"></asp:Label></td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" colspan="2">
                                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="False" Font-Italic="False"
                                    Font-Size="Smaller" ForeColor="#000040" OnClick="LinkButton1_Click" Style="position: relative"
                                    Width="83px">Back To Home</asp:LinkButton></td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                </td>
            </tr>
        </table>
    
    </div>
    
</asp:Content>
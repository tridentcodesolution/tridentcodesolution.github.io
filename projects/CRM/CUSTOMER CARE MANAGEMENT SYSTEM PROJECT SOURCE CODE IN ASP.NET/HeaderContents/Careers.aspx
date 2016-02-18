<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Careers.aspx.cs" Inherits="HeaderContents_Careers" %>

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
                <td >
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" Style="left: 2px;
                        position: relative; top: 1px" Text="Careers"></asp:Label></td>
                <td >
                </td>
            </tr>
            <tr>
                <td rowspan="2" >
                    </td>
                <td  valign="top">
                    <asp:Label ID="Label5" runat="server" Font-Bold="False" ForeColor="#000040" Height="13px"
                        Style="left: 0px; position: relative; top: 1px" Text="Please contact the nearest offices to get the details of the requirements in our company"
                        Width="606px"></asp:Label></td>
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
    
    </div>
    </asp:Content>

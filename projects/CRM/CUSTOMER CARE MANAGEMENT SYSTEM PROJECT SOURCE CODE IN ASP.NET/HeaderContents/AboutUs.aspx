<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="HomePageContents_AboutUs" %>

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
                <td rowspan="1">
                </td>
                <td valign="top">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" Style="left: 2px;
                        position: relative; top: 1px" Text="About Us"></asp:Label></td>
                <td >
                </td>
            </tr>
            <tr>
                <td rowspan="2" >
                   </td>
                <td valign="top">
                    <asp:Label ID="Label3" runat="server" Font-Bold="False" ForeColor="#000040" Height="72px"
                        Style="left: 0px; position: relative; top: 0px" Text='We are the company into various domains such as manufacturing, Distribution network, software development and online customer care."The World of Ultimate Customer Satisfaction" is our tag in the industry . The site provides a customer with the different  features such as Post-a-Query, Know-Query-Status, Previous-Solutions with user friendly interface.'
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
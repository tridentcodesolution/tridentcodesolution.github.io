<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Post_Qry.aspx.cs" Inherits="CustomerPages_Post_Qry" %>

<%@ Register Src="../UserControls/SP_LeftPane.ascx" TagName="SP_LeftPane" TagPrefix="uc2" %>

<%@ Register Src="../UserControls/Headerl.ascx" TagName="Headerl" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                   
    <div style="background-color:#f5fffa" >
        <table >
            <tr>
                <td colspan="3" align="right">
                  </td>
            </tr>
            <tr>
                <td>
                    </td>
                <td >
                    <table style="position: static">
                        <tr>
                            <td colspan="5" >
                                <asp:Label ID="Label2" runat="server" BackColor="#C0C0FF" Font-Bold="True" Font-Size="X-Large"
                                    Style="position: static" Text="Post a Query Here" Width="332px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Style="position: static" Text="Customer Name"
                                    Width="105px"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Style="position: static"></asp:TextBox></td>
                            <td>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                    ErrorMessage="RequiredFieldValidator" Style="position: static">*</asp:RequiredFieldValidator></td>
                            <td>
                                </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Style="position: static" Text="EmailId"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Style="position: static"></asp:TextBox></td>
                            <td >
                                As:sam@me.com</td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3"
                                    ErrorMessage="RequiredFieldValidator" Style="position: static">*</asp:RequiredFieldValidator></td>
                            <td>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3"
                                    ErrorMessage="Invalid Entry" Style="position: static" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    Width="78px"></asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Style="position: static" Text="Contact No"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" Style="position: static"></asp:TextBox></td>
                            <td >
                            </td>
                            <td >
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4"
                                    ErrorMessage="RequiredFieldValidator" Style="position: static">*</asp:RequiredFieldValidator></td>
                            <td >
                                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox4"
                                    ErrorMessage="CompareValidator" Operator="DataTypeCheck" Style="position: relative"
                                    Type="Integer" Width="82px">Only Integers</asp:CompareValidator></td>
                        </tr>
                        <tr>
                            <td  valign="top">
                                <asp:Label ID="Label6" runat="server" Style="position: static" Text="Query"></asp:Label></td>
                            <td colspan="2" valign="top">
                                <asp:TextBox ID="TextBox5" runat="server" Height="77px" Style="position: static"
                                    TextMode="MultiLine" Width="251px"></asp:TextBox></td>
                            <td valign="top">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5"
                                    ErrorMessage="RequiredFieldValidator" Style="position: static">*</asp:RequiredFieldValidator></td>
                            <td valign="top">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                </td>
                            <td colspan="1" style="height: 21px; width: 133px;" align="right">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="position: static"
                                    Text="Submit" /></td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" >
                                <asp:Label ID="Label7" runat="server" ForeColor="Blue" Style="position: static"></asp:Label>
                                </td>
                            <td colspan="1" style="height: 21px; width: 133px;">
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                <asp:Label ID="Label8" runat="server" ForeColor="Blue" Style="position: static">Please Note The Query Id Displayed For Future Reference</asp:Label></td>
                        </tr>
                    </table>
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
        </table>
        </div>
    
</asp:Content>
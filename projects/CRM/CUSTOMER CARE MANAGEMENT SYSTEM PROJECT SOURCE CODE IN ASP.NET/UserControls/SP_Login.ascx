<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SP_Login.ascx.cs" Inherits="UserControls_SP_Login" %>
<table>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label3" runat="server" BackColor="#C0C0FF" Font-Bold="True" Style="position: static"
                Text="Login Here" Width="260px"></asp:Label></td>
        <td colspan="1">
        </td>
    </tr>
    <tr>
        <td >
            <asp:Label ID="Label1" runat="server" Style="position: static" Text="UserName"></asp:Label></td>
        <td >
            <asp:TextBox ID="TextBox1" runat="server" Style="position: static" Width="157px"></asp:TextBox></td>
        <td >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                ErrorMessage="Enter Username" Style="position: static"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td >
            <asp:Label ID="Label2" runat="server" Style="position: static" Text="Password"></asp:Label></td>
        <td >
            <asp:TextBox ID="TextBox2" runat="server" Style="position: static" TextMode="Password" Width="156px"></asp:TextBox></td>
        <td >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                ErrorMessage="Enter Password" Style="position: static"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td >
            <asp:Label ID="Label4" runat="server" ForeColor="Red" Style="position: static"></asp:Label></td>
        <td align="left" colspan="2">
            
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="position: static"
                Text="Login" BackColor="Silver" />
            </td>
    </tr>
    <tr>
        <td>
        </td>
        <td  align="right">
        </td>
        <td >
        </td>
    </tr>
</table>

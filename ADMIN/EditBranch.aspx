<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page/AdminMp.Master" AutoEventWireup="true" CodeBehind="EditBranch.aspx.cs" Inherits="WebApplication1.ADMIN.EditBranch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        margin-left: 410px;
        margin-top: 32px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style1" DataKeyNames="BId" DataSourceID="SqlDataSource1" GridLines="Horizontal">
    <AlternatingRowStyle BackColor="#F7F7F7" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="BId" HeaderText="BId" ReadOnly="True" SortExpression="BId" />
        <asp:BoundField DataField="BName" HeaderText="BName" SortExpression="BName" />
        <asp:BoundField DataField="BAddress" HeaderText="BAddress" SortExpression="BAddress" />
        <asp:BoundField DataField="BPhone" HeaderText="BPhone" SortExpression="BPhone" />
        <asp:BoundField DataField="NEmp" HeaderText="NEmp" SortExpression="NEmp" />
    </Columns>
    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    <SortedAscendingCellStyle BackColor="#F4F4FD" />
    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
    <SortedDescendingCellStyle BackColor="#D8D8F0" />
    <SortedDescendingHeaderStyle BackColor="#3E3277" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Branch] WHERE [BId] = @BId" InsertCommand="INSERT INTO [Branch] ([BId], [BName], [BAddress], [BPhone], [NEmp]) VALUES (@BId, @BName, @BAddress, @BPhone, @NEmp)" SelectCommand="SELECT * FROM [Branch]" UpdateCommand="UPDATE [Branch] SET [BName] = @BName, [BAddress] = @BAddress, [BPhone] = @BPhone, [NEmp] = @NEmp WHERE [BId] = @BId">
    <DeleteParameters>
        <asp:Parameter Name="BId" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="BId" Type="Int32" />
        <asp:Parameter Name="BName" Type="String" />
        <asp:Parameter Name="BAddress" Type="String" />
        <asp:Parameter Name="BPhone" Type="Int64" />
        <asp:Parameter Name="NEmp" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="BName" Type="String" />
        <asp:Parameter Name="BAddress" Type="String" />
        <asp:Parameter Name="BPhone" Type="Int64" />
        <asp:Parameter Name="NEmp" Type="Int32" />
        <asp:Parameter Name="BId" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

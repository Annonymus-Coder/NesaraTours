<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page/AdminMp.Master" AutoEventWireup="true" CodeBehind="ManagePackage.aspx.cs" Inherits="WebApplication1.ADMIN.ManagePackage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
            <asp:BoundField DataField="PFrom" HeaderText="PFrom" SortExpression="PFrom" />
            <asp:BoundField DataField="PTo" HeaderText="PTo" SortExpression="PTo" />
            <asp:BoundField DataField="EFood" HeaderText="EFood" SortExpression="EFood" />
            <asp:BoundField DataField="EAcco" HeaderText="EAcco" SortExpression="EAcco" />
            <asp:BoundField DataField="ETrain" HeaderText="ETrain" SortExpression="ETrain" />
            <asp:BoundField DataField="EFlight" HeaderText="EFlight" SortExpression="EFlight" />
            <asp:BoundField DataField="EThree" HeaderText="EThree" SortExpression="EThree" />
            <asp:BoundField DataField="EFive" HeaderText="EFive" SortExpression="EFive" />
            <asp:BoundField DataField="EMini" HeaderText="EMini" SortExpression="EMini" />
            <asp:BoundField DataField="ESuv" HeaderText="ESuv" SortExpression="ESuv" />
            <asp:BoundField DataField="ELuxury" HeaderText="ELuxury" SortExpression="ELuxury" />
            <asp:BoundField DataField="NDays" HeaderText="NDays" SortExpression="NDays" />
            <asp:BoundField DataField="NNight" HeaderText="NNight" SortExpression="NNight" />
            <asp:BoundField DataField="path" HeaderText="path" SortExpression="path" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>


<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Package]"></asp:SqlDataSource>


</asp:Content>

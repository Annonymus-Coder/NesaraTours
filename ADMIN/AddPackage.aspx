<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page/AdminMp.Master" AutoEventWireup="true" CodeBehind="AddPackage.aspx.cs" Inherits="WebApplication1.ADMIN.AddPackage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #divr {
            background-color: whitesmoke;
            border-bottom-left-radius: 40px;
            border-top-right-radius: 40px;
            width: 406px;
            height: 775px;
            margin-left: 435px;
            margin-top: 50px;
            text-align: center;
            color: darkblue;
            font-size: 28px;
        }

        .Input {
            border-left: 2px inset midnightblue;
            border-right: 2px inset navy;
            border-top: 2px inset indigo;
            border-bottom: 2px inset blueviolet;
            width: 325px;
            height: 23px;
            margin-left: 21px;
            margin-top: 20px;
            margin-right: 8px;
            border-radius: 15px;
            text-align: center;
        }

        #Label1 {
            font: 11PX;
        }

        .auto-style1 {
            margin-left: 35px;
        }

        .auto-style2 {
            margin-left: 37px;
        }

        .Btn {
            margin-left: 55px;
            margin-top: 30px;
            background-color: blueviolet;
            border-radius: 5px;
            font-size: medium;
            text-align: center;
            border-left-color: lime;
            border-right-color: aqua;
            width: 100px;
        }
    </style>

    <div id="divr">
        <asp:Label ID="l1" runat="server" Text="Add Package"> </asp:Label>
        <asp:TextBox ID="id" CssClass="Input" runat="server" placeholder="Enter Package ID" type="Number"></asp:TextBox>
        <asp:TextBox ID="Name" CssClass="Input" type="Text" runat="server" placeholder="Enter Package name" ></asp:TextBox>
        <asp:TextBox ID="from" CssClass="Input" type="Text" runat="server" placeholder="From"></asp:TextBox>
        <asp:TextBox ID="to" CssClass="Input" type="Text" runat="server" placeholder="To"></asp:TextBox>
        <asp:TextBox ID="food" CssClass="Input" type="Number" runat="server" placeholder="Enter Expendeture for Food "></asp:TextBox>
        <asp:TextBox ID="acco" CssClass="Input" type="Number" runat="server" placeholder="Enter Expenditure for Accommodation"></asp:TextBox>
        <asp:TextBox ID="train" CssClass="Input" type="Number" runat="server" placeholder="Enter Fare for Train"></asp:TextBox>
        <asp:TextBox ID="flight" CssClass="Input" type="Number" runat="server" placeholder="Enter Farre for Flight"></asp:TextBox>
        <asp:TextBox ID="three" CssClass="Input" type="Number" runat="server" placeholder="Enter Fare for 3 Star Hotel"></asp:TextBox>
        <asp:TextBox ID="five" CssClass="Input" type="Number" runat="server" placeholder="Enter Fare for 5 Star Hotel"></asp:TextBox>
        <asp:TextBox ID="mini" CssClass="Input" type="Number" runat="server" placeholder="Enter Fare for Mini Cars"></asp:TextBox>
        <asp:TextBox ID="suv" CssClass="Input" type="Number" runat="server" placeholder="Enter Fare for SUV Cars"></asp:TextBox>
        <asp:TextBox ID="luxury" CssClass="Input" type="Number" runat="server" placeholder="Enter Fare for Luxury Cars"></asp:TextBox>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Select Number of Days" Font-Size="Medium"></asp:Label>

        <asp:DropDownList ID="Days" runat="server" CssClass="auto-style1" >
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Select Number of night" Font-Size="Medium"></asp:Label>

        <asp:DropDownList ID="night" runat="server" CssClass="auto-style2" AppendDataBoundItems="True" >
            <asp:ListItem Selected="True">1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
        </asp:DropDownList>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" CssClass="Btn" runat="server" Text="Submit" OnClick="Button1_Click1" />
    </div>
</asp:Content>

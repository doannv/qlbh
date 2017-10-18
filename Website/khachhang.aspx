<%@ Page Title="Khách hàng" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="khachhang.aspx.cs" Inherits="khachhang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="MaKH" DataSourceID="SqlDataSource4" Width="181px">
        <EditItemTemplate>
            MaKH:
            <asp:Label ID="MaKHLabel1" runat="server" Text='<%# Eval("MaKH") %>' />
            <br />
            TenKH:
            <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            SDT:
            <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            MaKH:
            <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
            <br />
            TenKH:
            <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            SDT:
            <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MaKH:
            <asp:Label ID="MaKHLabel" runat="server" Text='<%# Eval("MaKH") %>' />
            <br />
            TenKH:
            <asp:Label ID="TenKHLabel" runat="server" Text='<%# Bind("TenKH") %>' />
            <br />
            email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
            <br />
            SDT:
            <asp:Label ID="SDTLabel" runat="server" Text='<%# Bind("SDT") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([MaKH], [TenKH], [email], [SDT]) VALUES (@MaKH, @TenKH, @email, @SDT)" SelectCommand="SELECT [MaKH], [TenKH], [email], [SDT] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [email] = @email, [SDT] = @SDT WHERE [MaKH] = @MaKH">
        <DeleteParameters>
            <asp:Parameter Name="MaKH" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaKH" Type="Int32" />
            <asp:Parameter Name="TenKH" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="SDT" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenKH" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="SDT" Type="Int32" />
            <asp:Parameter Name="MaKH" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=ADMIN-PC\SQLEXPRESS;Initial Catalog=QLBH;Integrated Security=True" DeleteCommand="DELETE FROM [KhachHang] WHERE [maKH] = @maKH" InsertCommand="INSERT INTO [KhachHang] ([maKH], [TenKH], [email]) VALUES (@maKH, @TenKH, @email)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [maKH], [TenKH], [email] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [email] = @email WHERE [maKH] = @maKH">
        <DeleteParameters>
            <asp:Parameter Name="maKH" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="maKH" Type="Int32" />
            <asp:Parameter Name="TenKH" Type="String" />
            <asp:Parameter Name="email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenKH" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="maKH" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=admin-PC\SQLEXPRESS;Initial Catalog=QLBH;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [maKH], [TenKH], [email] FROM [KhachHang]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=QLBH;Integrated Security=True" DeleteCommand="DELETE FROM [KhachHang] WHERE [maKH] = @maKH" InsertCommand="INSERT INTO [KhachHang] ([maKH], [TenKH], [email], [SDT]) VALUES (@maKH, @TenKH, @email, @SDT)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [maKH], [TenKH], [email], [SDT] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [email] = @email, [SDT] = @SDT WHERE [maKH] = @maKH">
        <DeleteParameters>
            <asp:Parameter Name="maKH" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="maKH" Type="Int32" />
            <asp:Parameter Name="TenKH" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="SDT" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenKH" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="SDT" Type="String" />
            <asp:Parameter Name="maKH" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>


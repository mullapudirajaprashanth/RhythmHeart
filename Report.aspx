<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
      <div class="container">
        <a class="navbar-brand" runat="server" href="~/Index">Rhythm</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" runat="server" href="~/Index">Index</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" runat="server" href="~/Home">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" runat="server" href="~/AdminLogin">Admin Logout</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
<div style="margin-top:50px;">

    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="dropdownstatus" DataTextField="Status" DataValueField="Status">
    </asp:DropDownList><br />
    <asp:SqlDataSource ID="dropdownstatus" runat="server" ConnectionString="<%$ ConnectionStrings:2018_675_z1804496ConnectionString %>" SelectCommand="SELECT * FROM [Status]"></asp:SqlDataSource>
    <br />

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Feedback_ID" DataSourceID="OpenTickets" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="Feedback_ID" HeaderText="Feedback_ID" SortExpression="Feedback_ID" InsertVisible="False" ReadOnly="True" />
        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
        <asp:BoundField DataField="Issue" HeaderText="Issue" SortExpression="Issue" />
        <asp:BoundField DataField="User_email" HeaderText="User_email" SortExpression="User_email" />
        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
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
<asp:SqlDataSource ID="OpenTickets" runat="server" ConnectionString="<%$ ConnectionStrings:2018_675_z1804496ConnectionString %>" SelectCommand="SELECT [Feedback_ID], [Type], [Issue], [User_email], [Status] FROM [Rhythm_Feedback] WHERE ([Status] = @Status)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList2" Name="Status" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
    <br />
    <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="Feedback_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" OnItemUpdated="FormView1_ItemUpdated">
        <EditItemTemplate>
            Feedback_ID:
            <asp:Label ID="Feedback_IDLabel1" runat="server" Text='<%# Eval("Feedback_ID") %>' />
            <br />
            User_Id:
            <asp:TextBox ID="User_IdTextBox" runat="server" Text='<%# Bind("User_Id") %>' />
            <br />
            Type:
            <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
            <br />
            Issue:
            <asp:TextBox ID="IssueTextBox" runat="server" Text='<%# Bind("Issue") %>' />
            <br />
            User_email:
            <asp:TextBox ID="User_emailTextBox" runat="server" Text='<%# Bind("User_email") %>' />
            <br />
            Status:
            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            User_Id:
            <asp:TextBox ID="User_IdTextBox" runat="server" Text='<%# Bind("User_Id") %>' />
            <br />
            Type:
            <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
            <br />
            Issue:
            <asp:TextBox ID="IssueTextBox" runat="server" Text='<%# Bind("Issue") %>' />
            <br />
            User_email:
            <asp:TextBox ID="User_emailTextBox" runat="server" Text='<%# Bind("User_email") %>' />
            <br />
            Status:
            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Feedback_ID:
            <asp:Label ID="Feedback_IDLabel" runat="server" Text='<%# Eval("Feedback_ID") %>' />
            <br />
            User_Id:
            <asp:Label ID="User_IdLabel" runat="server" Text='<%# Bind("User_Id") %>' />
            <br />
            Type:
            <asp:Label ID="TypeLabel" runat="server" Text='<%# Bind("Type") %>' />
            <br />
            Issue:
            <asp:Label ID="IssueLabel" runat="server" Text='<%# Bind("Issue") %>' />
            <br />
            User_email:
            <asp:Label ID="User_emailLabel" runat="server" Text='<%# Bind("User_email") %>' />
            <br />
            Status:
            <asp:Label ID="StatusLabel" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:2018_675_z1804496ConnectionString %>" DeleteCommand="DELETE FROM [Rhythm_Feedback] WHERE [Feedback_ID] = @original_Feedback_ID AND (([User_Id] = @original_User_Id) OR ([User_Id] IS NULL AND @original_User_Id IS NULL)) AND [Type] = @original_Type AND [Issue] = @original_Issue AND [User_email] = @original_User_email AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))" InsertCommand="INSERT INTO [Rhythm_Feedback] ([User_Id], [Type], [Issue], [User_email], [Status]) VALUES (@User_Id, @Type, @Issue, @User_email, @Status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Rhythm_Feedback] WHERE ([Feedback_ID] = @Feedback_ID)" UpdateCommand="UPDATE [Rhythm_Feedback] SET [User_Id] = @User_Id, [Type] = @Type, [Issue] = @Issue, [User_email] = @User_email, [Status] = @Status WHERE [Feedback_ID] = @original_Feedback_ID AND (([User_Id] = @original_User_Id) OR ([User_Id] IS NULL AND @original_User_Id IS NULL)) AND [Type] = @original_Type AND [Issue] = @original_Issue AND [User_email] = @original_User_email AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Feedback_ID" Type="Int32" />
            <asp:Parameter Name="original_User_Id" Type="Int32" />
            <asp:Parameter Name="original_Type" Type="String" />
            <asp:Parameter Name="original_Issue" Type="String" />
            <asp:Parameter Name="original_User_email" Type="String" />
            <asp:Parameter Name="original_Status" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="User_Id" Type="Int32" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Issue" Type="String" />
            <asp:Parameter Name="User_email" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="Feedback_ID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="User_Id" Type="Int32" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Issue" Type="String" />
            <asp:Parameter Name="User_email" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="original_Feedback_ID" Type="Int32" />
            <asp:Parameter Name="original_User_Id" Type="Int32" />
            <asp:Parameter Name="original_Type" Type="String" />
            <asp:Parameter Name="original_Issue" Type="String" />
            <asp:Parameter Name="original_User_email" Type="String" />
            <asp:Parameter Name="original_Status" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>




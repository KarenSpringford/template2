<%@ Page Title="Course Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CourseDetails.aspx.cs" Inherits="Template2.CourseDetails" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <h1>Course Details</h1>
                <br />
                <div class="form-group">
                    <label class="control-label" for="CourseIDTextBox">Course ID</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="CourseIDTextBox" ReadOnly="false" Enabled="false" required="false"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="TitleTextBox">Course Title</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="TitleTextBox" placeholder="Title" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="CreditsTextBox">Credits</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="CreditsTextBox" placeholder="Avaialble Credits" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="DepartmentIDTextBox">Department ID</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="DepartmentIDTextBox" placeholder="Department ID" required="true"></asp:TextBox>
                </div>
                <div class="text-right">
                    <asp:Button Text="Cancel" ID="CancelButton" CssClass="btn-danger btn-lg" runat="server" UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click"/>
                    <asp:Button Text="Submit" ID="SaveButton" CssClass="btn-primary btn-lg" runat="server" OnClick="SaveButton_Click"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

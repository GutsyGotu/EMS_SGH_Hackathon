<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="TenderApply.aspx.cs" Inherits="EmployeeCRM.TenderApply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="about-us-section section-padding">
        <asp:Label ID="lblId" Visible="false" runat="server" Text=""></asp:Label>
        <div class="container">
            <div class="alert alert-success mb-2" role="alert" id="divAlert" runat="server" visible="false">
            </div>
            <div class="section-header text-center">
                <h3><span>Apply to </span>Tender</h3>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <asp:DetailsView AutoGenerateRows="false" ID="dvDetails" runat="server">
                        <Fields>
                            <asp:BoundField HeaderStyle-Font-Bold="true" HeaderStyle-Width="20%" HeaderText="Heading" DataField="Heading" />
                            <asp:BoundField HeaderStyle-Font-Bold="true" HeaderStyle-Width="20%" HeaderText="Description" DataField="Description" />
                            <asp:BoundField HeaderStyle-Font-Bold="true" HeaderStyle-Width="20%" HeaderText="About Price" DataField="AboutPrice" />
                            <asp:BoundField HeaderStyle-Font-Bold="true" HeaderStyle-Width="20%" HeaderText="LastDate" DataField="LastDate" DataFormatString="{0:dd/MM/yyyy}" />
                            <asp:BoundField HeaderStyle-Font-Bold="true" HeaderStyle-Width="20%" HeaderText="Link" DataField="Link" />
                        </Fields>
                    </asp:DetailsView>
                </div>
            </div>
            <div class="section-header text-center">
                <h3><span>Enter </span>Details</h3>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label>*Name</label>
                        <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>*Mobile</label>
                        <asp:TextBox ID="txtMobile" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Email</label>
                        <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label>Address</label>
                        <asp:TextBox ID="txtAddress" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label>Website</label>
                        <asp:TextBox ID="txtWebsite" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label>Firm</label>
                        <asp:TextBox ID="txtFirm" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label>About</label>
                        <asp:TextBox ID="txtAbout" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label>*Proposal</label>
                        <asp:TextBox ID="txtProposal" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="form-actions">
                <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                <asp:Button ID="btnCancel" CssClass="btn btn-primary" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
            </div>
        </div>
    </section>
</asp:Content>

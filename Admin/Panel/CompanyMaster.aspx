<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Panel/Admin.Master" AutoEventWireup="true" CodeBehind="CompanyMaster.aspx.cs" Inherits="EmployeeCRM.Admin.Panel.CompanyMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="basic-form-layouts">
        <div class="row match-height">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">Company Master</h4>
                        <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                    </div>
                    <div class="alert alert-deep-orange mb-2" role="alert" id="divAlert" runat="server" visible="false">
                    </div>
                    <asp:Label ID="lblId" Visible="false" runat="server" Text=""></asp:Label>
                    <div class="card-body collapse in">
                        <div class="card-block">
                            <div class="form">
                                <div class="form-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Company Name</label>
                                                <asp:TextBox ID="txtCompanyName" CssClass="form-control" placeholder="Company Name" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <%--<label>Company Logo</label>--%>
                                                <asp:FileUpload ID="fuploadLogo" Visible="false" runat="server" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Contact Person 1</label>
                                                <asp:TextBox ID="txtContactPerson1" CssClass="form-control" placeholder="Contact Person 1" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Contact Person 2</label>
                                                <asp:TextBox ID="txtContactPerson2" CssClass="form-control" placeholder="Contact Person 2" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Mobile 1</label>
                                                <asp:TextBox ID="txtMobile1" CssClass="form-control" placeholder="Mobile 1" TextMode="Number" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Mobile 2</label>
                                                <asp:TextBox ID="txtMobile2" CssClass="form-control" placeholder="Mobile 2" TextMode="Number" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Email 1</label>
                                                <asp:TextBox ID="txtEmail1" CssClass="form-control" placeholder="Email 1" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Email 2</label>
                                                <asp:TextBox ID="txtEmail2" CssClass="form-control" placeholder="Email 2" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Address</label>
                                                <asp:TextBox ID="txtAddress" CssClass="form-control" placeholder="Address" TextMode="MultiLine" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>GST No</label>
                                                <asp:TextBox ID="txtGSTNo" CssClass="form-control" placeholder="GST No." runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-actions">
                                        <asp:Button ID="btnSubmit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" runat="server" Text="Submit" />
                                        <asp:Button ID="btnUpdate" Visible="false" CssClass="btn btn-primary" OnClick="btnUpdate_Click" runat="server" Text="Update" />
                                        <asp:Button ID="btnDelete" Visible="false" CssClass="btn btn-primary" OnClick="btnDelete_Click" runat="server" Text="Delete" />
                                        <asp:Button ID="btnCancel" CssClass="btn btn-primary" OnClick="btnCancel_Click" runat="server" Text="Cancel" />
                                    </div>

                                    <div>
                                        <asp:GridView ID="gvCompany" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" CssClass="table table-responsive"
                                            OnRowCommand="gvCompany_RowCommand" OnPageIndexChanging="gvCompany_PageIndexChanging"
                                            OnSorting="gvCompany_Sorting" runat="server" Width="100%">
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:Button CssClass="btn btn-warning" ID="btnSelect" CommandArgument='<% #Eval("CompanyId") %>' CommandName="S" runat="server" Text="Select" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField HeaderText="CompanyName" DataField="CompanyName" SortExpression="CompanyName" />
                                                <asp:BoundField HeaderText="Contact Person1" DataField="ContactPerson1" SortExpression="ContactPerson1" />
                                                <asp:BoundField HeaderText="Mobile1" DataField="Mobile1" SortExpression="Mobile1" />
                                                <asp:BoundField HeaderText="Email1" DataField="Email1" SortExpression="Email1" />
                                                <asp:BoundField HeaderText="Address" DataField="Address" SortExpression="Address" />
                                                <asp:BoundField HeaderText="GSTNo" DataField="GSTNo" SortExpression="GSTNo" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

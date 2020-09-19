<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Panel/Panel.Master" AutoEventWireup="true" CodeBehind="UserType.aspx.cs" Inherits="EmployeeCRM.Login.Panel.UserType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="basic-form-layouts">
        <div class="row match-height">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">User Type</h4>
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
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>User Type</label>
                                                <asp:TextBox ID="txtUserType" CssClass="form-control" placeholder="User Type" runat="server"></asp:TextBox>
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
                                        <asp:GridView ID="gvUserType" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" CssClass="table table-hover table-bordered"
                                            OnRowCommand="gvUserType_RowCommand" OnPageIndexChanging="gvUserType_PageIndexChanging"
                                            OnSorting="gvUserType_Sorting"  runat="server" Width="100%">
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton CssClass="btn-link" ID="btnSelect" CommandArgument='<% #Eval("UserTypeId") %>' CommandName="S" runat="server" Text="Select" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField HeaderText="User Type" DataField="UserType" SortExpression="UserType" />
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

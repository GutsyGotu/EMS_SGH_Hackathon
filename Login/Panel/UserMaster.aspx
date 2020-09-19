<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Panel/Panel.Master" AutoEventWireup="true" CodeBehind="UserMaster.aspx.cs" Inherits="EmployeeCRM.Login.Panel.UserMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function printDiv(divName) {
            var printContents = document.getElementById(divName).innerHTML;
            var originalContents = document.body.innerHTML;
            document.body.innerHTML = printContents;
            window.print();
            document.body.innerHTML = originalContents;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="basic-form-layouts">
        <div class="row match-height">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">User Master</h4>
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
                                                <label>Email Id</label>
                                                <asp:TextBox ID="txtUserName" CssClass="form-control" placeholder="Email Id" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Password</label>
                                                <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>User Type</label>
                                                <asp:DropDownList ID="ddlUserTypeId" CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Full Name</label>
                                                <asp:TextBox ID="txtFullName" CssClass="form-control" placeholder="Full Name" runat="server"></asp:TextBox>
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
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Address</label>
                                                <asp:TextBox ID="txtAddress" CssClass="form-control" placeholder="Address" TextMode="MultiLine" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Reporting To</label>
                                                <asp:DropDownList ID="ddlReportingTo" CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Is Active</label>
                                                <asp:CheckBox ID="chkIsActive" runat="server" Checked="true" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-actions">

                                        <asp:Button ID="btnSubmit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" runat="server" Text="Submit" />
                                        <asp:Button ID="btnUpdate" Visible="false" CssClass="btn btn-primary" OnClick="btnUpdate_Click" runat="server" Text="Update" />
                                        <asp:Button ID="btnDelete" Visible="false" CssClass="btn btn-primary" OnClick="btnDelete_Click" runat="server" Text="Delete" />
                                        <asp:Button ID="btnCancel" CssClass="btn btn-primary" OnClick="btnCancel_Click" runat="server" Text="Cancel" />
                                    </div>
                                    <div class="table-responsive">
                                        <div style="text-align: right;" class="col-md-3 offset-md-6">
                                            <asp:TextBox ID="txtSearch" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <div style="text-align: right;" class="col-md-3">
                                            <asp:Button ID="btnSearch" CssClass="btn btn-outline-blue" OnClick="btnSearch_Click" runat="server" Text="Search" />
                                            <asp:Button ID="btnExport" runat="server" Text="Export" CssClass="btn btn-outline-success" OnClick="btnExport_Click" />
                                            <button class="btn btn-outline-warning" onclick="printDiv('div')">Print</button>
                                        </div>
                                        <div class="col-md-12">
                                            <br />
                                        </div>
                                        <div class="table-responsive" id="div">
                                            <asp:GridView ID="gvUserMaster" AutoGenerateColumns="false" CssClass="table table-hover table-bordered"
                                                AllowPaging="true" OnPageIndexChanging="gvUserMaster_PageIndexChanging" OnRowCommand="gvUserMaster_RowCommand"
                                                OnSorting="gvUserMaster_Sorting" AllowSorting="true" runat="server">
                                                <Columns>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="btnSelect" CssClass="btn-link" runat="server" Text="Select" CommandName="S" CommandArgument='<% #Eval("UserId") %>' />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField HeaderText="User Name" DataField="UserName" SortExpression="UserName" />
                                                    <asp:BoundField HeaderText="Password" DataField="Password" SortExpression="Password" />
                                                    <asp:BoundField HeaderText="User Type" DataField="UserTypeName" SortExpression="UserTypeName" />
                                                    <asp:BoundField HeaderText="Mobile" DataField="Mobile1" SortExpression="Mobile1" />
                                                    <asp:BoundField HeaderText="Full Name" DataField="FullName" SortExpression="FullName" />
                                                    <asp:BoundField HeaderText="Reporting To" DataField="ReportingToName" SortExpression="ReportingToName" />
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
        </div>
    </section>
</asp:Content>

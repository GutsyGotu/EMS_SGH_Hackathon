<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Panel/Panel.Master" AutoEventWireup="true" CodeBehind="ClientMaster.aspx.cs" Inherits="EmployeeCRM.Login.Panel.ClientMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
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
                        <h4 class="card-title" id="basic-layout-form1">Validate Client</h4>
                        <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                    </div>
                    <div class="alert alert-deep-orange mb-2" role="alert" id="divAlert1" runat="server" visible="false">
                    </div>
                    <asp:Label ID="Label1" Visible="false" runat="server" Text=""></asp:Label>
                    <div class="card-body collapse in">
                        <div class="card-block">
                            <div class="form">
                                <div class="form-body">
                                    <%--<h4>Prospect Client List</h4>--%>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <label>*Mobile No</label>
                                            <asp:TextBox ID="txtMobile" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <asp:Button ID="btnValidate" CssClass="btn btn-amber" OnClick="btnValidate_Click" runat="server" Text="Validate" />
                                            <asp:Button ID="btnClear" CssClass="btn btn-primary" OnClick="btnClear_Click" runat="server" Text="Clear" />
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <h3>Similar Clients</h3>
                                        <asp:GridView ID="gvClientValidate" AutoGenerateColumns="false" CssClass="table table-hover table-bordered"
                                            OnRowCommand="gvClient_RowCommand"
                                            AllowPaging="false" AllowSorting="false" runat="server">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Client Number/User Name">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="btnSelect" CssClass="btn-link" runat="server" Text='<% #Eval("ClientNumber") %>' CommandName="S" CommandArgument='<% #Eval("ClientId") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField HeaderText="Password" DataField="Password" SortExpression="Password" />
                                                <asp:BoundField HeaderText="First Name" DataField="FirstName" SortExpression="FirstName" />
                                                <asp:BoundField HeaderText="Last Name" DataField="LastName" SortExpression="LastName" />
                                                <asp:BoundField HeaderText="Mobile 1" DataField="Mobile1" SortExpression="Mobile1" />
                                                <asp:BoundField HeaderText="DOB" DataField="DOB" SortExpression="DOB" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderText="Email" DataField="Email" SortExpression="Email" />
                                                <asp:BoundField HeaderText="Prospect Client" DataField="IsProspect" SortExpression="IsProspect" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">Client Master</h4>
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
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>*First Name</label>
                                                <asp:TextBox ID="txtFirstName" CssClass="form-control" placeholder="First Name" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>*Middle Name</label>
                                                <asp:TextBox ID="txtMiddleName" CssClass="form-control" placeholder="Middle Name" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>*Last Name</label>
                                                <asp:TextBox ID="txtLastName" CssClass="form-control" placeholder="Last Name" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>*Mobile 1</label>
                                                <asp:TextBox ID="txtMobile1" TextMode="Number" CssClass="form-control" placeholder="Mobile 1" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Mobile 2</label>
                                                <asp:TextBox ID="txtMobile2" TextMode="Number" CssClass="form-control" placeholder="Mobile 2" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Address</label>
                                                <asp:TextBox ID="txtAddress" CssClass="form-control" placeholder="Address" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Pincode</label>
                                                <asp:TextBox ID="txtPincode" CssClass="form-control" placeholder="Pincode" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Email</label>
                                                <asp:TextBox ID="txtEmail" TextMode="Email" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>DOB</label>
                                                <asp:TextBox ID="txtDOB" TextMode="Date" CssClass="form-control" placeholder="Date Of Birth" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>DOA</label>
                                                <asp:TextBox ID="txtDOA" TextMode="Date" CssClass="form-control" placeholder="Date Of Anniversery" runat="server"></asp:TextBox>
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
                                            <asp:GridView ID="gvClient" AutoGenerateColumns="false" CssClass="table table-hover table-bordered"
                                                AllowPaging="true" OnPageIndexChanging="gvClient_PageIndexChanging" OnRowCommand="gvClient_RowCommand"
                                                OnSorting="gvClient_Sorting" AllowSorting="true" runat="server">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Client Number/User Name">
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="btnSelect" CssClass="btn-link" runat="server" Text='<% #Eval("ClientNumber") %>' CommandName="S" CommandArgument='<% #Eval("ClientId") %>' />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField HeaderText="Password" DataField="Password" SortExpression="Password" />
                                                    <asp:BoundField HeaderText="First Name" DataField="FirstName" SortExpression="FirstName" />
                                                    <asp:BoundField HeaderText="Last Name" DataField="LastName" SortExpression="LastName" />
                                                    <asp:BoundField HeaderText="Mobile 1" DataField="Mobile1" SortExpression="Mobile1" />
                                                    <asp:BoundField HeaderText="DOB" DataField="DOB" SortExpression="DOB" DataFormatString="{0:dd/MMM/yyyy}" />
                                                    <asp:BoundField HeaderText="Email" DataField="Email" SortExpression="Email" />
                                                    <asp:BoundField HeaderText="Prospect Client" DataField="IsProspect" SortExpression="IsProspect" />
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Panel/Panel.Master" AutoEventWireup="true" CodeBehind="RefrenceMaster.aspx.cs" Inherits="EmployeeCRM.Login.Panel.RefrenceMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../app-assets/js/core/libraries/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#ddlClient").select2();
        });

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
                        <h4 class="card-title" id="basic-layout-form">Refrence Master</h4>

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
                                                <label>
                                                    Select Client*<%-- (
                                                    <asp:LinkButton ID="lbtnClientAdd" OnClick="lbtnClientAdd_Click" runat="server">Quick add Client</asp:LinkButton>
                                                    )--%>
                                                </label>
                                                <asp:DropDownList ID="ddlClient" ClientIDMode="Static" data-placeholder="Choose a Client..." CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-12"></div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>First Name</label>
                                                <asp:TextBox ID="txtFirstName" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Middle Name</label>
                                                <asp:TextBox ID="txtMiddleName" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Last Name</label>
                                                <asp:TextBox ID="txtLastName" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>*Mobile</label>
                                                <asp:TextBox ID="txtMobile" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Email Id</label>
                                                <asp:TextBox ID="txtEmailId" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Adhar No</label>
                                                <asp:TextBox ID="txtAdharNo" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Pan No</label>
                                                <asp:TextBox ID="txtPanNo" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-actions">
                                        <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                                        <asp:Button ID="btnUpdate" Visible="false" CssClass="btn btn-primary" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                                        <asp:Button ID="btnDelete" Visible="false" CssClass="btn btn-primary" runat="server" OnClick="btnDelete_Click" Text="Delete" />
                                        <asp:Button ID="btnCancel" CssClass="btn btn-primary" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                                    </div>
                                    <div class="table-responsive">
                                        <div style="text-align: right;" class="col-md-3 offset-md-6">
                                            <asp:TextBox ID="txtSearch" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <div style="text-align: right;" class="col-md-3">
                                            <asp:Button ID="btnSearch" CssClass="btn btn-outline-blue" OnClick="btnSearch_Click" runat="server" Text="Search" />
                                            <asp:Button ID="btnExport" runat="server" Text="Export" CssClass="btn btn-outline-success" OnClick="btnExport_Click" />
                                            <%--<button class="btn btn-outline-warning" onclick="printDiv('div')">Print</button>--%>
                                        </div>
                                        <div class="col-md-12">
                                            <br />
                                        </div>
                                        <h4>Refrence List</h4>
                                        <asp:GridView ID="gvRefrence" AutoGenerateColumns="false" CssClass="table table-hover table-bordered" AllowSorting="true" AllowPaging="true"
                                            OnRowCommand="gvRefrence_RowCommand" OnPageIndexChanging="gvRefrence_PageIndexChanging" OnSorting="gvRefrence_Sorting" runat="server" Width="100%">
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton CssClass="btn-link" ID="btnSelect" CommandArgument='<% #Eval("RefrenceId") %>' CommandName="S" runat="server" Text="Select" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField HeaderText="Client Name" DataField="ClientName" SortExpression="ClientName" />
                                                <asp:BoundField HeaderText="First Name" DataField="FirstName" SortExpression="FirstName" />
                                                <asp:BoundField HeaderText="Middle Name" DataField="MiddleName" SortExpression="MiddleName" />
                                                <asp:BoundField HeaderText="Last Name" DataField="LastName" SortExpression="LastName" />
                                                <asp:BoundField HeaderText="Mobile" DataField="Mobile" SortExpression="Mobile" />
                                                <asp:BoundField HeaderText="Email Id" DataField="EmailId" SortExpression="EmailId" />
                                                <asp:BoundField HeaderText="Adhar No" DataField="AdharNo" SortExpression="AdharNo" />
                                                <asp:BoundField HeaderText="Pan No" DataField="PanNo" SortExpression="PanNo" />
                                                <asp:BoundField HeaderText="Entry Date" DataField="EntryDate" SortExpression="EntryDate" DataFormatString="{0:dd/MMM/yyyy}" />
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

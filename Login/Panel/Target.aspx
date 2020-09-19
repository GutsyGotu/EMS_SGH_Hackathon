<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Panel/Panel.Master" AutoEventWireup="true" CodeBehind="Target.aspx.cs" Inherits="EmployeeCRM.Login.Panel.Target" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function printDiv(divName) {
            var printContents = document.getElementById(divName).innerHTML;
            var originalContents = document.body.innerHTML;
            document.body.innerHTML = printContents;
            window.print();
            document.body.innerHTML = originalContents;
        }

        function integersOnly(obj) {
            obj.value = obj.value.replace(/[^0-9-.]/g, '');
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="basic-form-layouts">
        <div class="row match-height">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">Target Entry</h4>
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
                                                <label>Select Employee</label>
                                                <asp:DropDownList ID="ddlEmployee" CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Select Service</label>
                                                <asp:DropDownList ID="ddlService" CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Target Start Date*</label>
                                                <asp:TextBox ID="txtStartDate" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Target End Date*</label>
                                                <asp:TextBox ID="txtEndDate" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Amount*</label>
                                                <asp:TextBox ID="txtAmount" CssClass="form-control" onkeyup="integersOnly(this)" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Remarks</label>
                                                <asp:TextBox ID="txtRemarks" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
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
                                            <button class="btn btn-outline-warning" onclick="printDiv('div')">Print</button>
                                        </div>
                                        <div class="col-md-12">
                                            <br />
                                        </div>
                                        <div class="table-responsive" id="div">
                                            <h4>Target List</h4>
                                            <asp:GridView ID="gvTarget" AutoGenerateColumns="false" CssClass="table table-hover table-bordered" AllowSorting="true" AllowPaging="true"
                                                OnRowCommand="gvTarget_RowCommand" OnPageIndexChanging="gvTarget_PageIndexChanging" OnSorting="gvTarget_Sorting" runat="server" Width="100%">
                                                <Columns>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:LinkButton CssClass="btn-link" ID="btnSelect" CommandArgument='<% #Eval("TargetId") %>' CommandName="S" runat="server" Text="Select" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField HeaderText="Service Name" DataField="ServiceName" SortExpression="ServiceName" />
                                                    <asp:BoundField HeaderText="Employee Name" DataField="FullName" SortExpression="FullName" />
                                                    <asp:BoundField HeaderText="Amount" DataField="Amount" SortExpression="Amount" />
                                                    <asp:BoundField HeaderText="Start Date" DataField="StartDate" SortExpression="StartDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                    <asp:BoundField HeaderText="End Date" DataField="EndDate" SortExpression="EndDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                    <asp:BoundField HeaderText="Remarks" DataField="Remarks" SortExpression="Remarks" />
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

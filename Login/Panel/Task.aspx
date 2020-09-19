<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Panel/Panel.Master" AutoEventWireup="true" CodeBehind="Task.aspx.cs" Inherits="EmployeeCRM.Login.Panel.Task" %>

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
                        <h4 class="card-title" id="basic-layout-form">Task Master</h4>
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
                                                <label>Task Heading *</label>
                                                <asp:TextBox ID="txtTaskHeading" CssClass="form-control" placeholder="Task Heading" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Task Description *</label>
                                                <asp:TextBox ID="txtTaskDescription" CssClass="form-control" placeholder="Task Description" TextMode="MultiLine" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Task Type *</label>
                                                <asp:DropDownList ID="ddlTaskType" CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Assign To</label>
                                                <asp:DropDownList ID="ddlAssignedto" CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Task Status*</label>
                                                <asp:DropDownList ID="ddlTaskStatus" CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Service</label>
                                                <asp:DropDownList ID="ddlService" CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Due Date</label>
                                                <asp:TextBox ID="txtDueDate" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Client</label>
                                                <asp:DropDownList ID="ddlClient" ClientIDMode="Static" data-placeholder="Choose a Client..." CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Remarks(for any change)*</label>
                                                <asp:TextBox ID="txtRemarks" placeholder="Remakrs" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-actions">
                                        <asp:Button ID="btnSubmit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" runat="server" Text="Submit" />
                                        <asp:Button ID="btnUpdate" Visible="false" CssClass="btn btn-primary" OnClick="btnUpdate_Click" runat="server" Text="Update" />
                                        <asp:Button ID="btnDelete" Visible="false" CssClass="btn btn-primary" OnClick="btnDelete_Click" runat="server" Text="Delete" />
                                        <asp:Button ID="btnCancel" CssClass="btn btn-primary" OnClick="btnCancel_Click" runat="server" Text="Cancel" />
                                        &nbsp;
                                        &nbsp;
                                        <asp:CheckBox ID="chkShow" AutoPostBack="true" Checked="true" OnCheckedChanged="chkShow_CheckedChanged" runat="server" />
                                        Show Completed/Cancelled/Verified task
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
                                            <asp:GridView ID="gvTask" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" CssClass="table table-hover table-bordered"
                                                OnRowCommand="gvTask_RowCommand" OnPageIndexChanging="gvTask_PageIndexChanging" OnRowDataBound="gvTask_RowDataBound"
                                                OnSorting="gvTask_Sorting" runat="server" Width="100%">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Task Number" SortExpression="TaskNumber">
                                                        <ItemTemplate>
                                                            <asp:LinkButton CssClass="btn-link" ID="btnSelect" CommandArgument='<% #Eval("TaskId") %>' CommandName="S" runat="server" Text='<% #Eval("TaskNumber") %>' />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <%--<asp:BoundField HeaderText="Task Number" DataField="TaskNumber" SortExpression="TaskNumber" />--%>
                                                    <asp:BoundField HeaderText="Task Heading" DataField="TaskHeading" SortExpression="TaskHeading" />
                                                    <asp:TemplateField HeaderText="Task Status" SortExpression="TaskStatus">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblTaskStatus" runat="server" Text='<% #Eval("TaskStatus") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField HeaderText="Client Name" DataField="ClientName" SortExpression="ClientName" />
                                                    <asp:BoundField HeaderText="Due Date" DataField="DueDate" SortExpression="DueDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                    <asp:BoundField HeaderText="Created By" DataField="CreatedByName" SortExpression="CreatedByName" />
                                                    <asp:BoundField HeaderText="Created On" DataField="CreatedOn" SortExpression="CreatedOn" DataFormatString="{0:dd/MMM/yyyy}" />
                                                    <asp:BoundField HeaderText="Assigned By" DataField="AssignedByName" SortExpression="AssignedByName" />
                                                    <asp:BoundField HeaderText="Assigned To" DataField="AssignedToName" SortExpression="AssignedToName" />
                                                    <asp:BoundField HeaderText="Assigned On" DataField="AssignedDate" SortExpression="AssignedDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                    <asp:BoundField HeaderText="Close Date" DataField="CloseDate" SortExpression="CloseDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                    <asp:BoundField HeaderText="Close By" DataField="CloseByName" SortExpression="CloseByName" />
                                                    <asp:BoundField HeaderText="Service Name" DataField="ServiceName" SortExpression="ServiceName" />
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Panel/Panel.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="EmployeeCRM.Login.Panel.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function ShowPopup() {
            $("#myModal .modal-title").html('Task Detail');
            $("#myModal").modal("show");
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="basic-form-layouts">
        <div class="row match-height">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">Dashboard</h4>
                        <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                    </div>
                    <div class="alert alert-deep-orange mb-2" role="alert" id="divAlert" runat="server" visible="false">
                    </div>
                    <asp:Label ID="lblId" Visible="false" runat="server" Text=""></asp:Label>
                    <div class="card-body collapse in">
                        <div class="card-block">
                            <div class="form">

                                <div class="form-body">

                                    <div class="col-md-2">
                                        <h4>My Task </h4>
                                    </div>
                                    <div class="col-md-4">
                                        <asp:CheckBox ID="chkShow" AutoPostBack="true" OnCheckedChanged="chkShow_CheckedChanged" runat="server" />
                                        Show Completed/Cancelled/Verified task
                                    </div>

                                    <div class="table-responsive">
                                        <asp:GridView ID="gvTask" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" CssClass="table table-hover table-bordered"
                                            OnPageIndexChanging="gvTask_PageIndexChanging" OnRowDataBound="gvTask_RowDataBound" OnRowCommand="gvTask_RowCommand"
                                            OnSorting="gvTask_Sorting" runat="server" Width="100%" EmptyDataText="No records Found">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Task Number" SortExpression="TaskHeading">
                                                    <ItemTemplate>
                                                        <asp:LinkButton CssClass="btn-link" ID="btnSelect" CommandArgument='<% #Eval("TaskId") %>' CommandName="S" runat="server" Text='<% #Eval("TaskNumber") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <%--<asp:BoundField HeaderText="Task Number" DataField="TaskNumber" SortExpression="TaskNumber" />--%>
                                                <asp:BoundField HeaderText="Task Heading" DataField="TaskHeading" SortExpression="TaskHeading" />
                                                <asp:BoundField HeaderText="Task Description" DataField="TaskDescription" SortExpression="TaskDescription" />
                                                <%--<asp:BoundField HeaderText="Task Status" DataField="TaskStatus" SortExpression="TaskStatus" />--%>
                                                <asp:TemplateField HeaderText="Task Status" SortExpression="TaskStatus">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblTaskStatus" runat="server" Text='<% #Eval("TaskStatus") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField HeaderText="Due Date" DataField="DueDate" SortExpression="DueDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderText="Created By" DataField="CreatedByName" SortExpression="CreatedByName" />
                                                <asp:BoundField HeaderText="Created On" DataField="CreatedOn" SortExpression="CreatedOn" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderText="Assigned By" DataField="AssignedByName" SortExpression="AssignedByName" />
                                                <%--<asp:BoundField HeaderText="Assigned To" DataField="AssignedToName" SortExpression="AssignedToName" />--%>
                                                <asp:BoundField HeaderText="Assigned On" DataField="AssignedDate" SortExpression="AssignedDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderText="Close Date" DataField="CloseDate" SortExpression="CloseDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderText="Close By" DataField="CloseByName" SortExpression="CloseByName" />
                                                <asp:BoundField HeaderText="Service Name" DataField="ServiceName" SortExpression="ServiceName" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>

                                    <h4>Unassigned Task</h4>
                                    <div class="table-responsive">
                                        <asp:GridView ID="gvUnassignedTask" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" CssClass="table table-hover table-bordered"
                                            OnPageIndexChanging="gvUnassignedTask_PageIndexChanging" OnRowDataBound="gvUnassignedTask_RowDataBound"
                                            OnSorting="gvUnassignedTask_Sorting" OnRowCommand="gvUnassignedTask_RowCommand" runat="server" Width="100%" EmptyDataText="No records Found">
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton CssClass="btn-link" ID="btnSelect" CommandArgument='<% #Eval("TaskId") %>' CommandName="S" runat="server" Text="Assigned To Me" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:BoundField HeaderText="Task Number" DataField="TaskNumber" SortExpression="TaskNumber" />
                                                <asp:BoundField HeaderText="Task Heading" DataField="TaskHeading" SortExpression="TaskHeading" />
                                                <asp:BoundField HeaderText="Task Description" DataField="TaskDescription" SortExpression="TaskDescription" />
                                                <asp:TemplateField HeaderText="Task Status" SortExpression="TaskStatus">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblTaskStatus" runat="server" Text='<% #Eval("TaskStatus") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField HeaderText="Due Date" DataField="DueDate" SortExpression="DueDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderText="Created By" DataField="CreatedByName" SortExpression="CreatedByName" />
                                                <asp:BoundField HeaderText="Created On" DataField="CreatedOn" SortExpression="CreatedOn" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <%--<asp:BoundField HeaderText="Assigned By" DataField="AssignedByName" SortExpression="AssignedByName" />
                                                <asp:BoundField HeaderText="Assigned To" DataField="AssignedToName" SortExpression="AssignedToName" />
                                                <asp:BoundField HeaderText="Assigned On" DataField="AssignedDate" SortExpression="AssignedDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderText="Close Date" DataField="CloseDate" SortExpression="CloseDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderText="Close By" DataField="CloseByName" SortExpression="CloseByName" />--%>
                                                <asp:BoundField HeaderText="Service Name" DataField="ServiceName" SortExpression="ServiceName" />
                                            </Columns>
                                        </asp:GridView>
                                        <div id="myModal" class="modal fade" role="dialog">
                                            <div class="modal-dialog">

                                                <!-- Modal content-->
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">Task Detail</h4>
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <%--<div id="mailPreview" runat="server"></div>--%>
                                                        <asp:DetailsView ID="dvTaskDetail" AutoGenerateRows="false" CssClass="table table-hover table-bordered"
                                                            runat="server" Width="100%">
                                                            <Fields>
                                                                <asp:TemplateField HeaderText="Task Number" SortExpression="TaskHeading">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblIdSelect" CommandArgument='<% #Eval("TaskId") %>' runat="server" Text='<% #Eval("TaskNumber") %>' />
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <%--<asp:BoundField HeaderText="Task Number" DataField="TaskNumber" SortExpression="TaskNumber" />--%>
                                                                <asp:BoundField HeaderText="Task Heading" DataField="TaskHeading" SortExpression="TaskHeading" />
                                                                <asp:BoundField HeaderText="Task Description" DataField="TaskDescription" SortExpression="TaskDescription" />
                                                                <asp:TemplateField HeaderText="Task Status" SortExpression="TaskStatus">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblTaskStatus" runat="server" Text='<% #Eval("TaskStatus") %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:BoundField HeaderText="Due Date" DataField="DueDate" SortExpression="DueDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                                <asp:BoundField HeaderText="Created By" DataField="CreatedByName" SortExpression="CreatedByName" />
                                                                <asp:BoundField HeaderText="Created On" DataField="CreatedOn" SortExpression="CreatedOn" DataFormatString="{0:dd/MMM/yyyy}" />
                                                                <asp:BoundField HeaderText="Assigned By" DataField="AssignedByName" SortExpression="AssignedByName" />
                                                                <asp:BoundField HeaderText="Assigned To" DataField="AssignedToName" SortExpression="AssignedToName" />
                                                                <asp:BoundField HeaderText="Assigned On" DataField="AssignedDate" SortExpression="AssignedDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                                <asp:BoundField HeaderText="Close Date" DataField="CloseDate" SortExpression="CloseDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                                <asp:BoundField HeaderText="Close By" DataField="CloseByName" SortExpression="CloseByName" />
                                                                <asp:BoundField HeaderText="Service Name" DataField="ServiceName" SortExpression="ServiceName" />
                                                            </Fields>
                                                        </asp:DetailsView>

                                                    </div>
                                                    <div class="modal-footer">
                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                    </div>
                                    <div runat="server" id="divReminder" visible="true">
                                        <h4>Reminder Dashboard</h4>
                                        <div class="table-responsive">
                                            <asp:GridView ID="gvSales" AutoGenerateColumns="false" CssClass="table table-hover table-bordered" AllowSorting="true" AllowPaging="true"
                                                OnPageIndexChanging="gvSales_PageIndexChanging" OnSorting="gvSales_Sorting" runat="server" Width="100%" EmptyDataText="No Records found" OnRowCommand="gvSales_RowCommand">
                                                <Columns>

                                                    <asp:TemplateField>
                                                        <ItemTemplate>

                                                            <asp:Button ID="btnRemove" CssClass="btn btn-danger" CommandName="R" CommandArgument='<% #Eval("SalesId") %>' runat="server" Text="X" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField HeaderText="Client Number" DataField="ClientNumber" SortExpression="ClientNumber" />
                                                    <asp:BoundField HeaderText="Client Name" DataField="ClientName" SortExpression="ClientName" />
                                                    <asp:BoundField HeaderText="Service Name" DataField="ServiceName" SortExpression="ServiceName" />
                                                    <asp:BoundField HeaderText="Amount" DataField="Amount" SortExpression="Amount" />
                                                    <asp:BoundField HeaderText="Create By" DataField="CreateByName" SortExpression="CreateByName" />
                                                    <asp:BoundField HeaderText="Payment Mode" DataField="PaymentMode" SortExpression="PaymentMode" />
                                                    <asp:BoundField HeaderText="Payment Details" DataField="PaymentDetails" SortExpression="PaymentDetails" />
                                                    <asp:BoundField HeaderText="Create Date" DataField="CreateDate" SortExpression="CreateDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                    <asp:BoundField HeaderText="Service Date" DataField="ServiceDate" SortExpression="ServiceDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                    <asp:BoundField HeaderText="Reminder Date" DataField="ReminderDate" SortExpression="ReminderDate" DataFormatString="{0:dd/MMM/yyyy}" />
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Panel/Panel.Master" AutoEventWireup="true" CodeBehind="ClientWiseReport.aspx.cs" Inherits="EmployeeCRM.Login.Panel.ClientWiseReport" %>

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
                        <h4 class="card-title" id="basic-layout-form">Client Wise Report</h4>
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
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Start Date*</label>
                                                <asp:TextBox ID="txtStartDate" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>End Date*</label>
                                                <asp:TextBox ID="txtEndDate" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Client</label>
                                                <asp:DropDownList ID="ddlClient" ClientIDMode="Static" data-placeholder="- - - A L L - - -" CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <br />
                                                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-blue" OnClick="btnSearch_Click" />
                                                <%--<asp:Button ID="btnExport" runat="server" Text="Export" CssClass="btn btn-success" OnClick="btnExport_Click" />--%>
                                                <button class="btn btn-outline-warning" onclick="printDiv('div')">Print</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="table-responsive" id="div">
                                        <h5>Task List</h5>
                                        <asp:GridView ID="gvTask" AutoGenerateColumns="false" AllowSorting="false" CssClass="table table-hover table-bordered" OnRowDataBound="gvTask_RowDataBound"
                                            runat="server" Width="100%">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Task Number" SortExpression="TaskNumber">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblSelect" runat="server" Text='<% #Eval("TaskNumber") %>' />
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
                                            </Columns>
                                        </asp:GridView>
                                        <h5>Ticket List</h5>
                                        <asp:GridView ID="gvTicket" AutoGenerateColumns="false" CssClass="table table-hover table-bordered" AllowSorting="false" AllowPaging="false"
                                            OnRowDataBound="gvTicket_RowDataBound" runat="server" Width="100%">
                                            <Columns>
                                                <asp:BoundField HeaderText="Ticket Number" DataField="TicketNumber" SortExpression="TicketNumber" />
                                                <asp:TemplateField HeaderText="Ticket Status" SortExpression="TicketStatus">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblTicketStatus" runat="server" Text='<% #Eval("TicketStatus") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <%--<asp:BoundField HeaderText="Ticket Status" DataField="TicketStatusId" SortExpression="TicketStatusId" />
                                                --%><asp:BoundField HeaderText="First Name" DataField="FirstName" SortExpression="FirstName" />
                                                <asp:BoundField HeaderText="Mobile 1" DataField="Mobile1" SortExpression="Mobile1" />
                                                <asp:BoundField HeaderText="Create By" DataField="UserName" SortExpression="UserName" />
                                                <asp:BoundField HeaderText="Service Name" DataField="ServiceName" SortExpression="ServiceName" />
                                                <asp:BoundField HeaderText="Create Date" DataField="CreateDate" SortExpression="CreateDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <%--<asp:TemplateField HeaderText="Download Link">
                                                    <ItemTemplate>
                                                        <a id="aLink" href="<%# String.Format("../../Docs/"+Eval("DocumentPath")) %>" target="_blank">Link</a>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                --%>
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

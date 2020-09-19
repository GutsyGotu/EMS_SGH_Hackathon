<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Panel/Panel.Master" AutoEventWireup="true" CodeBehind="TaskStatusReport.aspx.cs" Inherits="EmployeeCRM.Login.Panel.TaskStatusReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="basic-form-layouts">
        <div class="row match-height">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">Task Report</h4>
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
                                                <label>Task Status</label>
                                                <asp:DropDownList ID="ddlTaskStatus" CssClass="form-control" runat="server" ></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <br />
                                                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-blue" OnClick="btnSearch_Click" />
                                                <asp:Button ID="btnExport" runat="server" Text="Export" CssClass="btn btn-success" OnClick="btnExport_Click" />
                                                <asp:Button ID="btnPrint" runat="server" Text="Print" CssClass="btn btn-warning" OnClick="btnPrint_Click" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Enter</label>
                                                <asp:TextBox ID="txtKeyword"  CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                         <div class="col-md-3">
                                            <div class="form-group">
                                                <br />
                                                <asp:Button ID="btnSearchKeyword" runat="server" Text="Search" CssClass="btn btn-blue" OnClick="btnSearchKeyword_Click" />
                                              
                                            </div>
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <h5>Task List</h5>
                                        <asp:GridView ID="gvTask" AutoGenerateColumns="false" AllowSorting="true" CssClass="table table-hover table-bordered" OnRowDataBound="gvTask_RowDataBound"
                                            OnSorting="gvTask_Sorting" runat="server" Width="100%">
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

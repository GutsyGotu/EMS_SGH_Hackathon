<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Panel/Panel.Master" AutoEventWireup="true" CodeBehind="TaskTrack.aspx.cs" Inherits="EmployeeCRM.Login.Panel.TaskTrack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="basic-form-layouts">
        <div class="row match-height">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">Task Track</h4>
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
                                                <label>Task Number*</label>
                                                <asp:TextBox ID="txtTaskNumber" CssClass="form-control" placeholder="Task Number" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <br />
                                                <asp:Button ID="btnSearch" CssClass="btn btn-primary" OnClick="btnSearch_Click" runat="server" Text="Search" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <h4>Task Details</h4>
                                        <asp:DetailsView ID="gvTask" AutoGenerateRows="false" CssClass="table table-hover table-bordered" runat="server" Width="100%">

                                            <Fields>
                                                <asp:BoundField HeaderStyle-Font-Bold="true" HeaderStyle-Width="20%" HeaderText="Task Number" DataField="TaskNumber" SortExpression="TaskNumber" />
                                                <asp:BoundField HeaderStyle-Font-Bold="true" HeaderText="Task Heading" DataField="TaskHeading" SortExpression="TaskHeading" />
                                                <asp:BoundField HeaderStyle-Font-Bold="true" HeaderText="Task Description" DataField="TaskDescription" SortExpression="TaskDescription" />
                                                <asp:BoundField HeaderStyle-Font-Bold="true" HeaderText="Task Status" DataField="TaskStatus" SortExpression="TaskStatus" />
                                                <asp:BoundField HeaderStyle-Font-Bold="true" HeaderText="Due Date" DataField="DueDate" SortExpression="DueDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderStyle-Font-Bold="true" HeaderText="Created By" DataField="CreatedByName" SortExpression="CreatedByName" />
                                                <asp:BoundField HeaderStyle-Font-Bold="true" HeaderText="Created On" DataField="CreatedOn" SortExpression="CreatedOn" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderStyle-Font-Bold="true" HeaderText="Assigned By" DataField="AssignedByName" SortExpression="AssignedByName" />
                                                <asp:BoundField HeaderStyle-Font-Bold="true" HeaderText="Assigned To" DataField="AssignedToName" SortExpression="AssignedToName" />
                                                <asp:BoundField HeaderStyle-Font-Bold="true" HeaderText="Assigned On" DataField="AssignedDate" SortExpression="AssignedDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderStyle-Font-Bold="true" HeaderText="Close Date" DataField="CloseDate" SortExpression="CloseDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderStyle-Font-Bold="true" HeaderText="Close By" DataField="CloseByName" SortExpression="CloseByName" />
                                                <asp:BoundField HeaderStyle-Font-Bold="true" HeaderText="TotalHours" DataField="TotalHours" SortExpression="TotalHours" />
                                                <asp:BoundField HeaderStyle-Font-Bold="true" HeaderText="Service Name" DataField="ServiceName" SortExpression="ServiceName" />
                                            </Fields>
                                        </asp:DetailsView>
                                    </div>
                                    <hr />
                                    <div class="table-responsive">
                                        <h4>Task Track</h4>
                                        <asp:GridView ID="gvTaskDetails" AutoGenerateColumns="false" CssClass="table table-hover table-bordered"
                                            runat="server" Width="100%" OnRowDataBound="gvTaskDetails_RowDataBound">
                                            <Columns>
                                                <%--<asp:BoundField HeaderText="Task Number" DataField="TaskNumber" SortExpression="TaskNumber" />--%>
                                                <asp:TemplateField HeaderText="Task Status" SortExpression="TaskStatus">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblTaskStatus" runat="server" Text='<% #Eval("TaskStatus") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField HeaderText="Due Date" DataField="DueDate" SortExpression="DueDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderText="Assigned By" DataField="AssignedByName" SortExpression="AssignedByName" />
                                                <asp:BoundField HeaderText="Assigned To" DataField="AssignedToName" SortExpression="AssignedToName" />
                                                <asp:BoundField HeaderText="Assigned On" DataField="AssignedDate" SortExpression="AssignedDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderText="Close Date" DataField="CloseDate" SortExpression="CloseDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderText="Close By" DataField="CloseByName" SortExpression="CloseByName" />
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
    </section>
</asp:Content>

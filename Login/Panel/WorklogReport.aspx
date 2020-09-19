<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Panel/Panel.Master" AutoEventWireup="true" CodeBehind="WorklogReport.aspx.cs" Inherits="EmployeeCRM.Login.Panel.WorklogReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="basic-form-layouts">
        <div class="row match-height">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">Work Log Report</h4>
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
                                                <label>Select User</label>
                                                <asp:DropDownList ID="ddlUser" CssClass="form-control" runat="server"></asp:DropDownList>
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
                                    <div class="table-responsive">
                                        <h4>Work log</h4>
                                        <asp:GridView ID="gvWorkLog" AutoGenerateColumns="false" CssClass="table table-hover table-bordered"
                                            runat="server" Width="100%">
                                            <Columns>
                                                <asp:BoundField HeaderText="Task Number" DataField="TaskNumber" SortExpression="TaskNumber" />
                                                <asp:BoundField HeaderText="Work Heading" DataField="WorkHeading" SortExpression="WorkHeading" />
                                                <asp:BoundField HeaderText="Description" DataField="Description" SortExpression="Description" />
                                                <asp:BoundField HeaderText="Service Name" DataField="ServiceName" SortExpression="ServiceName" />
                                                <asp:BoundField HeaderText="Worklog Date" DataField="WorkLogDate" SortExpression="WorkLogDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderText="Worklog Time(Hrs)" DataField="WorkLogTimeHrs" SortExpression="WorkLogTimeHrs" />
                                                <asp:BoundField HeaderText="User Name" DataField="UserName" SortExpression="UserName" />
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

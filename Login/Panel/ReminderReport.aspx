﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Panel/Panel.Master" AutoEventWireup="true" CodeBehind="ReminderReport.aspx.cs" Inherits="EmployeeCRM.Login.Panel.ReminderReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="basic-form-layouts">
        <div class="row match-height">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">Reminder Report</h4>
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
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label>Start Date*</label>
                                                <asp:TextBox ID="txtStartDate" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label>End Date*</label>
                                                <asp:TextBox ID="txtEndDate" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <label>
                                                Select Service
                                            </label>
                                            <asp:DropDownList ID="ddlService" CssClass="form-control" runat="server"></asp:DropDownList>
                                        </div>
                                        <div class="col-md-4">
                                            <label>
                                                Select User
                                            </label>
                                            <asp:DropDownList ID="ddlUser" CssClass="form-control" runat="server"></asp:DropDownList>
                                        </div>
                                        <div class="col-md-12">
                                            <hr />
                                            </div>
                                        <div class="col-md-12" style="text-align:right;">
                                            <div class="form-group">
                                                <br />
                                                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-blue" OnClick="btnSearch_Click" />
                                                <asp:Button ID="btnExport" runat="server" Text="Export" CssClass="btn btn-success" OnClick="btnExport_Click" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <h4>Sales List</h4>
                                        <asp:GridView ID="gvSales" AutoGenerateColumns="false" CssClass="table table-hover table-bordered" AllowSorting="false" AllowPaging="false"
                                            runat="server" Width="100%">
                                            <Columns>
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
                                                <%--<asp:TemplateField HeaderText="Download Link">
                                                    <ItemTemplate>
                                                        <a id="aLink" href="<%# String.Format("../../Docs/"+Eval("DocumentPath")) %>" target="_blank">Link</a>
                                                    </ItemTemplate>
                                                </asp:TemplateField>--%>
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

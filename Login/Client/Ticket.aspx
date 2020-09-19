<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Client/Client.Master" AutoEventWireup="true" CodeBehind="Ticket.aspx.cs" Inherits="EmployeeCRM.Login.Client.Ticket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="basic-form-layouts">
        <div class="row match-height">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">Ticket</h4>
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
                                                <label>Select Client*</label>
                                                <asp:DropDownList ID="ddlClient" Enabled="false" CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Select Service*</label>
                                                <asp:DropDownList ID="ddlService" CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Ticket Status*</label>
                                                <asp:DropDownList ID="ddlTicketStatus" CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Description</label>
                                                <asp:TextBox ID="txtDescription" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
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
                                        <h4>Ticket List</h4>
                                        <asp:GridView ID="gvTicket"  AutoGenerateColumns="false" CssClass="table table-hover table-bordered" AllowSorting="true" AllowPaging="true"
                                            OnRowCommand="gvTicket_RowCommand" OnPageIndexChanging="gvTicket_PageIndexChanging" OnRowDataBound="gvTicket_RowDataBound" OnSorting="gvTicket_Sorting" runat="server" Width="100%">
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton CssClass="btn-link" ID="btnSelect" CommandArgument='<% #Eval("TicketId") %>' CommandName="S" runat="server" Text="Select" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField HeaderText="Ticket Number" DataField="TicketNumber" SortExpression="TicketNumber" />
                                                <asp:TemplateField HeaderText="Ticket Status" SortExpression="TicketStatus">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblTicketStatus" runat="server" Text='<% #Eval("TicketStatus") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

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

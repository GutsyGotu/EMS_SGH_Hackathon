<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Client/Client.Master" AutoEventWireup="true" CodeBehind="Note.aspx.cs" Inherits="EmployeeCRM.Login.Client.Note" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="basic-form-layouts">
        <div class="row match-height">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">Note</h4>
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
                                                <label>
                                                    Select Client* 
                                                </label>
                                                <asp:DropDownList ID="ddlClient" Enabled="false" CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Note Type</label>
                                                <asp:TextBox ID="txtNoteType" placeholder="Call,Phone,visit,other etc.." CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Note Description</label>
                                                <asp:TextBox ID="txtNote" CssClass="form-control" placeholder="Description" TextMode="MultiLine" runat="server"></asp:TextBox>
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
                                        <h4>Note List</h4>
                                        <asp:GridView ID="gvNote" AutoGenerateColumns="false" CssClass="table table-hover table-bordered" AllowSorting="true" AllowPaging="true"
                                            OnRowCommand="gvNote_RowCommand" OnPageIndexChanging="gvNote_PageIndexChanging" OnSorting="gvNote_Sorting" runat="server" Width="100%">
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton CssClass="btn-link" ID="btnSelect" CommandArgument='<% #Eval("NoteId") %>' CommandName="S" runat="server" Text="Select" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField HeaderText="Note Type" DataField="NoteType" SortExpression="NoteType" />
                                                <asp:BoundField HeaderText="Note Description" DataField="Note" SortExpression="Note" />
                                                <asp:BoundField HeaderText="Create Date" DataField="CreateDate" SortExpression="CreateDate" DataFormatString="{0:dd/MMM/yyyy}" />
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

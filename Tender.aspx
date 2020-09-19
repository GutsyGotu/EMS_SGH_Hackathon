<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Tender.aspx.cs" Inherits="EmployeeCRM.Tender" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="about-us-section section-padding">
        <div class="container">
            <div class="section-header text-center">
                <h3><span>Welcome to </span>Tender List</h3>
            </div>
            <div class="row">
                <div class="table-responsive" id="div">
                    <asp:GridView ID="gvTender" AutoGenerateColumns="false" CssClass="table table-hover table-bordered" AllowSorting="false" AllowPaging="false"
                        OnRowCommand="gvTender_RowCommand"
                        runat="server" Width="100%">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton CssClass="btn btn-danger" ID="btnSelect" CommandArgument='<% #Eval("TenderId") %>' CommandName="S" runat="server"><i class="fa fa-hand-o-up"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Heading" DataField="Heading" SortExpression="Heading" />
                            <asp:BoundField HeaderText="Description" DataField="Description" SortExpression="Description" />
                            <asp:BoundField HeaderText="About Price" DataField="AboutPrice" SortExpression="AboutPrice" />
                            <%--<asp:BoundField HeaderText="Is Active" DataField="IsActive" SortExpression="IsActive" />--%>
                            <asp:TemplateField HeaderText="Link">
                                <ItemTemplate>
                                    <a href='<% #Eval("Link") %>' id="aLink" runat="server">Link</a>
                                    <%--<asp:LinkButton CssClass="btn btn-danger" ID="btnSelect" CommandArgument='<% #Eval("TenderId") %>' CommandName="S" runat="server"><i class="fa fa-hand-o-up"></i></asp:LinkButton>--%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <%--<asp:BoundField HeaderText="Link" DataField="Link" SortExpression="Link" />--%>
                            <asp:BoundField HeaderText="Last Date" DataField="LastDate" SortExpression="LastDate" DataFormatString="{0:dd/MMM/yyyy}" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

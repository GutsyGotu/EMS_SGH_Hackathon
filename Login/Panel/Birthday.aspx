<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Panel/Panel.Master" AutoEventWireup="true" CodeBehind="Birthday.aspx.cs" Inherits="EmployeeCRM.Login.Panel.Birthday" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="basic-form-layouts">
        <div class="row match-height">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">Birthday and Annyversary reminder</h4>
                        <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                    </div>
                    <div class="alert alert-deep-orange mb-2" role="alert" id="divAlert" runat="server" visible="false">
                    </div>
                    <asp:Label ID="lblId" Visible="false" runat="server" Text=""></asp:Label>
                    <div class="card-body collapse in">
                        <div class="card-block">
                            <div class="form">

                                <div class="form-body">

                                    <h4>Today's Birthday</h4>


                                    <div class="table-responsive">

                                        <asp:GridView ID="gvClient" AutoGenerateColumns="false" CssClass="table table-hover table-bordered"
                                            AllowPaging="true" AllowSorting="true" EmptyDataText="No birthday record found today" runat="server" OnRowCommand="gvClient_RowCommand">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Client Number/User Name">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="btnSelect" CssClass="btn-link" runat="server" Text='<% #Eval("ClientNumber") %>' CommandName="S" CommandArgument='<% #Eval("ClientId") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:BoundField HeaderText="Password" DataField="Password" SortExpression="Password" />
                                                <asp:BoundField HeaderText="First Name" DataField="FirstName" SortExpression="FirstName" />
                                                <asp:BoundField HeaderText="Last Name" DataField="LastName" SortExpression="LastName" />
                                                <asp:BoundField HeaderText="Mobile 1" DataField="Mobile1" SortExpression="Mobile1" />
                                                
                                                <asp:BoundField HeaderText="DOB" DataField="DOB" SortExpression="DOB" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderText="DOA" DataField="DOA" SortExpression="DOA" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderText="Email" DataField="Email" SortExpression="Email" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>

                                    <h4>Today's Annyversary</h4>


                                    <div class="table-responsive">

                                        <asp:GridView ID="gvAnniversary" AutoGenerateColumns="false" CssClass="table table-hover table-bordered"
                                            AllowPaging="true" AllowSorting="true" EmptyDataText="No annyversary record found today" runat="server" OnRowCommand="gvAnniversary_RowCommand">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Client Number/User Name">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="btnSelect" CssClass="btn-link" runat="server" Text='<% #Eval("ClientNumber") %>' CommandName="S" CommandArgument='<% #Eval("ClientId") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:BoundField HeaderText="Password" DataField="Password" SortExpression="Password" />
                                                <asp:BoundField HeaderText="First Name" DataField="FirstName" SortExpression="FirstName" />
                                                <asp:BoundField HeaderText="Last Name" DataField="LastName" SortExpression="LastName" />
                                                <asp:BoundField HeaderText="Mobile 1" DataField="Mobile1" SortExpression="Mobile1" />
                                                
                                                <asp:BoundField HeaderText="DOB" DataField="DOB" SortExpression="DOB" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderText="DOA" DataField="DOA" SortExpression="DOA" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderText="Email" DataField="Email" SortExpression="Email" />
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

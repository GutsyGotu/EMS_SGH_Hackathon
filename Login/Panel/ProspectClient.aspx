<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Panel/Panel.Master" AutoEventWireup="true" CodeBehind="ProspectClient.aspx.cs" Inherits="EmployeeCRM.Login.Panel.ProspectClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function ShowPopup() {
            $("#myModal .modal-title").html('Prospect Client');
            $("#myModal").modal("show");
        }
    </script>
    <script type="text/javascript">
        function ShowPopup1() {
            $("#myModal1 .modal-title").html('Quick Client Add');
            $("#myModal1").modal("show");
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="basic-form-layouts">
        <div class="row match-height">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form1">Validate Client</h4>
                        <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                    </div>
                    <div class="alert alert-deep-orange mb-2" role="alert" id="divAlert1" runat="server" visible="false">
                    </div>
                    <asp:Label ID="Label1" Visible="false" runat="server" Text=""></asp:Label>
                    <div class="card-body collapse in">
                        <div class="card-block">
                            <div class="form">
                                <div class="form-body">
                                    <%--<h4>Prospect Client List</h4>--%>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <label>*Mobile No</label>
                                            <asp:TextBox ID="txtMobile" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="col-md-2">
                                            <asp:Button ID="btnValidate" CssClass="btn btn-amber" OnClick="btnValidate_Click" runat="server" Text="Validate" />
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <h3>Similar Clients</h3>
                                        <asp:GridView ID="gvClientValidate" AutoGenerateColumns="false" CssClass="table table-hover table-bordered"
                                            AllowPaging="false" AllowSorting="false" runat="server" EmptyDataText="No such record(s) found">
                                            <Columns>
                                                <%--<asp:BoundField HeaderText="Client Number/User Name" DataField="ClientNumber" SortExpression="ClientNumber" />
                                                <asp:BoundField HeaderText="Password" DataField="Password" SortExpression="Password" />
                                                <asp:BoundField HeaderText="First Name" DataField="FirstName" SortExpression="FirstName" />
                                                <asp:BoundField HeaderText="Last Name" DataField="LastName" SortExpression="LastName" />
                                                <asp:BoundField HeaderText="Mobile 1" DataField="Mobile1" SortExpression="Mobile1" />
                                                <asp:BoundField HeaderText="DOB" DataField="DOB" SortExpression="DOB" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderText="Email" DataField="Email" SortExpression="Email" />
                                                <asp:BoundField HeaderText="Prospect Client" DataField="IsProspect" SortExpression="IsProspect" />--%>
                                                <asp:BoundField HeaderText="Client Number/User Name" DataField="ClientNumber" SortExpression="ClientNumber" />
                                                <asp:BoundField HeaderText="Password" DataField="Password" SortExpression="Password" />
                                                <asp:BoundField HeaderText="First Name" DataField="FirstName" SortExpression="FirstName" />
                                                <asp:BoundField HeaderText="Last Name" DataField="LastName" SortExpression="LastName" />
                                                <asp:BoundField HeaderText="Mobile 1" DataField="Mobile1" SortExpression="Mobile1" />
                                                <asp:BoundField HeaderText="Service Name" DataField="ServiceName" SortExpression="ServiceName" />
                                                <asp:BoundField HeaderText="Level 1 : NEW NAMES ADDED TO THE PROSPRCTING LIST" DataField="Level1" SortExpression="Level1" />
                                                <asp:BoundField HeaderText="Level 2 : FIRST APPOINTMENTS" DataField="Level2" SortExpression="Level2" />
                                                <asp:BoundField HeaderText="Level 3 : SALES IN PROCESS" DataField="Level3" SortExpression="Level3" />
                                                <asp:BoundField HeaderText="Level 4 : ACHIEVEMENT TO TARGET" DataField="Level4" SortExpression="Level4" />
                                                <asp:BoundField HeaderText="Level 5 : GROWTH IN NEW BUSINESS" DataField="Level5" SortExpression="Level5" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">Prospect Client</h4>
                        <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                    </div>
                    <div class="alert alert-deep-orange mb-2" role="alert" id="divAlert" runat="server" visible="false">
                    </div>
                    <asp:Label ID="lblId" Visible="false" runat="server" Text=""></asp:Label>
                    <div class="card-body collapse in">
                        <div class="card-block">
                            <div class="form">
                                <div class="form-body">
                                    <%--<h4>Prospect Client List</h4>--%>
                                    <div class="row">
                                        <div class="col-md-5">
                                            <label>
                                                Select Service
                                                (
                                                    <asp:LinkButton ID="lbtnClientAdd" OnClick="lbtnClientAdd_Click" runat="server">Quick add Client</asp:LinkButton>
                                                )
                                            </label>
                                            <asp:DropDownList ID="ddlService" CssClass="form-control" runat="server"></asp:DropDownList>
                                        </div>
                                        <div class="col-md-5">
                                            <label>Select Level</label>
                                            <asp:DropDownList ID="ddlLevel" CssClass="form-control" runat="server">
                                                <asp:ListItem Value="0">- - A L L - -</asp:ListItem>
                                                <asp:ListItem Value="1">Level 1 : NEW NAMES ADDED TO THE PROSPRCTING LIST</asp:ListItem>
                                                <asp:ListItem Value="2">Level 2 : FIRST APPOINTMENTS</asp:ListItem>
                                                <asp:ListItem Value="3">Level 3 : SALES IN PROCESS</asp:ListItem>
                                                <asp:ListItem Value="4">Level 4 : ACHIEVEMENT TO TARGET</asp:ListItem>
                                                <asp:ListItem Value="5">Level 5 : GROWTH IN NEW BUSINESS</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-md-2">
                                            <asp:Button ID="btnSearch" CssClass="btn btn-brown" OnClick="btnSearch_Click" runat="server" Text="Search" />
                                            <asp:Button ID="btnExport" CssClass="btn btn-blue" OnClick="btnExport_Click" runat="server" Text="Export" />
                                        </div>
                                    </div>
                                    <div class="table-responsive">

                                        <asp:GridView ID="gvClient" AutoGenerateColumns="false" CssClass="table table-hover table-bordered"
                                            AllowPaging="true" AllowSorting="true" EmptyDataText="No prospect client found" runat="server" OnRowCommand="gvClient_RowCommand"
                                            OnPageIndexChanging="gvClient_PageIndexChanging">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Make Permenant Client">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="btnSelect" CssClass="btn-link" runat="server" Text="Convert" CommandName="S" CommandArgument='<% #Eval("ClientId") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Delete">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="btnDelete" CssClass="btn-link" runat="server" Text="Delete" CommandName="D" CommandArgument='<% #Eval("ClientId") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField HeaderText="Client Number/User Name" DataField="ClientNumber" SortExpression="ClientNumber" />
                                                <asp:BoundField HeaderText="Password" DataField="Password" SortExpression="Password" />
                                                <asp:BoundField HeaderText="First Name" DataField="FirstName" SortExpression="FirstName" />
                                                <asp:BoundField HeaderText="Last Name" DataField="LastName" SortExpression="LastName" />
                                                <asp:BoundField HeaderText="Mobile 1" DataField="Mobile1" SortExpression="Mobile1" />
                                                <asp:BoundField HeaderText="Service Name" DataField="ServiceName" SortExpression="ServiceName" />
                                                <asp:BoundField HeaderText="Level 1 : NEW NAMES ADDED TO THE PROSPRCTING LIST" DataField="Level1" SortExpression="Level1" />
                                                <asp:BoundField HeaderText="Level 2 : FIRST APPOINTMENTS" DataField="Level2" SortExpression="Level2" />
                                                <asp:BoundField HeaderText="Level 3 : SALES IN PROCESS" DataField="Level3" SortExpression="Level3" />
                                                <asp:BoundField HeaderText="Level 4 : ACHIEVEMENT TO TARGET" DataField="Level4" SortExpression="Level4" />
                                                <asp:BoundField HeaderText="Level 5 : GROWTH IN NEW BUSINESS" DataField="Level5" SortExpression="Level5" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                    <h4>Summary</h4>
                                    <div class="table table-responsive">
                                        <%--<asp:DetailsView ID="dvSummary" runat="server" AutoGenerateRows="false" Width="50%" CssClass="table table-bordered">
                                            <Fields>
                                                <asp:BoundField HeaderText="Level 1 : NEW NAMES ADDED TO THE PROSPRCTING LIST" DataField="Level1" SortExpression="Level1" />
                                                <asp:BoundField HeaderText="Level 2 : FIRST APPOINTMENTS" DataField="Level2" SortExpression="Level2" />
                                                <asp:BoundField HeaderText="Level 3 : SALES IN PROCESS" DataField="Level3" SortExpression="Level3" />
                                                <asp:BoundField HeaderText="Level 4 : ACHIEVEMENT TO TARGET" DataField="Level4" SortExpression="Level4" />
                                                <asp:BoundField HeaderText="Level 5 : GROWTH IN NEW BUSINESS" DataField="Level5" SortExpression="Level5" />
                                            </Fields>
                                        </asp:DetailsView>--%>
                                        <asp:GridView ID="gvSummary" AutoGenerateColumns="true" Width="100%" CssClass="table table-hover" runat="server"></asp:GridView>
                                    </div>
                                    <div id="myModal" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title">Prospect Client</h4>
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col-md-8">
                                                            <div class="col-md-12">
                                                                <asp:CheckBox ID="chk1" Text=" Level 1 : NEW NAMES ADDED TO THE PROSPRCTING LIST" runat="server" />
                                                            </div>
                                                            <div class="col-md-12">
                                                                <asp:CheckBox ID="chk2" Text=" Level 2 : FIRST APPOINTMENTS" runat="server" />
                                                            </div>
                                                            <div class="col-md-12">
                                                                <asp:CheckBox ID="chk3" Text=" Level 3 : SALES IN PROCESS" runat="server" />
                                                            </div>
                                                            <div class="col-md-12">
                                                                <asp:CheckBox ID="chk4" Text=" Level 4 : ACHIEVEMENT TO TARGET" runat="server" />
                                                            </div>
                                                            <div class="col-md-12">
                                                                <asp:CheckBox ID="chk5" Text=" Level 5 : GROWTH IN NEW BUSINESS" runat="server" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <asp:TextBox ID="txtRemarks" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <asp:Button ID="btnUpdate" CssClass="btn btn-warning" OnClick="btnUpdate_Click" runat="server" Text="Update" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="myModal1" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title">Client add</h4>
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <label>First Name*</label>
                                                                <asp:TextBox ID="txtFirstName" CssClass="form-control" placeholder="First Name" runat="server"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <label>Middle Name</label>
                                                                <asp:TextBox ID="txtMiddleName" CssClass="form-control" placeholder="Middle Name" runat="server"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <label>Last Name</label>
                                                                <asp:TextBox ID="txtLastName" CssClass="form-control" placeholder="Last Name" runat="server"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <label>Mobile*</label>
                                                                <asp:TextBox ID="txtMobile1" CssClass="form-control" placeholder="Mobile" runat="server"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <label>Service*</label>
                                                                <asp:DropDownList ID="ddlService1" CssClass="form-control" runat="server"></asp:DropDownList>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <asp:Button ID="btnQuickAdd" runat="server" CssClass="btn btn-primary" OnClick="btnQuickAdd_Click" Text="Quick Add" />
                                                </div>
                                            </div>
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Client/Client.Master" AutoEventWireup="true" CodeBehind="PreviousInsuranceHistory.aspx.cs" Inherits="EmployeeCRM.Login.Client.PreviousInsuranceHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="basic-form-layouts">
        <div class="row match-height">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">Previous Insurance History</h4>
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
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Branch</label>
                                                <asp:TextBox ID="txtBranch" CssClass="form-control" placeholder="Branch" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Policy Number</label>
                                                <asp:TextBox ID="txtPolicyNumber" CssClass="form-control" placeholder="Policy Number" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>DOC</label>
                                                <asp:TextBox ID="txtDOC" CssClass="form-control" placeholder="DOC" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Sum Insured</label>
                                                <asp:TextBox ID="txtSumInsured" CssClass="form-control" TextMode="Number" placeholder="Sum Insured" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Plan</label>
                                                <asp:TextBox ID="txtPlan" CssClass="form-control" placeholder="Plan" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Term</label>
                                                <asp:TextBox ID="txtTerm" CssClass="form-control" placeholder="Term" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Mode</label>
                                                <asp:TextBox ID="txtMode" CssClass="form-control" placeholder="Mode" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Medical</label>
                                                <asp:TextBox ID="txtMedical" CssClass="form-control" placeholder="Medical" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>DAB</label>
                                                <asp:TextBox ID="txtDAB" CssClass="form-control" placeholder="DAB" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Policy Status</label>
                                                <asp:TextBox ID="txtPolicyStatus" CssClass="form-control" placeholder="Policy Status" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-actions">

                                        <asp:Button ID="btnSubmit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" runat="server" Text="Submit" />
                                        <asp:Button ID="btnUpdate" Visible="false" CssClass="btn btn-primary" OnClick="btnUpdate_Click" runat="server" Text="Update" />
                                        <asp:Button ID="btnDelete" Visible="false" CssClass="btn btn-primary" OnClick="btnDelete_Click" runat="server" Text="Delete" />
                                        <asp:Button ID="btnCancel" CssClass="btn btn-primary" OnClick="btnCancel_Click" runat="server" Text="Cancel" />
                                    </div>
                                    <div class="table-responsive">
                                        <asp:GridView ID="gvPreviousInsuranceHistory" AutoGenerateColumns="false" CssClass="table table-hover table-bordered"
                                            AllowPaging="true" OnPageIndexChanging="gvPreviousInsuranceHistory_PageIndexChanging" OnRowCommand="gvPreviousInsuranceHistory_RowCommand"
                                            OnSorting="gvPreviousInsuranceHistory_Sorting" AllowSorting="true" runat="server">
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="btnSelect" CssClass="btn-link" runat="server" Text="Select" CommandArgument='<% #Eval("PreviousInsuranceHistoryId") %>' CommandName="S" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField HeaderText="Branch" DataField="Branch" SortExpression="Branch" />
                                                <asp:BoundField HeaderText="Policy Number" DataField="PolicyNumber" SortExpression="PolicyNumber" />
                                                <asp:BoundField HeaderText="DOC" DataField="DOC" SortExpression="DOC" />
                                                <asp:BoundField HeaderText="Sum Insured" DataField="SumInsured" SortExpression="SumInsured" />
                                                <asp:BoundField HeaderText="Plan" DataField="Plan" SortExpression="Plan" />
                                                <%--<asp:BoundField HeaderText="DOB" DataField="DOB" SortExpression="DOB" DataFormatString="{0:dd/MMM/yyyy}" />--%>
                                                <asp:BoundField HeaderText="Term" DataField="Term" SortExpression="Term" />
                                                <asp:BoundField HeaderText="Mode" DataField="Mode" SortExpression="Mode" />
                                                <asp:BoundField HeaderText="Medical" DataField="Medical" SortExpression="Medical" />
                                                <asp:BoundField HeaderText="DAB" DataField="DAB" SortExpression="DAB" />
                                                <asp:BoundField HeaderText="Policy Status" DataField="PolicyStatus" SortExpression="PolicyStatus" />
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

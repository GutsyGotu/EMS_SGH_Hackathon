<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Panel/Panel.Master" AutoEventWireup="true" CodeBehind="SpouseInsuranceHistory.aspx.cs" Inherits="EmployeeCRM.Login.Panel.SpouseInsuranceHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../app-assets/js/core/libraries/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#ddlClient").select2();
        });

        function printDiv(divName) {
            var printContents = document.getElementById(divName).innerHTML;
            var originalContents = document.body.innerHTML;
            document.body.innerHTML = printContents;
            window.print();
            document.body.innerHTML = originalContents;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="basic-form-layouts">
        <div class="row match-height">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">Family Insurance History</h4>
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
                                                <label>
                                                    Select Client* 
                                                </label>
                                                <asp:DropDownList ID="ddlClient" ClientIDMode="Static" data-placeholder="Choose a Client..." CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                         <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Relationship*</label>
                                                <asp:TextBox ID="txtRelationship" CssClass="form-control" placeholder="Husband,Wife,Father,Mother etc" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4" >
                                            <div class="form-group">
                                                <label>Name*</label>
                                                <asp:TextBox ID="txtSpouseName" CssClass="form-control" placeholder="SpouseName" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4" >
                                            <div class="form-group">
                                                <label>Profession</label>
                                                <asp:TextBox ID="txtProfession" CssClass="form-control" placeholder="Profession" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4" >
                                            <div class="form-group">
                                                <label>Yearly Income</label>
                                                <asp:TextBox ID="txtYearlyIncome" CssClass="form-control" TextMode="Number" placeholder="Yearly Income" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Policy Number*</label>
                                                <asp:TextBox ID="txtPolicyNumber" CssClass="form-control" placeholder="Policy Number" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Branch</label>
                                                <asp:TextBox ID="txtBranch" CssClass="form-control" placeholder="Branch" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Sum Insured*</label>
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
                                                <label>Current Status*</label>
                                                <asp:TextBox ID="txtCurrentStatus" CssClass="form-control" placeholder="Current Status" runat="server"></asp:TextBox>
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
                                        <asp:GridView ID="gvSpouseInsuranceHistory" AutoGenerateColumns="false" CssClass="table table-hover table-bordered"
                                            AllowPaging="true" OnPageIndexChanging="gvSpouseInsuranceHistory_PageIndexChanging" OnRowCommand="gvSpouseInsuranceHistory_RowCommand"
                                            OnSorting="gvSpouseInsuranceHistory_Sorting" AllowSorting="true" runat="server">
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="btnSelect" CssClass="btn-link" runat="server" Text="Select" CommandArgument='<% #Eval("SpouseInsuranceHistoryId") %>' CommandName="S" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField HeaderText="Relation" DataField="Relation" SortExpression="Relation" />
                                                <asp:BoundField HeaderText="Name" DataField="SpouseName" SortExpression="SpouseName" />
                                                <asp:BoundField HeaderText="Profession" DataField="Profession" SortExpression="Profession" />
                                                <asp:BoundField HeaderText="Yearly Income" DataField="YearlyIncome" SortExpression="YearlyIncome" />
                                                <asp:BoundField HeaderText="Policy Number" DataField="PolicyNumber" SortExpression="PolicyNumber" />
                                                <asp:BoundField HeaderText="Branch" DataField="Branch" SortExpression="Branch" />
                                                <asp:BoundField HeaderText="Sum Insured" DataField="SumInsured" SortExpression="SumInsured" />
                                                <asp:BoundField HeaderText="Plan" DataField="Plan" SortExpression="Plan" />
                                                <%--<asp:BoundField HeaderText="DOB" DataField="DOB" SortExpression="DOB" DataFormatString="{0:dd/MMM/yyyy}" />--%>
                                                <asp:BoundField HeaderText="Term" DataField="Term" SortExpression="Term" />
                                                <asp:BoundField HeaderText="CurrentStatus" DataField="CurrentStatus" SortExpression="CurrentStatus" />
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

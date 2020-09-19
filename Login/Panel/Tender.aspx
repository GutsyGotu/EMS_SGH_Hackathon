<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Panel/Panel.Master" AutoEventWireup="true" CodeBehind="Tender.aspx.cs" Inherits="EmployeeCRM.Login.Panel.Tender" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function printDiv(divName) {
            var printContents = document.getElementById(divName).innerHTML;
            var originalContents = document.body.innerHTML;
            document.body.innerHTML = printContents;
            window.print();
            document.body.innerHTML = originalContents;
        }
    </script>
    <script src="../../assets/js/jquery-2.2.4.min.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="basic-form-layouts">
        <div class="row match-height">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">Tender</h4>
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
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>*Heading</label>
                                                <asp:TextBox ID="txtHeading" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Description</label>
                                                <asp:TextBox ID="txtDescription" CssClass="form-control" placeholder="Description" TextMode="MultiLine" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>*About Price</label>
                                                <asp:TextBox ID="txtAboutPrice" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Last Date</label>
                                                <asp:TextBox ID="txtLastDate" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Link</label>
                                                <asp:TextBox ID="txtLink" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Is Active</label>
                                                <asp:CheckBox ID="chkIsActive" runat="server" />
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
                                        <div style="text-align: right;" class="col-md-3 offset-md-6">
                                            <asp:TextBox ID="txtSearch" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <div style="text-align: right;" class="col-md-3">
                                            <asp:Button ID="btnSearch" CssClass="btn btn-outline-blue" OnClick="btnSearch_Click" runat="server" Text="Search" />
                                            <asp:Button ID="btnExport" runat="server" Text="Export" CssClass="btn btn-outline-success" OnClick="btnExport_Click" />
                                            <button class="btn btn-outline-warning" onclick="printDiv('div')">Print</button>
                                        </div>
                                        <div class="col-md-12">
                                            <br />
                                        </div>
                                        <div class="table-responsive" id="div">
                                            <h4>Tender List</h4>
                                            <asp:GridView ID="gvTender" AutoGenerateColumns="false" CssClass="table table-hover table-bordered" AllowSorting="true" AllowPaging="true"
                                                OnRowCommand="gvTender_RowCommand" OnPageIndexChanging="gvTender_PageIndexChanging" OnSorting="gvTender_Sorting"
                                                runat="server" Width="100%" OnRowDataBound="gvTender_RowDataBound">
                                                <Columns>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:LinkButton CssClass="btn-link" ID="btnSelect" CommandArgument='<% #Eval("TenderId") %>' CommandName="S" runat="server" Text="Select" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="View">
                                                        <ItemTemplate>
                                                            <img alt="" style="cursor: pointer" class="myButton" src="../../images/plus.png" />
                                                            <asp:Label ID="lblTenderId" Visible="false" runat="server" Text='<% #Eval("TenderId") %>'></asp:Label>
                                                            <asp:Panel ID="pnlOrders" runat="server" Style="display: none">
                                                                <h4 class="title-default-left title-bar-high">Tender Applications</h4>
                                                                <asp:GridView ID="gvTenderApplication" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered" Width="100%">
                                                                    <Columns>
                                                                        <asp:BoundField HeaderText="Name" DataField="Name" />
                                                                        <asp:BoundField HeaderText="Mobile" DataField="Mobile" />
                                                                        <asp:BoundField HeaderText="Address" DataField="Address" />
                                                                        <asp:BoundField HeaderText="Email" DataField="Email" />
                                                                        <asp:BoundField HeaderText="Website" DataField="Website" />
                                                                        <asp:BoundField HeaderText="Firm" DataField="Firm" />
                                                                        <asp:BoundField HeaderText="About" DataField="About" />
                                                                        <asp:BoundField HeaderText="Proposal" DataField="Proposal" />
                                                                    </Columns>
                                                                </asp:GridView>
                                                            </asp:Panel>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField HeaderText="Heading" DataField="Heading" SortExpression="Heading" />
                                                    <asp:BoundField HeaderText="Description" DataField="Description" SortExpression="Description" />
                                                    <asp:BoundField HeaderText="About Price" DataField="AboutPrice" SortExpression="AboutPrice" />
                                                    <asp:BoundField HeaderText="Is Active" DataField="IsActive" SortExpression="IsActive" />
                                                    <asp:BoundField HeaderText="Link" DataField="Link" SortExpression="Link" />
                                                    <asp:BoundField HeaderText="Entry Date" DataField="EntryDate" SortExpression="EntryDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                    <asp:BoundField HeaderText="Last Date" DataField="LastDate" SortExpression="LastDate" DataFormatString="{0:dd/MMM/yyyy}" />
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
        </div>
    </section>
     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $("[src*=minus]").on("click", function () {

            if ($(this).attr("src") == "../../images/minus.png") {
                $(this).attr("src", "../../images/plus.png");
                $(this).closest("tr").next().remove();
            }
            else {
                $(this).closest("tr").after("<tr><td></td><td colspan = '999'>" + $(this).next().html() + "</td></tr>")
                $(this).attr("src", "../../images/minus.png");
            }
        });
        $("[src*=plus]").on("click", function () {

            if ($(this).attr("src") == "../../images/minus.png") {
                $(this).attr("src", "../../images/plus.png");
                $(this).closest("tr").next().remove();
            }
            else {
                $(this).closest("tr").after("<tr><td></td><td colspan = '999'>" + $(this).next().html() + "</td></tr>")
                $(this).attr("src", "../../images/minus.png");
            }
        });

    </script>
</asp:Content>

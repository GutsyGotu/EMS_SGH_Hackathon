<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Panel/Panel.Master" AutoEventWireup="true" CodeBehind="ServiceNotUsedReport.aspx.cs" Inherits="EmployeeCRM.Login.Panel.ServiceNotUsedReport" %>

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
                        <h4 class="card-title" id="basic-layout-form">Services Not Used Report</h4>
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
                                                <label>Select Client</label>
                                                <asp:DropDownList ID="ddlClient" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <br />
                                                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-blue" OnClick="btnSearch_Click" />
                                                <asp:Button ID="btnExport" runat="server" Text="Export" CssClass="btn btn-success" OnClick="btnExport_Click" />
                                                <button class="btn btn-outline-warning" onclick="printDiv('div')">Print</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="table-responsive" id="div">
                                        <h4>Sales</h4>
                                        <asp:GridView ID="gvSales" AutoGenerateColumns="false" CssClass="table table-hover table-bordered"
                                            runat="server" Width="100%">
                                            <Columns>

                                                <asp:BoundField HeaderText="Client Name" DataField="ClientName" SortExpression="ClientName" />
                                                <asp:BoundField HeaderText="Service Name" DataField="ServiceName" SortExpression="ServiceName" />

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

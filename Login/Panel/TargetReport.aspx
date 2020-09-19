<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Panel/Panel.Master" AutoEventWireup="true" CodeBehind="TargetReport.aspx.cs" Inherits="EmployeeCRM.Login.Panel.TargetReport" %>

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
                        <h4 class="card-title" id="basic-layout-form">Target Report</h4>
                        <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                    </div>
                    <div class="alert alert-deep-orange mb-2" role="alert" id="divAlert" runat="server" visible="false">
                    </div>
                    <asp:Label ID="lblId" Visible="false" runat="server" Text=""></asp:Label>
                    <div class="card-body collapse in">
                        <div class="card-block">
                            <div class="form">
                                <div class="form-body">
                                    <div class="table-responsive">
                                        <div style="text-align: right;" class="col-md-3 offset-md-6">
                                            <asp:TextBox ID="txtSearch" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <div style="text-align: right;" class="col-md-3">
                                            <asp:Button ID="btnSearch" CssClass="btn btn-outline-blue" OnClick="btnSearch_Click" runat="server" Text="Search" />
                                            <asp:Button ID="btnExport" runat="server" Text="Export" CssClass="btn btn-outline-success" OnClick="btnExport_Click" />
                                            <%--<button class="btn btn-outline-warning" onclick="printDiv('div')">Print</button>--%>
                                        </div>
                                        <div class="col-md-12">
                                            <br />
                                        </div>
                                        <asp:GridView ID="gvTarget" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" CssClass="table table-hover table-bordered"
                                            OnPageIndexChanging="gvTarget_PageIndexChanging" OnRowDataBound="gvTarget_RowDataBound"
                                            OnSorting="gvTarget_Sorting" runat="server" Width="100%" EmptyDataText="No records Found">
                                            <Columns>
                                                <asp:BoundField HeaderText="Service Name" DataField="ServiceName" SortExpression="ServiceName" />
                                                <asp:BoundField HeaderText="Employee Name" DataField="FullName" SortExpression="FullName" />
                                                <asp:BoundField HeaderText="Start Date" DataField="StartDate" SortExpression="StartDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderText="End Date" DataField="EndDate" SortExpression="EndDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:TemplateField HeaderText="Target Amount" SortExpression="Amount">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblAmount" runat="server" Text='<% #Eval("Amount") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Target Achieved" SortExpression="Achieved">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblAchieved" runat="server" Text='<% #Eval("Achieved") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <%--<asp:BoundField HeaderText="Target Amount" DataField="Amount" SortExpression="Amount" />--%>
                                                <%--<asp:BoundField HeaderText="Target Achieved" DataField="Achieved" SortExpression="Achieved" />--%>
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

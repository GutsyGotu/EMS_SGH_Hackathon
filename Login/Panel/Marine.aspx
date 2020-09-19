<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Panel/Panel.Master" AutoEventWireup="true" CodeBehind="Marine.aspx.cs" Inherits="EmployeeCRM.Login.Panel.Marine" %>

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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="basic-form-layouts">
        <div class="row match-height">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">Marine </h4>
                        <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                    </div>
                    <div class="alert alert-deep-orange mb-2" role="alert" id="divAlert" runat="server" visible="false">
                    </div>
                    <asp:Label ID="lblId" Visible="false" runat="server" Text=""></asp:Label>
                    <div class="card-body collapse in">
                        <div class="card-block">
                            <div class="form">
                                <div class="form-body">
                                    <div>

                                        <div id="printDiv">
                                            <table class="table table-hover" style="width: 100%">
                                                <tr>
                                                    <td colspan="2">
                                                        <center>THE ORIENTAL INSURANCE COMPANY LIMITED
                        <br /><br />
                        MARINE QUESTIONAIRE FORM
                        <br /><br />
                        (SINGLE JOURNEY/OPEN POLICY)<br /><br /></center>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>AGENT CODE : </td>
                                                    <td>BB0000002521</td>
                                                </tr>
                                                <tr>
                                                    <td>AGENT NAME : </td>
                                                    <td>SHRIKRUSHNA RAGHUVIRDAS MAHANT</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>1.	NAME & ADRESS OF INSURED:</td>
                                                    <td>
                                                        <asp:TextBox ID="lblNameAddress" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>2. 	L.R.NO/R.R.NO./B.L.NO. & DAVE:</td>
                                                    <td>
                                                        <asp:TextBox ID="lblLRNo" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>3. 	INV. NO. & DATE:</td>
                                                    <td>
                                                        <asp:TextBox ID="lblINVDate" TextMode="Date" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>4.	NAME OF THE VESSEL:</td>
                                                    <td>
                                                        <asp:TextBox ID="lblVesselName" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>5.	MODE OF TRANSIT:<%--	BY SEA / ROAD / RAIL / AIR--%>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="lblMode" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>6.	COMMODITY TO INSURED:</td>
                                                    <td>
                                                        <asp:TextBox ID="lblCommodity" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>7. 	AMT. OF INSURANCE:</td>
                                                    <td>
                                                        <asp:TextBox ID="lblAmt" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>8. 	TYPE OF PAKING:</td>
                                                    <td>
                                                        <asp:TextBox ID="lblParkingType" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>9. 	PLACE OF ORIGIN:</td>
                                                    <td>
                                                        <asp:TextBox ID="lblOrigin" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>10. 	PLACE OF DESTATIONATION	:</td>
                                                    <td>
                                                        <asp:TextBox ID="lblDestimation" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>11.	TYPE OF COVER TO BE REQUIRED:</td>
                                                    <td>
                                                        <asp:TextBox ID="lblCoverType" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>12. 	TYPE OF SALE CONTRACT:</td>
                                                    <td>
                                                        <asp:TextBox ID="lblSalesType" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>13.	PREIMIUM AMOUNT</td>
                                                    <td>: 	BASIC :
                        <asp:TextBox ID="lblBasic" runat="server"></asp:TextBox></td>
                                                </tr>

                                                <tr>
                                                    <td></td>
                                                    <td>:	WAE & SRCC : 
                        <asp:TextBox ID="lblWAE" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>:	S.D. : 
                        <asp:TextBox ID="lblSD" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>: TOTAL : 
                        <asp:TextBox ID="lblTotal" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>14. ADDITIONAL INFORMATION:	
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="lblAdditional" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>SIGNATURE OF PROPOSAR</td>
                                                    <td>SIGNATURE OF AGENT </td>
                                                </tr>
                                                <tr>
                                                    <td>DATE :</td>
                                                    <td>PLACE :</td>
                                                </tr>

                                            </table>
                                        </div>

                                        <div class="form-actions">

                                            <asp:Button ID="btnSubmit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" runat="server" Text="Submit" />
                                            <asp:Button ID="btnUpdate" Visible="false" CssClass="btn btn-primary" OnClick="btnUpdate_Click" runat="server" Text="Update" />
                                            <asp:Button ID="btnDelete" Visible="false" CssClass="btn btn-primary" OnClick="btnDelete_Click" runat="server" Text="Delete" />
                                            <asp:Button ID="btnCancel" CssClass="btn btn-primary" OnClick="btnCancel_Click" runat="server" Text="Cancel" />
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
                                                <asp:GridView ID="gvMarine" AutoGenerateColumns="false" CssClass="table table-hover table-bordered"
                                                    AllowPaging="true" OnPageIndexChanging="gvMarine_PageIndexChanging" OnRowCommand="gvMarine_RowCommand"
                                                    OnSorting="gvMarine_Sorting" AllowSorting="true" runat="server">
                                                    <Columns>
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="btnSelect" CssClass="btn-link" runat="server" Text="Select" CommandName="S" CommandArgument='<% #Eval("MarineId") %>' />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="btnPrint" CssClass="btn-link" runat="server" Text="Print" CommandArgument='<% #Eval("MarineId") %>' CommandName="P" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:BoundField HeaderText="Name / Address" DataField="NameAddress" SortExpression="NameAddress" />

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
        </div>
    </section>
</asp:Content>

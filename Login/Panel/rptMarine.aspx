<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rptMarine.aspx.cs" Inherits="EmployeeCRM.Login.Panel.rptMarine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .table {
            border: 1px solid #000;
            border-collapse: collapse;
            text-align: left;
            margin: -1px !important;
            margin-left: 0px !important;
            width: 100%;
        }

        .th, .td {
            border: 1px solid #555;
            border-collapse: collapse;
            margin: -1px !important;
            margin-left: 0px !important;
            padding: 0px !important;
            vertical-align: top;
        }

        span {
            font-weight: bold;
        }
    </style>
    <script>
        function printDiv(divName) {
            var printContents = document.getElementById(divName).innerHTML;
            var originalContents = document.body.innerHTML;
            document.body.innerHTML = printContents;
            window.print();
            document.body.innerHTML = originalContents;
        }
    </script>
</head>
<body style="font-family: Calibri; font-size: 15px;">
    <form id="form1" runat="server">
        <button onclick="printDiv('printDiv')">Print</button>
        <div id="printDiv">
            <table style="width: 100%">
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
                        <asp:Label ID="lblNameAddress" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>2. 	L.R.NO/R.R.NO./B.L.NO. & DAVE:</td>
                    <td>
                        <asp:Label ID="lblLRNo" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>3. 	INV. NO. & DATE:</td>
                    <td>
                        <asp:Label ID="lblINVDate" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>4.	NAME OF THE VESSEL:</td>
                    <td>
                        <asp:Label ID="lblVesselName" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>5.	MODE OF TRANSIT:<%--	BY SEA / ROAD / RAIL / AIR--%>
                    </td>
                    <td>
                        <asp:Label ID="lblMode" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>6.	COMMODITY TO INSURED:</td>
                    <td>
                        <asp:Label ID="lblCommodity" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>7. 	AMT. OF INSURANCE:</td>
                    <td>
                        <asp:Label ID="lblAmt" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>8. 	TYPE OF PAKING:</td>
                    <td>
                        <asp:Label ID="lblParkingType" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>9. 	PLACE OF ORIGIN:</td>
                    <td>
                        <asp:Label ID="lblOrigin" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>10. 	PLACE OF DESTATIONATION	:</td>
                    <td>
                        <asp:Label ID="lblDestimation" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>11.	TYPE OF COVER TO BE REQUIRED:</td>
                    <td>
                        <asp:Label ID="lblCoverType" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>12. 	TYPE OF SALE CONTRACT:</td>
                    <td>
                        <asp:Label ID="lblSalesType" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>13.	PREIMIUM AMOUNT</td>
                    <td>: 	BASIC :
                        <asp:Label ID="lblBasic" runat="server"></asp:Label></td>
                </tr>

                <tr>
                    <td></td>
                    <td>:	WAE & SRCC : 
                        <asp:Label ID="lblWAE" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td></td>
                    <td>:	S.D. : 
                        <asp:Label ID="lblSD" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td></td>
                    <td>: TOTAL : 
                        <asp:Label ID="lblTotal" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>14. ADDITIONAL INFORMATION:	
                    </td>
                    <td>
                        <asp:Label ID="lblAdditional" runat="server"></asp:Label></td>
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
    </form>
</body>
</html>

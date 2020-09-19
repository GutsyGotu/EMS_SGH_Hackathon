<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Panel/Panel.Master" AutoEventWireup="true" CodeBehind="CarIns.aspx.cs" Inherits="EmployeeCRM.Login.Panel.CarIns" %>

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
                        <h4 class="card-title" id="basic-layout-form">Car Insurance</h4>
                        <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                    </div>
                    <div class="alert alert-deep-orange mb-2" role="alert" id="divAlert" runat="server" visible="false">
                    </div>
                    <asp:Label ID="lblId" Visible="false" runat="server" Text=""></asp:Label>
                    <asp:Label ID="lblCompanyId" Visible="false" runat="server" Text=""></asp:Label>
                    <div class="card-body collapse in">
                        <div class="card-block">
                            <div class="form">
                                <div class="form-body">
                                    <div>

                                        <div id="printDiv">
                                            <table style="width: 100%" class="table table-hover">
                                                <tr>
                                                    <td style="text-align: right; width: 33%;">( भारत सरकार का उपक्रम )</td>
                                                    <td style="text-align: center; width: 33%;">
                                                        <img src="../../Images/obc.jpg" height="80px" /></td>
                                                    <td style="text-align: left; width: 33%;">
                                                        <h4>THE ORIENTAL INSURANCE COMPANY LIMITED</h4>
                                                        (A Government of India Undertaking)
                                                    </td>
                                                </tr>
                                            </table>
                                            <center>ओरिएंटल हाउस पीबी नंबर 7037, ए -25 / 27, आसफ अली रोड, नई दिल्ली -110 002</center>
                                            <center>ORIENTAL HOUSE P.B No. 7037, A-25/27, ASSAFALI ROAD, NEW DELHI-110 002</center>
                                            <table style="width: 100%;">
                                                <tr>
                                                    <td style="text-align: center;">Website : www.orientalinsurance.org.in</td>
                                                    <td style="text-align: center;">CIN-U66010DL1947G0I007158</td>
                                                </tr>
                                            </table>
                                            <center><b>Toll Free Number : 1800118485 | Non Toll Free Number : 011-33208485</b></center>
                                            <center style="border: 1px solid black; background-color: black; color: white; font-weight: bold;"><h3>PROPOSAL FORM FOR CARS / MOTORISED TWO WHEELERS PACKAGE POLICY AND  LIABILITY ONLY POLICY</h3></center>
                                            <div><i>(The queries made/detaials stated below are the minimum requirements to be furnished by a Proposer. The Issuer may seek any Other information as desired for underwriting purpose.</i></div>
                                            <table class="table table-hover">
                                                <tr>
                                                    <td><b>Proposer's (Owner's) Full Name</b> :
                        <asp:TextBox ID="lblFullName" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>Address (Address where vehicle is normally kept and used)</b> :
                        <asp:TextBox ID="lblAddress" TextMode="MultiLine" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>PinCode</b> :
                        <asp:TextBox ID="lblPinCode" runat="server" Text=""></asp:TextBox>
                                                        &nbsp;&nbsp; <b>Tel.No.</b> :
                        <asp:TextBox ID="lblTelNo" runat="server" Text=""></asp:TextBox>
                                                        &nbsp;&nbsp; <b>Fax.No.</b> :
                        <asp:TextBox ID="lblFaxNo" runat="server" Text=""></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><b>E-Mail Address</b> :
                        <asp:TextBox ID="lblEmail" runat="server" Text=""></asp:TextBox>
                                                        &nbsp;&nbsp; <b>Occupation / Business</b> :
                        <asp:TextBox ID="lblOccupation" runat="server" Text=""></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><b>Type of Cover required : </b>
                                                        <asp:TextBox ID="lblTypeOfCoverRequired" Width="300px" runat="server" placeholder="Liability Only Policy / Package Policy / Other (soecify)" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>Period of Insurance : From</b> &nbsp;
                        <asp:TextBox ID="lblFromInsurance" TextMode="Date" runat="server" Text=""></asp:TextBox>
                                                        &nbsp;&nbsp; <b>To.</b> &nbsp;
                        <asp:TextBox ID="lblToInsurance" TextMode="Date" runat="server" Text=""></asp:TextBox>
                                                    </td>
                                                </tr>
                                            </table>
                                            <table class="table table-hover">
                                                <tr>
                                                    <td><b>1.  Registration No. and Date of Reistration of Vehicle</b>  :</td>
                                                    <td>
                                                        <asp:TextBox ID="lblRegNo" runat="server" Text=""></asp:TextBox></td>

                                                </tr>
                                                <tr>
                                                    <td><b>2.  Registring Authority & Location</b> :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="lblRegAuthority" TextMode="MultiLine" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <b>3.  Year of Manufacture</b> :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="lblYearOfManufacture" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <b>4.  Engine No</b> :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="lblEngineNo" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <b>5.  Chassis No</b> :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="lblChassisNo" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <b>6.  Make of Vehicle</b> :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="lblMakeOfVehicle" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <b>7.  Type of Body/Model</b> :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="lblTypeOfBody" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <b>8.  Cubic Capacity</b> :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="lblCubicCapacity" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <b>9.  Seating capacity including driver</b> :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="lblSeatingCapacity" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <b>10. Wheather the vehicle is driven by non-conventional Source of power</b> :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="lblNonConventional" runat="server" placeholder="Yes / No" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if Yes, Please give details</b> :
                   
                        <asp:TextBox ID="lblNonConYes" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <b>11. Wheather the vehicle is used for the driving tutions.</b> :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="lblDrivingTution" runat="server" placeholder="Yes / No" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <b>12. Wheather the extension of geographical area to the following Countries required ?
                    <br />
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bangladesh, Bhutan, Maldives, Nepal, Pakistan and Sri Lanka.
                                                        </b>:
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="lblGeo" runat="server" placeholder="Yes / No" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right;"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If "Yes" State the name of the Countries 1)</b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblGeo1" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right;"><b>2)</b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblGeo2" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right;"><b>3)</b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblGeo3" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>13. Whether use of vehicle is limited to own premises?</b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblUseOfVehicle" runat="server" placeholder="Yes / No" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>14. Whether vehicle is used for Commercial Purpose?</b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblCommercial" runat="server" placeholder="Yes / No" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>15. Whether vehicle belongs to foreign embassy / consulate?</b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblForeignEmbassy" runat="server" placeholder="Yes / No" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>16. Whether the car is certified as Vintage car by Vintage and Classic Car Club of India?</b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblVintage" runat="server" placeholder="Yes / No" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>17. Whether vehicle is designed for use of Blind/Handicapped/Mentally challenged persons andduty endorsed as such by RTA?</b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblBlind" runat="server" placeholder="Yes / No" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>18. Whether the vehicle is fitted with fibre glass tank?</b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblFibre" runat="server" placeholder="Yes / No" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>19. Do you wish to opt higher deductible over and above the compulsory deductible (Rs. 50/- for Two Wheelere and  Rs. 500/-,Rs. 1000/- for Private Cars)?</b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblHigherDeductible" placeholder="Yes / No" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right;"><b>If Yes, Please specify the amount (For two wheelers) Rs.</b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblTwoWheelereAmt" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>(For private cars)</b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblPrivateCarAmt" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>20. Are you a member of Automobile Association of India?</b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblAutomobileAssociation" runat="server" placeholder="Yes / No" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If Yes, please state<br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a. Name of Association :
                        <asp:TextBox ID="lblNameOfAssociation" runat="server" Text=""></asp:TextBox><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b. Membership No. :
                        <asp:TextBox ID="lblMembershipNo" runat="server" Text=""></asp:TextBox><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;c. Date of Expire : 
                        <asp:TextBox ID="lblDateOfExpire" runat="server" TextMode="Date" Text=""></asp:TextBox>
                                                    </b></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td><b>21. Are you Entitled to a No Claim Bonus?<br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If Yes, Please submit the proof thereof.
                                                    </b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblNoClaimBonus" runat="server" placeholder="Yes / No" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>22. Is the vehicle fitted with the any Anti-theft device approved by the AARI?<br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If Yes, attach Certificate of Installation in the vehicle issued by Automobile Association of India
                                                    </b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblAntiTheft" runat="server" placeholder="Yes / No" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>23. Lability of Third Parties<br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The policy provides Third Party Property Damage (TPPD) of Rs. 1 lakh/-
                        <br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Two Wheelers) and Rs. 7.5 lakhs (Private Cars)
                                                    </b></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Do you wish to restrict the above limits to  the statutory TPPD Liability limit of Rs. 6000/- only?
                                                    </b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblRestrictLimit" runat="server" placeholder="Yes / No" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>24. Do you wish to cover Legal Liability to ?<br />
                                                    </b></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A) Driver (No. of persons
                        <asp:TextBox ID="lblDriverNoOfPerson" runat="server" Text=""></asp:TextBox>)
                                                    </b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblLiabilityDriver" runat="server" placeholder="Yes / No" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B) Other Employees (No. of persons
                        <asp:TextBox ID="lblEmployeesNoOfPerson" runat="server" Text=""></asp:TextBox>)
                                                    </b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblLiabilityEmployees" runat="server" placeholder="Yes / No" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C) Unnamed Passangers (No. of persons
                        <asp:TextBox ID="lblPassangersNoOfPerson" runat="server" Text=""></asp:TextBox>)
                                                    </b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblLiabilityPassanger" runat="server" placeholder="Yes / No" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>
                                                        <hr />
                                                    </b>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><b>25. Do you wish to include Personal Accident (P.A.) Cover for Named Persons ?
                                                    </b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblPA" runat="server" placeholder="Yes / No" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If yes, give name and Capital Sum Insured(CSI) opted for. The maximum CSI available per person is Rs. 2 lakhs in the case of Private cars and Rs. 1 lakh in the case of Motorised two wheelers.
                                                    </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <table style="width: 100%">
                                                            <tr>
                                                                <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name</b></td>
                                                                <td><b>CSI Opted (Rs.)</b></td>
                                                            </tr>
                                                            <tr>
                                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.
                                    <asp:TextBox ID="lblCSIName1" runat="server" Text=""></asp:TextBox></td>
                                                                <td>
                                                                    <asp:TextBox ID="lblCSI1" runat="server" Text=""></asp:TextBox></td>
                                                            </tr>
                                                            <tr>
                                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.
                                    <asp:TextBox ID="lblCSIName2" runat="server" Text=""></asp:TextBox></td>
                                                                <td>
                                                                    <asp:TextBox ID="lblCSI2" runat="server" Text=""></asp:TextBox></td>
                                                            </tr>
                                                            <tr>
                                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.
                                    <asp:TextBox ID="lblCSIName3" runat="server" Text=""></asp:TextBox></td>
                                                                <td>
                                                                    <asp:TextBox ID="lblCSI3" runat="server" Text=""></asp:TextBox></td>
                                                            </tr>
                                                        </table>

                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><b>26. Do you wish to include Personal Accident (P.A.) Cover for Named Persons/hirer/pillion riders(two wheelers) ?
                                                    </b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblPATwoWheeler" runat="server" placeholder="Yes / No" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If yes, give number of persons and Capital Sum Insured(CSI) opted for. The maximum CSI available per person is Rs. 2 lakhs in the case of Private cars and Rs. 1 lakh in the case of Motorised two wheelers.
                                                    </b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <table style="width: 100%">
                                                            <tr>
                                                                <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name</b></td>
                                                                <td><b>CSI Opted (Rs.)</b></td>
                                                            </tr>
                                                            <tr>
                                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.
                                    <asp:TextBox ID="lblCSIName1A" runat="server" Text=""></asp:TextBox></td>
                                                                <td>
                                                                    <asp:TextBox ID="lblCSI1A" runat="server" Text=""></asp:TextBox></td>
                                                            </tr>
                                                            <tr>
                                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.
                                    <asp:TextBox ID="lblCSIName2A" runat="server" Text=""></asp:TextBox></td>
                                                                <td>
                                                                    <asp:TextBox ID="lblCSI2A" runat="server" Text=""></asp:TextBox></td>
                                                            </tr>
                                                            <tr>
                                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.
                                    <asp:TextBox ID="lblCSIName3A" runat="server" Text=""></asp:TextBox></td>
                                                                <td>
                                                                    <asp:TextBox ID="lblCSI3A" runat="server" Text=""></asp:TextBox></td>
                                                            </tr>
                                                        </table>

                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <b>27. Insured's Declared Value (Please fill up the following table)</b>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <table class="table" style="width: 100%;">
                                                            <tr>
                                                                <td class="td"><b>Insured's Declared Value of Vehicle</b></td>
                                                                <td class="td"><b>Non-electrical accesories fitted to the vehicle</b></td>
                                                                <td class="td"><b>Electrical & electronic accessories fitted to the vehicle</b></td>
                                                                <td class="td"><b>Side Car(two wheeler) Trailer(pvt. cars)</b></td>
                                                                <td class="td"><b>Value CNG/PG Kit</b></td>
                                                                <td class="td"><b>Total Value</b></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="td">Rs.
                                    <asp:TextBox ID="lblc271" runat="server" Text=""></asp:TextBox></td>
                                                                <td class="td">Rs.
                                    <asp:TextBox ID="lblc272" runat="server" Text=""></asp:TextBox></td>
                                                                <td class="td">Rs.
                                    <asp:TextBox ID="lblc273" runat="server" Text=""></asp:TextBox></td>
                                                                <td class="td">Rs.
                                    <asp:TextBox ID="lblc274" runat="server" Text=""></asp:TextBox></td>
                                                                <td class="td">Rs.
                                    <asp:TextBox ID="lblc275" runat="server" Text=""></asp:TextBox></td>
                                                                <td class="td">Rs.
                                    <asp:TextBox ID="lblc276" runat="server" Text=""></asp:TextBox></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>Note : </b>
                                                        <br />
                                                        The Insured's Declared Value (IDV) of the vehicle will be deemed to be the 'SUM INSURED' for the purpose of this tariff and it will be fixed at the commencement of each policy period for each insured vehicle.<br />
                                                        The IDV of the vehicle is to be fixed on the basis of manufacturers' listed selling price of the brand and model as the vehicle proposed for insurance at the commencement of insurance /renewal, and adjusted for depreciation (as per schedule specified below). The IDV of the side car(s) and / or accessories, if any, fitted to the vehicle but not included in the manufacturer's listed selling price of the vehicle is also likewise to be fixed.<br />
                                                        The schedule of age-wise depreciation as shown below is applicable for the purpose of Total Loss/ Constructive Total Loss (TL/ CTL) claims only. A vehicle will be considered to be a CTL, as referred to above, where the aggregate cost of retrieval and / or repair of the vehicle subject to terms and conditions of the policy exceeds 75% of the IDV.<br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <center><h4><b>SCHEDULE OF DEPRICIATION FOR ARRIVING AT IDV</b></h4></center>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <table style="width: 100%;" class="table">
                                                            <tr>
                                                                <td class="td"><b>Age of the vehicle</b></td>
                                                                <td class="td"><b>% of Deptriciation for Fixing IDV</b></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="td"><b>Not exceeding 6 months</b></td>
                                                                <td class="td">5%</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="td"><b>Exceeding 6 months but not exceeding 1 year</b></td>
                                                                <td class="td">15%</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="td"><b>Exceeding 1 year but not exceeding 2 years</b></td>
                                                                <td class="td">20%</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="td"><b>Exceeding 2 years but not exceeding 3 years</b></td>
                                                                <td class="td">30%</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="td"><b>Exceeding 3 years but not exceeding 4 years</b></td>
                                                                <td class="td">40%</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="td"><b>Exceeding 4 years but not exceeding 5 years</b></td>
                                                                <td class="td">50%</td>
                                                            </tr>
                                                        </table>
                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>Note : </b>IDV of vehicles beyond 5 years of age and of obsolete models of the vehicles ( i.e. models which the manufacturers have discontinued to manufacture) is to be determined on the basis of an understanding between the insurer and the insured.</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>PREVIOUS HISTORY</b></td>
                                                </tr>

                                                <tr>
                                                    <td colspan="2"><b>28. a. Date of Purchase of the vehicle by the proposer</b> : 
                        <asp:TextBox ID="lblDateOfPurchase" runat="server" TextMode="Date" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b. Whether the vehicle was New or Second hand at the time of Purchase</b> : 
                        <asp:TextBox ID="lblNewOrSecondHand" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;c. Will the vehicle be used exclusively for</b></td>
                                                </tr>
                                                <tr>
                                                    <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A. Private, social domestic, pleasure & professional purposes</b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblPrivateUsage" runat="server" placeholder="Yes / No" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B. Carriage of goods other than samples of personal luggages</b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblGoods" runat="server" placeholder="Yes / No" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d. Is the vehicle in good condition?<br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If "No" please give full details
                                                    </b>: 
                        <asp:TextBox ID="lblVehicleCondition" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;e. Name and address of  the previous insurer</b> :                     
                        <asp:TextBox ID="lblPrevInsurerName" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;f. Previous Plicy Number</b> :                     
                        <asp:TextBox ID="lblPreviousPolicyNo" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Period of insurance from</b> :                     
                        <asp:TextBox ID="lblPrevInsFrom" runat="server" Text=""></asp:TextBox>
                                                        &nbsp;&nbsp;<b>To</b> :
                        <asp:TextBox ID="lblPrevInsTo" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g. Type of cover Liability</b> :                     
                        <asp:TextBox Width="300px" ID="lblTypeOfCoverLiability" runat="server" placeholder="Only Cover / Package Cover / Other (specify)" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <table style="width: 100%;">
                                                            <tr>
                                                                <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;h. Claim lodged during the preceeding 3 years</b></td>
                                                                <td><b>Year</b></td>
                                                                <td><b>Number</b></td>
                                                                <td><b>Amount(Rs.)</b></td>
                                                            </tr>
                                                            <tr>
                                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="lblClaim1" runat="server" Text=""></asp:TextBox></td>
                                                                <td>
                                                                    <asp:TextBox ID="lblYear1" runat="server" Text=""></asp:TextBox></td>
                                                                <td>
                                                                    <asp:TextBox ID="lblNumber1" runat="server" Text=""></asp:TextBox></td>
                                                                <td>
                                                                    <asp:TextBox ID="lblAmount1" runat="server" Text=""></asp:TextBox></td>
                                                            </tr>
                                                            <tr>
                                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="lblClaim2" runat="server" Text=""></asp:TextBox></td>
                                                                <td>
                                                                    <asp:TextBox ID="lblYear2" runat="server" Text=""></asp:TextBox></td>
                                                                <td>
                                                                    <asp:TextBox ID="lblNumber2" runat="server" Text=""></asp:TextBox></td>
                                                                <td>
                                                                    <asp:TextBox ID="lblAmount2" runat="server" Text=""></asp:TextBox></td>
                                                            </tr>
                                                            <tr>
                                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="lblClaim3" runat="server" Text=""></asp:TextBox></td>
                                                                <td>
                                                                    <asp:TextBox ID="lblYear3" runat="server" Text=""></asp:TextBox></td>
                                                                <td>
                                                                    <asp:TextBox ID="lblNumber3" runat="server" Text=""></asp:TextBox></td>
                                                                <td>
                                                                    <asp:TextBox ID="lblAmount3" runat="server" Text=""></asp:TextBox></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;i. Has any insurance company ever : </b></td>

                                                </tr>
                                                <tr>
                                                    <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(i) declined the proposal : </b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblDeclinedProposal" placeorder="Yes / No" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(ii) cancelled and refused to renew : </b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblCancelled" runat="server" placeorder="Yes / No" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(if yes, reasons therefor)</b> :
                        <asp:TextBox ID="lblCancelReason" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(iii) imposed special condition or excess: </b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblImposed" runat="server" placeorder="Yes / No" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(if yes, reasons therefor)</b> :
                        <asp:TextBox ID="lblImposedReason" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>29. Details of Hire Purchase / Hypothecation / Lease</b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a) Is the vehicle proposed for insurance : </b></td>
                                                </tr>
                                                <tr>
                                                    <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Under Hire Purchase</b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblUnderHirePurchase" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Under Lease Agreement</b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblUnderLeaseAgreement" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Under Hypothecation Agreement</b></td>
                                                    <td>
                                                        <asp:TextBox ID="lblUnderHypothecation" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b) If yes, give name and address of concerned parties </b>
                                                        <asp:TextBox ID="lblConcernParties" runat="server" Text=""></asp:TextBox></td>

                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>30. Details of Driver : a) Age : </b>
                                                        <asp:TextBox ID="lblDriverAge" runat="server" Text=""></asp:TextBox>
                                                        <b>Owner Driver : </b>
                                                        <asp:TextBox ID="lblDriverOwner" runat="server" Text=""></asp:TextBox>
                                                        <b>Others : </b>
                                                        <asp:TextBox ID="lblDriverOthers" runat="server" Text=""></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b) Does the friver suffer from defective vision or hearing or any physical infirmity.</b></td>
                                                    <td>
                                                        <asp:Label ID="lblDriverDefect" placeholder="Yes / No" runat="server" Text=""></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;c) Has the driver even been involved/convicted for causing any accident or loss? If yes, please give details as under including the pending prosecution,  if any:.</b></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <table style="width: 100%;" class="table">
                                                            <tr>
                                                                <td class="td"><b>Driver's Name</b></td>
                                                                <td class="td"><b>Date of Accident</b></td>
                                                                <td class="td"><b>Circumstances of Accident/Claim</b></td>
                                                                <td class="td"><b>Loss/Cost Rs.</b></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="td">
                                                                    <asp:TextBox ID="lblc30c1" runat="server" Text=""></asp:TextBox></td>
                                                                <td class="td">
                                                                    <asp:TextBox ID="lblc30c2" runat="server" Text=""></asp:TextBox></td>
                                                                <td class="td">
                                                                    <asp:TextBox ID="lblc30c3" runat="server" Text=""></asp:TextBox></td>
                                                                <td class="td">
                                                                    <asp:TextBox ID="lblc30c4" runat="server" Text=""></asp:TextBox></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><b>31. Any other relevant information : </b>
                                                        <asp:TextBox ID="lblOtherRelevantInformation" runat="server" Text=""></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <center><h4><b>DECLARATION BY INSURED</b></h4></center>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <p>I / We hereby declare that the statements made by me / us in this Proposal Form are true to the best of my / our knowledge an belief and I / We hereby agree that this declaration shall form the basis of the contract between me / us and the "The Oriental Insurance Co. Ltd"</p>
                                                        <p>I / We also here by declare that if any additions or alterations are carried out after the submission of this proposal form then the same would be conveyed to the insurers immediately.</p>
                                                        <br />
                                                        <br />
                                                        <table style="width: 100%;">
                                                            <tr>
                                                                <td colspan="2"><b>Place : </b></td>
                                                            </tr>
                                                            <tr>
                                                                <td><b>Date : </b></td>
                                                                <td style="text-align: right;"><b>Signature of Proposer</b></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <table>
                                                            <tr>
                                                                <td colspan="2">
                                                                    <center><h4><b>INSURANCE ACT G 1938, SECTION 41 - PROHIBITION OF REBATES</h4></center>
                                                                    </b></td>
                                                            </tr>
                                                            <tr>
                                                                <td>1. 
                                                                </td>
                                                                <td>No person shall allow or offer to allow, either directly or indirectly, as an inducement to any person to 1[take out or renew or continue] an insurance in respect of any kind of risk relating to lives or property in India, any rebate of the whole or part of the commission payable or any rebate of the premium shown on the policy, nor shall any person taking out or renewing 2[or continuing] a policy accept any rebate, except such rebate as may be allowed in accordance with the published prospectuses or tables of the insurer</td>
                                                            </tr>
                                                            <tr>
                                                                <td>2. 
                                                                </td>
                                                                <td>Any person making default in complying with the provisions of this section shall be punishable with fine which may extend to five hundred rupees</td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>

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
                                            <asp:GridView ID="gvCarIns" AutoGenerateColumns="false" CssClass="table table-hover table-bordered"
                                                AllowPaging="true" OnPageIndexChanging="gvCarIns_PageIndexChanging" OnRowCommand="gvCarIns_RowCommand"
                                                OnSorting="gvCarIns_Sorting" AllowSorting="true" runat="server">
                                                <Columns>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="btnSelect" CssClass="btn-link" runat="server" Text="Select" CommandName="S" CommandArgument='<% #Eval("CarInsId") %>' />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="btnPrint" CssClass="btn-link" runat="server" Text="Print" CommandArgument='<% #Eval("CarInsId") %>' CommandName="P" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField HeaderText="Full Name" DataField="FullName" SortExpression="FullName" />
                                                    <asp:BoundField HeaderText="EntryDate" DataField="EntryDate" SortExpression="EntryDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                    <asp:BoundField HeaderText="TelNo" DataField="TelNo" SortExpression="TelNo" />
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
        </div>
    </section>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rptCarIns.aspx.cs" Inherits="EmployeeCRM.Login.Panel.rptCarIns" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        span {font-weight:bold;
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
            <center>Toll Free Number : 1800118485 | Non Toll Free Number : 011-33208485</center>
            <center style="border: 1px solid black; background-color: black; color: white; font-weight: bold;"><h3>PROPOSAL FORM FOR CARS / MOTORISED TWO WHEELERS PACKAGE POLICY AND  LIABILITY ONLY POLICY</h3></center>
            <div><i>(The queries made/detaials stated below are the minimum requirements to be furnished by a Proposer. The Issuer may seek any Other information as desired for underwriting purpose.</i></div>
            <table class="table">
                <tr>
                    <td>Proposer's (Owner's) Full Name :
                        <asp:Label ID="lblFullName" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>Address (Address where vehicle is normally kept and used) :
                        <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>PinCode :
                        <asp:Label ID="lblPinCode" runat="server" Text=""></asp:Label>
                        &nbsp;&nbsp; Tel.No. :
                        <asp:Label ID="lblTelNo" runat="server" Text=""></asp:Label>
                        &nbsp;&nbsp; Fax.No. :
                        <asp:Label ID="lblFaxNo" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>E-Mail Address :
                        <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                        &nbsp;&nbsp; Occupation / Business :
                        <asp:Label ID="lblOccupation" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Type of Cover required : 
                        <asp:Label ID="lblTypeOfCoverRequired" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>Period of Insurance : From &nbsp;
                        <asp:Label ID="lblFromInsurance" runat="server" Text=""></asp:Label>
                        &nbsp;&nbsp; To. &nbsp;
                        <asp:Label ID="lblToInsurance" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td colspan="2">
                        <table class="table" style="width: 100%;">
                            <tr>
                                <td class="td" style="width: 50%;">NCB</td>
                                <td class="td" style="width: 50%;"></td>
                            </tr>
                            <tr>
                                <td class="td" style="width: 50%;">ADD NIL DEP</td>
                                <td class="td" style="width: 50%;"></td>
                            </tr>
                            <tr>
                                <td class="td" style="width: 50%;">Discount</td>
                                <td class="td" style="width: 50%;"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Insured's Declared Value (Please fill up the following table)
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table class="table" style="width: 100%;">
                            <tr>
                                <td class="td">Insured's Declared Value of Vehicle</td>
                                <td class="td">Non-electrical accesories fitted to the vehicle</td>
                                <td class="td">Electrical & electronic accessories fitted to the vehicle</td>
                                <td class="td">Side Car(two wheeler) Trailer(pvt. cars)</td>
                                <td class="td">Value CNG/PG Kit</td>
                                <td class="td">Total Value</td>
                            </tr>
                            <tr>
                                <td class="td">Rs.
                                    <asp:Label ID="lbl271" runat="server" Text=""></asp:Label></td>
                                <td class="td">Rs.
                                    <asp:Label ID="lbl272" runat="server" Text=""></asp:Label></td>
                                <td class="td">Rs.
                                    <asp:Label ID="lbl273" runat="server" Text=""></asp:Label></td>
                                <td class="td">Rs.
                                    <asp:Label ID="lbl274" runat="server" Text=""></asp:Label></td>
                                <td class="td">Rs.
                                    <asp:Label ID="lbl275" runat="server" Text=""></asp:Label></td>
                                <td class="td">Rs.
                                    <asp:Label ID="lbl276" runat="server" Text=""></asp:Label></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>1.  Registration No. and Date of Reistration of Vehicle  :</td>
                    <td>
                        <asp:Label ID="lblRegNo" runat="server" Text=""></asp:Label></td>

                </tr>
                <tr>
                    <td>2.  Registring Authority & Location :
                    </td>
                    <td>
                        <asp:Label ID="lblRegAuthority" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        3.  Year of Manufacture :
                    </td>
                    <td>
                        <asp:Label ID="lblYearOfManufacture" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        4.  Engine No :
                    </td>
                    <td>
                        <asp:Label ID="lblEngineNo" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        5.  Chassis No :
                    </td>
                    <td>
                        <asp:Label ID="lblChassisNo" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        6.  Make of Vehicle :
                    </td>
                    <td>
                        <asp:Label ID="lblMakeOfVehicle" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        7.  Type of Body/Model :
                    </td>
                    <td>
                        <asp:Label ID="lblTypeOfBody" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        8.  Cubic Capacity :
                    </td>
                    <td>
                        <asp:Label ID="lblCubicCapacity" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        9.  Seating capacity including driver :
                    </td>
                    <td>
                        <asp:Label ID="lblSeatingCapacity" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        10. Wheather the vehicle is driven by non-conventional Source of power :
                    </td>
                    <td>
                        <asp:Label ID="lblNonConventional" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if Yes, Please give details :
                   
                        <asp:Label ID="lblNonConYes" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        11. Wheather the vehicle is used for the driving tutions. :
                    </td>
                    <td>
                        <asp:Label ID="lblDrivingTution" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        12. Wheather the extension of geographical area to the following Countries required ?
                    <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bangladesh, Bhutan, Maldives, Nepal, Pakistan and Sri Lanka.
                        :
                    </td>
                    <td>
                        <asp:Label ID="lblGeo" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td style="text-align: right;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If "Yes" State the name of the Countries 1)</td>
                    <td>
                        <asp:Label ID="lblGeo1" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td style="text-align: right;">2)</td>
                    <td>
                        <asp:Label ID="lblGeo2" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td style="text-align: right;">3)</td>
                    <td>
                        <asp:Label ID="lblGeo3" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>13. Whether use of vehicle is limited to own premises?</td>
                    <td>
                        <asp:Label ID="lblUseOfVehicle" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>14. Whether vehicle is used for Commercial Purpose?</td>
                    <td>
                        <asp:Label ID="lblCommercial" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>15. Whether vehicle belongs to foreign embassy / consulate?</td>
                    <td>
                        <asp:Label ID="lblForeignEmbassy" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>16. Whether the car is certified as Vintage car by Vintage and Classic Car Club of India?</td>
                    <td>
                        <asp:Label ID="lblVintage" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>17. Whether vehicle is designed for use of Blind/Handicapped/Mentally challenged persons andduty endorsed as such by RTA?</td>
                    <td>
                        <asp:Label ID="lblBlind" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>18. Whether the vehicle is fitted with fibre glass tank?</td>
                    <td>
                        <asp:Label ID="lblFibre" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>19. Do you wish to opt higher deductible over and above the compulsory deductible (Rs. 50/- for Two Wheelere and  Rs. 500/-,Rs. 1000/- for Private Cars)?</td>
                    <td>
                        <asp:Label ID="lblHigherDeductible" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td style="text-align: right;">If Yes, Please specify the amount (For two wheelers) Rs.</td>
                    <td>
                        <asp:Label ID="lblTwoWheelereAmt" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>(For private cars)</td>
                    <td>
                        <asp:Label ID="lblPrivateCarAmt" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>20. Are you a member of Automobile Association of India?</td>
                    <td>
                        <asp:Label ID="lblAutomobileAssociation" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If Yes, please state<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a. Name of Association :
                        <asp:Label ID="lblNameOfAssociation" runat="server" Text=""></asp:Label><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b. Membership No. :
                        <asp:Label ID="lblMembershipNo" runat="server" Text=""></asp:Label><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;c. Date of Expire : 
                        <asp:Label ID="lblDateOfExpire" runat="server" Text=""></asp:Label>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>21. Are you Entitled to a No Claim Bonus?<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If Yes, Please submit the proof thereof.
                    </td>
                    <td>
                        <asp:Label ID="lblNoClaimBonus" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>22. Is the vehicle fitted with the any Anti-theft device approved by the AARI?<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If Yes, attach Certificate of Installation in the vehicle issued by Automobile Association of India
                    </td>
                    <td>
                        <asp:Label ID="lblAntiTheft" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>23. Lability of Third Parties<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The policy provides Third Party Property Damage (TPPD) of Rs. 1 lakh/-
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Two Wheelers) and Rs. 7.5 lakhs (Private Cars)
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Do you wish to restrict the above limits to  the statutory TPPD Liability limit of Rs. 6000/- only?
                    </td>
                    <td>
                        <asp:Label ID="lblRestrictLimit" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>24. Do you wish to cover Legal Liability to ?<br />
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A) Driver (No. of persons
                        <asp:Label ID="lblDriverNoOfPerson" runat="server" Text=""></asp:Label>)
                    </td>
                    <td>
                        <asp:Label ID="lblLiabilityDriver" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B) Other Employees (No. of persons
                        <asp:Label ID="lblEmployeesNoOfPerson" runat="server" Text=""></asp:Label>)
                    </td>
                    <td>
                        <asp:Label ID="lblLiabilityEmployees" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C) Unnamed Passangers (No. of persons
                        <asp:Label ID="lblPassangersNoOfPerson" runat="server" Text=""></asp:Label>)
                    </td>
                    <td>
                        <asp:Label ID="lblLiabilityPassanger" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <hr />
                    
                    </td>
                </tr>
                <tr>
                    <td>25. Do you wish to include Personal Accident (P.A.) Cover for Named Persons ?
                    </td>
                    <td>
                        <asp:Label ID="lblPA" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If yes, give name and Capital Sum Insured(CSI) opted for. The maximum CSI available per person is Rs. 2 lakhs in the case of Private cars and Rs. 1 lakh in the case of Motorised two wheelers.
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table style="width: 100%">
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name</td>
                                <td>CSI Opted (Rs.)</td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.
                                    <asp:Label ID="lblCSIName1" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblCSI1" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.
                                    <asp:Label ID="lblCSIName2" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblCSI2" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.
                                    <asp:Label ID="lblCSIName3" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblCSI3" runat="server" Text=""></asp:Label></td>
                            </tr>
                        </table>

                    </td>
                </tr>
                <tr>
                    <td>26. Do you wish to include Personal Accident (P.A.) Cover for Named Persons/hirer/pillion riders(two wheelers) ?
                    </td>
                    <td>
                        <asp:Label ID="lblPATwoWheeler" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If yes, give number of persons and Capital Sum Insured(CSI) opted for. The maximum CSI available per person is Rs. 2 lakhs in the case of Private cars and Rs. 1 lakh in the case of Motorised two wheelers.
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table style="width: 100%">
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name</td>
                                <td>CSI Opted (Rs.)</td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.
                                    <asp:Label ID="lblCSIName1A" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblCSI1A" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.
                                    <asp:Label ID="lblCSIName2A" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblCSI2A" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.
                                    <asp:Label ID="lblCSIName3A" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblCSI3A" runat="server" Text=""></asp:Label></td>
                            </tr>
                        </table>

                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        27. Insured's Declared Value (Please fill up the following table)
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table class="table" style="width: 100%;">
                            <tr>
                                <td class="td">Insured's Declared Value of Vehicle</td>
                                <td class="td">Non-electrical accesories fitted to the vehicle</td>
                                <td class="td">Electrical & electronic accessories fitted to the vehicle</td>
                                <td class="td">Side Car(two wheeler) Trailer(pvt. cars)</td>
                                <td class="td">Value CNG/PG Kit</td>
                                <td class="td">Total Value</td>
                            </tr>
                            <tr>
                                <td class="td">Rs.
                                    <asp:Label ID="lblc271" runat="server" Text=""></asp:Label></td>
                                <td class="td">Rs.
                                    <asp:Label ID="lblc272" runat="server" Text=""></asp:Label></td>
                                <td class="td">Rs.
                                    <asp:Label ID="lblc273" runat="server" Text=""></asp:Label></td>
                                <td class="td">Rs.
                                    <asp:Label ID="lblc274" runat="server" Text=""></asp:Label></td>
                                <td class="td">Rs.
                                    <asp:Label ID="lblc275" runat="server" Text=""></asp:Label></td>
                                <td class="td">Rs.
                                    <asp:Label ID="lblc276" runat="server" Text=""></asp:Label></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">Note : 
                        <br />
                        The Insured's Declared Value (IDV) of the vehicle will be deemed to be the 'SUM INSURED' for the purpose of this tariff and it will be fixed at the commencement of each policy period for each insured vehicle.<br />
                        The IDV of the vehicle is to be fixed on the basis of manufacturers' listed selling price of the brand and model as the vehicle proposed for insurance at the commencement of insurance /renewal, and adjusted for depreciation (as per schedule specified below). The IDV of the side car(s) and / or accessories, if any, fitted to the vehicle but not included in the manufacturer's listed selling price of the vehicle is also likewise to be fixed.<br />
                        The schedule of age-wise depreciation as shown below is applicable for the purpose of Total Loss/ Constructive Total Loss (TL/ CTL) claims only. A vehicle will be considered to be a CTL, as referred to above, where the aggregate cost of retrieval and / or repair of the vehicle subject to terms and conditions of the policy exceeds 75% of the IDV.<br />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <center><h4>SCHEDULE OF DEPRICIATION FOR ARRIVING AT IDV</h4></center>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table style="width: 100%;" class="table">
                            <tr>
                                <td class="td">Age of the vehicle</td>
                                <td class="td">% of Deptriciation for Fixing IDV</td>
                            </tr>
                            <tr>
                                <td class="td">Not exceeding 6 months</td>
                                <td class="td">5%</td>
                            </tr>
                            <tr>
                                <td class="td">Exceeding 6 months but not exceeding 1 year</td>
                                <td class="td">15%</td>
                            </tr>
                            <tr>
                                <td class="td">Exceeding 1 year but not exceeding 2 years</td>
                                <td class="td">20%</td>
                            </tr>
                            <tr>
                                <td class="td">Exceeding 2 years but not exceeding 3 years</td>
                                <td class="td">30%</td>
                            </tr>
                            <tr>
                                <td class="td">Exceeding 3 years but not exceeding 4 years</td>
                                <td class="td">40%</td>
                            </tr>
                            <tr>
                                <td class="td">Exceeding 4 years but not exceeding 5 years</td>
                                <td class="td">50%</td>
                            </tr>
                        </table>
                    </td>

                </tr>
                <tr>
                    <td colspan="2">Note : IDV of vehicles beyond 5 years of age and of obsolete models of the vehicles ( i.e. models which the manufacturers have discontinued to manufacture) is to be determined on the basis of an understanding between the insurer and the insured.</td>
                </tr>
                <tr>
                    <td colspan="2">PREVIOUS HISTORY</td>
                </tr>

                <tr>
                    <td colspan="2">28. a. Date of Purchase of the vehicle by the proposer : 
                        <asp:Label ID="lblDateOfPurchase" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b. Whether the vehicle was New or Second hand at the time of Purchase : 
                        <asp:Label ID="lblNewOrSecondHand" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;c. Will the vehicle be used exclusively for</td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A. Private, social domestic, pleasure & professional purposes</td>
                    <td>
                        <asp:Label ID="lblPrivateUsage" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B. Carriage of goods other than samples of personal luggages</td>
                    <td>
                        <asp:Label ID="lblGoods" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d. Is the vehicle in good condition?<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If "No" please give full details
                    : 
                        <asp:Label ID="lblVehicleCondition" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;e. Name and address of  the previous insurer :                     
                        <asp:Label ID="lblPrevInsurerName" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;f. Previous Policy Number :                     
                        <asp:Label ID="lblPreviousPolicyNo" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Period of insurance from :                     
                        <asp:Label ID="lblPrevInsFrom" runat="server" Text=""></asp:Label>
                        &nbsp;&nbsp;To :
                        <asp:Label ID="lblPrevInsTo" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g. Type of cover Liability :                     
                        <asp:Label ID="lblTypeOfCoverLiability" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table style="width: 100%;">
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;h. Claim lodged during the preceeding 3 years</td>
                                <td>Year</td>
                                <td>Number</td>
                                <td>Amount(Rs.)</td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblClaim1" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblYear1" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblNumber1" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblAmount1" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblClaim2" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblYear2" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblNumber2" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblAmount2" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblClaim3" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblYear3" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblNumber3" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblAmount3" runat="server" Text=""></asp:Label></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;i. Has any insurance company ever : </td>

                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(i) declined the proposal : </td>
                    <td>
                        <asp:Label ID="lblDeclinedProposal" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(ii) cancelled and refused to renew : </td>
                    <td>
                        <asp:Label ID="lblCancelled" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(if yes, reasons therefor) :
                        <asp:Label ID="lblCancelReason" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(iii) imposed special condition or excess: </td>
                    <td>
                        <asp:Label ID="lblImposed" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(if yes, reasons therefor) :
                        <asp:Label ID="lblImposedReason" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2">29. Details of Hire Purchase / Hypothecation / Lease</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a) Is the vehicle proposed for insurance : </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Under Hire Purchase</td>
                    <td>
                        <asp:Label ID="lblUnderHirePurchase" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Under Lease Agreement</td>
                    <td>
                        <asp:Label ID="lblUnderLeaseAgreement" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Under Hypothecation Agreement</td>
                    <td>
                        <asp:Label ID="lblUnderHypothecation" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b) If yes, give name and address of concerned parties 
                        <asp:Label ID="lblConcernParties" runat="server" Text=""></asp:Label></td>

                </tr>
                <tr>
                    <td colspan="2">30. Details of Driver : a) Age : 
                        <asp:Label ID="lblDriverAge" runat="server" Text=""></asp:Label>
                        Owner Driver : 
                        <asp:Label ID="lblDriverOwner" runat="server" Text=""></asp:Label>
                        Others : 
                        <asp:Label ID="lblDriverOthers" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b) Does the driver suffer from defective vision or hearing or any physical infirmity.</td>
                    <td>
                        <asp:Label ID="lblDriverDefect" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;c) Has the driver even been involved/convicted for causing any accident or loss? If yes, please give details as under including the pending prosecution,  if any:.</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table style="width: 100%;" class="table">
                            <tr>
                                <td class="td">Driver's Name</td>
                                <td class="td">Date of Accident</td>
                                <td class="td">Circumstances of Accident/Claim</td>
                                <td class="td">Loss/Cost Rs.</td>
                            </tr>
                            <tr>
                                <td class="td">
                                    <asp:Label ID="lblc30c1" runat="server" Text=""></asp:Label></td>
                                <td class="td">
                                    <asp:Label ID="lblc30c2" runat="server" Text=""></asp:Label></td>
                                <td class="td">
                                    <asp:Label ID="lblc30c3" runat="server" Text=""></asp:Label></td>
                                <td class="td">
                                    <asp:Label ID="lblc30c4" runat="server" Text=""></asp:Label></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>31. Any other relevant information : 
                        <asp:Label ID="lblOtherRelevantInformation" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <center><h4>DECLARATION BY INSURED</h4></center>
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
                                <td colspan="2">Place : </td>
                            </tr>
                            <tr>
                                <td>Date : </td>
                                <td style="text-align: right;">Signature of Proposer</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table>
                            <tr>
                                <td colspan="2">
                                    <center><h4>INSURANCE ACT G 1938, SECTION 41 - PROHIBITION OF REBATES</h4></center>
                                    </td>
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
    </form>
</body>
</html>

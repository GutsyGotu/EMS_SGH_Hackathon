<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rptClient.aspx.cs" Inherits="EmployeeCRM.Login.Panel.rptClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        table {
            border: 1px solid #555;
            border-collapse: collapse;
            text-align: center !important;
            margin: -1px !important;
            margin-left: 0px !important;
            width: 100%;
        }

        th, td {
            border: 1px solid #555;
            border-collapse: collapse;
            text-align: center !important;
            margin: -1px !important;
            margin-left: 0px !important;
            padding: 0px !important;
            vertical-align: top;
        }
    </style>

    <script>
        function printDiv(divName) {
            var css = '@page { size: landscape; }',
                head = document.head || document.getElementsByTagName('head')[0],
                style = document.createElement('style');

            style.type = 'text/css';
            style.media = 'print';

            if (style.styleSheet) {
                style.styleSheet.cssText = css;
            } else {
                style.appendChild(document.createTextNode(css));
            }

            head.appendChild(style);

            var printContents = document.getElementById(divName).innerHTML;
            var originalContents = document.body.innerHTML;
            document.body.innerHTML = printContents;
            window.print();
            document.body.innerHTML = originalContents;
        }
    </script>
</head>
<body style="font-family: 'Segoe UI'; font-size: 10px;">

    <form id="form1" runat="server">
        <button onclick="printDiv('printDiv')">Print</button>
        <div id="printDiv">
            <table class="table">
                <tr>
                    <td style="font-size: 40px;"><b>FREE LIFE SERVICES</b></td>
                    <td>
                        <table class="table">
                            <tr>
                                <td><b>AGENT NAME</b></td>
                                <td>SHRIKRUSHNA R MAHANT</td>
                            </tr>
                            <tr>
                                <td><b>AGENT CODE</b></td>
                                <td>204483T</td>
                            </tr>
                            <tr>
                                <td><b>CONTACT NUMBER</b></td>
                                <td>9824430888/9173388894</td>
                            </tr>
                            <tr>
                                <td><b>OFFICE CONTACT NUMBER</b></td>
                                <td>9898511999</td>
                            </tr>
                            <tr>
                                <td><b>DOCUMENT CREATED ON</b></td>
                                <td>
                                    <asp:Label ID="lblEntryDate" runat="server" Text=""></asp:Label></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <table class="table">
                <tr>
                    <td><b>99/SUN SET ROW HOUSE NR. AGETA CLUB, OPP. SHIVAM RESTAURANT</b></td>
                    <td><b>PROPOSAL DATE</b></td>
                    <td><b>WEBSITE</b></td>
                    <td><u>www.freelifeservices.in</u></td>
                </tr>
                <tr>
                    <td><b>GURUKUL ROAD, MEMNAGAR, AHMEDABAD GUJARAT INDIA:380052</b></td>
                    <td>
                        <asp:Label ID="lblProposalDate" runat="server" Text=""></asp:Label></td>
                    <td><b>WEBSITE</b></td>
                    <td><u>www.alltypeloan.com</u></td>
                </tr>
                <tr>
                    <td colspan="2"><u><b>OUR SERVICES</b></u></td>
                    <td><b>E-MAIL</b></td>
                    <td>alltypeinvestment@gmail.com</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table class="table">
                            <tr>
                                <td>LIFE INSURANCE</td>
                                <td>ALL TYPE LOAN</td>
                                <td>TAX SOLUTION</td>
                                <td>LIC CREDIT CARD</td>
                            </tr>
                            <tr>
                                <td>GENERAL INSURANCE</td>
                                <td>INCOME TAX RETURN</td>
                                <td>PMS</td>
                                <td>PAN CARD</td>
                            </tr>
                            <tr>
                                <td>MUTUAL FUND</td>
                                <td>PROPERTY CONSULTANT</td>
                                <td>MOBILE RECHARGE</td>
                                <td>DTH RECHARGE</td>
                            </tr>
                        </table>
                    </td>
                    <td colspan="2">
                        <table class="table">
                            <tr>
                                <td><b>AGE 18 ABOVE</b></td>
                                <td>300/302</td>
                                <td colspan="2">FOR U.L.I.P. ACCORDING TO PLAN</td>

                            </tr>
                            <tr>
                                <td><b>AGE 10 ABOVE</b></td>
                                <td>340/342</td>
                                <td><b>HEIGHT</b></td>
                                <td>
                                    <asp:Label ID="lblHeight" runat="server" Text="5'11''"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><b>AGE 0 TO 9</b></td>
                                <td>360/362</td>
                                <td><b>WEIGHT</b></td>
                                <td>
                                    <asp:Label ID="lblWeight" runat="server" Text="75KG"></asp:Label></td>
                            </tr>
                        </table>
                    </td>

                </tr>
                <tr>
                    <td colspan="2">
                        <table>
                            <tr>
                                <td><b>PAN CARD</b></td>
                                <td>
                                    <asp:Label ID="lblPanCard" runat="server" Text=""></asp:Label></td>
                                <td><strong>SCHOOL ID CARD</strong></td>
                                <td>
                                    <asp:Label ID="lblSchoolIdCard" runat="server" Text=""></asp:Label></td>
                                <td><strong>MARRIAGE CERTIFICATE</strong></td>
                                <td>
                                    <asp:Label ID="lblMarriageCertificate" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td><strong>ID PROOF</strong></td>
                                <td>
                                    <asp:Label ID="lblIDProof" runat="server" Text=""></asp:Label></td>
                                <td><strong>ELECTION CARD</strong></td>
                                <td>
                                    <asp:Label ID="lblElectionCard" runat="server" Text=""></asp:Label></td>
                                <td><strong>AADHAR CARD</strong></td>
                                <td>
                                    <asp:Label ID="lblAadharCard" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td><strong>ADDRESS PROOF</strong></td>
                                <td>
                                    <asp:Label ID="lblAddressProof" runat="server" Text=""></asp:Label></td>
                                <td><strong>ELECTRICITY BILL</strong></td>
                                <td>
                                    <asp:Label ID="lblElectricityBill" runat="server" Text=""></asp:Label></td>
                                <td><strong>TAX BILL</strong></td>
                                <td>
                                    <asp:Label ID="lblTaxBill" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td><strong>AGE PROOF</strong></td>
                                <td>
                                    <asp:Label ID="lblAgeProof" runat="server" Text=""></asp:Label></td>
                                <td><strong>SCHOO LEAVING</strong></td>
                                <td>
                                    <asp:Label ID="lblSchoolLeaving" runat="server" Text=""></asp:Label></td>
                                <td><strong>PASSPORT</strong></td>
                                <td>
                                    <asp:Label ID="lblPassport" runat="server" Text=""></asp:Label></td>
                            </tr>

                        </table>
                    </td>
                    <td colspan="2">
                        <table class="table">
                            <tr>
                                <td><strong>E-MAIL</strong></td>
                                <td colspan="2">
                                    <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label></td>

                            </tr>
                            <tr>
                                <td><strong>GOVERNMENT ID</strong></td>
                                <td>
                                    <asp:Label ID="lblGovernmentId" runat="server" Text=""></asp:Label></td>
                                <td><strong>MOTHER'S NAME</strong></td>
                            </tr>
                            <tr>
                                <td><strong>RETION CARD</strong></td>
                                <td>
                                    <asp:Label ID="lblRetionCard" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblMotherName" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td><strong>BIRTH CERTIFICATE</strong></td>
                                <td>
                                    <asp:Label ID="lblBirthCertificate" runat="server" Text=""></asp:Label></td>
                                <td></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <table class="table">
                            <tr>
                                <td><b>FIRST NAME</b></td>
                                <td colspan="2">
                                    <asp:Label ID="lblName" runat="server" Text=""></asp:Label></td>
                                <td><b>LAST NAME</b></td>
                                <td>
                                    <asp:Label ID="lblLastName" runat="server" Text=""></asp:Label></td>

                            </tr>
                            <tr>
                                <td><b>FATHER'S NAME</b></td>
                                <td colspan="4">
                                    <asp:Label ID="lblFatherName" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td><b>BIRTH PLACE</b></td>
                                <td>
                                    <asp:Label ID="lblBirthPlace" runat="server" Text=""></asp:Label></td>
                                <td><b>AGE</b></td>
                                <td>
                                    <asp:Label ID="lblAge" runat="server" Text=""></asp:Label></td>
                                <td><b>EDUCATION</b></td>
                            </tr>
                            <tr>
                                <td><b>DATE OF BIRTH</b></td>
                                <td>
                                    <asp:Label ID="lblDOB" runat="server" Text=""></asp:Label></td>
                                <td><b>AGE PROOF</b></td>
                                <td>
                                    <asp:Label ID="lblAgeProof1" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblEducation" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td><b>NOMINEE NAME</b></td>
                                <td colspan="3">
                                    <asp:Label ID="lblNomineeName" runat="server" Text=""></asp:Label></td>
                                <td><b>RELATIONSHIP WITH PROPOSER</b></td>

                            </tr>
                            <tr>
                                <td><b>NOMINEE'S DOB</b></td>
                                <td>
                                    <asp:Label ID="lblNomineeDOB" runat="server" Text=""></asp:Label></td>
                                <td><b>NOMINEE'S AGE</b></td>
                                <td>
                                    <asp:Label ID="lblNomineeAge" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblRelationshipWithProposer" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td><b>SERVICE</b></td>
                                <td>
                                    <b>BUSINESS</b></td>
                                <td><b>PROFESSION</b></td>
                                <td colspan="2">
                                    <b>ORGANIZATION NAME</b></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblServices" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblBusiness" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblProfession" runat="server" Text=""></asp:Label></td>
                                <td colspan="2">
                                    <asp:Label ID="lblOrgName" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td><b>NATURE OF BUSINESS</b></td>
                                <td colspan="2">
                                    <asp:Label ID="lblNatureOfBusiness" runat="server" Text=""></asp:Label></td>
                                <td><b>PERIOD OF THIS SECTOR</b></td>
                                <td colspan="2">
                                    <asp:Label ID="lblPeriodOfThisSector" runat="server" Text=""></asp:Label></td>

                            </tr>
                            <tr>
                                <td><b>EMPLOYER NAME/ADDRESS</b></td>
                                <td>
                                    <b>SUM ASSURED</b></td>
                                <td>
                                    <asp:Label ID="lblSumAssured" runat="server" Text=""></asp:Label></td>
                                <td><b>PROPOSAL NUMBER</b></td>
                                <td>
                                    <asp:Label ID="lblProposalNumber" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblEmployerName" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <b>TERM RIDER</b></td>
                                <td>
                                    <asp:Label ID="lblTermRider" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <b>POLICY NUMBER</b></td>
                                <td>
                                    <asp:Label ID="lblPolicyNumber" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblEmployerAddress1" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <b>CRITICAL ILLNESS</b></td>
                                <td>
                                    <asp:Label ID="lblCriticalIllness" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <b>D.O.C.</b></td>
                                <td>
                                    <asp:Label ID="lblDOC" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td>
                                    <%--<asp:Label ID="lblEmployerAddress2" runat="server" Text=""></asp:Label>--%></td>
                                <td>
                                    <b>PLAN/TERM</b></td>
                                <td>
                                    <asp:Label ID="lblPlanTerm" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <b>PREMIUM</b></td>
                                <td>
                                    <asp:Label ID="lblPremium" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td>
                                    <%--<asp:Label ID="lblEmployerAddress3" runat="server" Text=""></asp:Label>--%></td>
                                <td>
                                    <b>PREMIUM MODE</b></td>
                                <td>
                                    <asp:Label ID="lblPremiumMode" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <b>YEARLY INCOME</b></td>
                                <td>
                                    <asp:Label ID="lblYearlyIncome" runat="server" Text=""></asp:Label></td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <table class="table">
                            <tr>
                                <td colspan="2"><b>ADDRESS</b></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label></td>
                            </tr>

                            <tr>
                                <td><b>PINCODE</b></td>
                                <td>
                                    <asp:Label ID="lblPincode" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td><b>CONTACT(P)</b></td>
                                <td>
                                    <asp:Label ID="lblContactP" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td><b>CONTACT(O)</b></td>
                                <td>
                                    <asp:Label ID="lblContactO" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td><b>CONTACT(R)</b></td>
                                <td>
                                    <asp:Label ID="lblContactR" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="2"><b>IDENTIFICATION MARK</b></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="lblIdentificationMark" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="Label5" runat="server" Text=""></asp:Label></td>
                            </tr>

                            <tr>
                                <td><b>ACCIDENT BENIFIT</b></td>
                                <td>
                                    <asp:Label ID="lblAccidentBenifit" runat="server" Text=""></asp:Label></td>
                            </tr>
                        </table>

                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <table class="table">
                            <tr>
                                <td><b>FAMILY HISTORY</b></td>
                                <%--<td><b>RELATION</b></td>
                                <td><b>CURRENT AGE</b></td>
                                <td><b>HEALTH</b></td>
                                <td><b>AGE AT THE DEATH TIME</b></td>
                                <td><b>DEATH YEAR</b></td>
                                <td><b>RESON OF DEATH</b></td>--%>
                                <td colspan="6">
                                    <asp:GridView ID="gvFamily" runat="server" AutoGenerateColumns="false" Width="100%">
                                        <Columns>
                                            <asp:BoundField HeaderText="RELATION" DataField="Relation" />
                                            <asp:BoundField HeaderText="CURRENT AGE" DataField="CurrentAge" />
                                            <asp:BoundField HeaderText="HEALTH" DataField="Health" />
                                            <asp:BoundField HeaderText="AGE AT THE DEATH TIME" DataField="AgeAtDeathTime" />
                                            <asp:BoundField HeaderText="DEATH YEAR" DataField="DeathYear" />
                                            <asp:BoundField HeaderText="REASON OF DEATH" DataField="ReasonOfDeath" />
                                        </Columns>
                                    </asp:GridView>
                                </td>
                            </tr>
                            <%--<tr>
                                <td><b>FATHER</b></td>
                                <td>
                                    <asp:Label ID="lblFatherAge" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblFatherHealth" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblFatherAgeAtDeathTime" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblFatherDeathYear" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblFatherReasonOfDeath" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td><b>MOTHER</b></td>
                                <td>
                                    <asp:Label ID="lblMotherAge" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblMotherHealth" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblMotherAgeAtDeathTime" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblMotherDeathYear" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblMotherReasonOfDeath" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td><b>BROTHER</b></td>
                                <td>
                                    <asp:Label ID="lblBrotherAge" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblBrotherHealth" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblBrotherAgeAtDeathTime" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblBrotherDeathYear" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblBrotherReasonOfDeath" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td><b>SISTER</b></td>
                                <td>
                                    <asp:Label ID="lblSisterAge" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblSisterHealth" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblSisterAgeAtDeathTime" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblSisterDeathYear" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblSisterReasonOfDeath" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td><b>SPOUSE</b></td>
                                <td>
                                    <asp:Label ID="lblSpouseAge" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblSpouseHealth" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblSpouseAgeAtDeathTime" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblSpouseDeathYear" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblSpouseReasonOfDeath" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td><b>CHILDREN</b></td>
                                <td>
                                    <asp:Label ID="lblChildrenAge" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblChildrenHealth" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblChildrenAgeAtDeathTime" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblChildrenDeathYear" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblChildrenReasonOfDeath" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td><b>CHILDREN</b></td>
                                <td>
                                    <asp:Label ID="lblChildren2Age" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblChildren2Health" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblChildren2AgeAtDeathTime" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblChildren2DeathYear" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblChildren2ReasonOfDeath" runat="server" Text=""></asp:Label></td>
                            </tr>--%>
                            <tr>
                                <td><b>LIC</b></td>
                                <td><b>GIC</b></td>
                                <td>
                                    <b>MUTUAL FUND</b></td>
                                <td>
                                    <b>RECHARGE</b></td>
                                <td>
                                    <b>ITR</b></td>

                                <td>
                                    <b>CLIENT CODE</b></td>
                                <td>
                                    <b>SIGN</b></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblLIC" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblGIC" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblMutualFund" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblRecharge" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblITR" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblClientCode" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <br />
                                    <br />
                                </td>

                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <table class="table">
                <tr>
                    <td colspan="4" style="font-size: 20px;"><b>HUSBAND INSURANCE POLICY</b></td>
                </tr>
                <tr>
                    <td><b>NAME OF HUSBAND</b></td>
                    <td colspan="3">
                        <asp:Label ID="lblNameOfHusband" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td><b>PROFESSION</b></td>
                    <td>
                        <asp:Label ID="lblHusbandProfession" runat="server" Text=""></asp:Label></td>
                    <td><b>YEARLY INCOME</b></td>
                    <td>
                        <asp:Label ID="lblHusbandYearlyIncome" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:GridView ID="gvHusband" AutoGenerateColumns="false" Width="100%" runat="server">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex + 1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField HeaderText="RELATION" DataField="Relation" SortExpression="Relation" />
                                <asp:BoundField HeaderText="NAME" DataField="SpouseName" SortExpression="SpouseName" />
                                <asp:BoundField HeaderText="PROFESSION" DataField="Profession" SortExpression="Profession" />
                                <asp:BoundField HeaderText="YEARLY INCOME" DataField="YearlyIncome" SortExpression="YearlyIncome" />
                                <asp:BoundField HeaderText="POLICY NUMBER" DataField="PolicyNumber" SortExpression="PolicyNumber" />
                                <asp:BoundField HeaderText="DIVISION/BRANCH" DataField="Branch" />
                                <asp:BoundField HeaderText="SUM INSURED" DataField="SumInsured" />
                                <asp:BoundField HeaderText="PLAN" DataField="Plan" />
                                <asp:BoundField HeaderText="TERM" DataField="Term" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" style="font-size: 20px;"><b>PREVIOUS INSURANCE HISTORY</b></td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:GridView ID="gvPreviousInsurance" AutoGenerateColumns="false" Width="100%" runat="server">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex + 1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField HeaderText="DIVISION/BRANCH" DataField="Branch" />
                                <asp:BoundField HeaderText="POLICY NUMBER" DataField="PolicyNumber" />
                                <asp:BoundField HeaderText="DOC" DataField="DOC" />
                                <asp:BoundField HeaderText="SUM INSURED" DataField="SumInsured" />
                                <asp:BoundField HeaderText="PLAN" DataField="Plan" />
                                <asp:BoundField HeaderText="TERM" DataField="Term" />
                                <asp:BoundField HeaderText="MODE" DataField="Mode" />
                                <asp:BoundField HeaderText="MEDICAL NONMEDICAL" DataField="Medical" />
                                <asp:BoundField HeaderText="D.A.B." DataField="DAB" />
                                <asp:BoundField HeaderText="POLICY STATUS" DataField="PolicyStatus" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td><b>BANK NAME</b></td>
                    <td>
                        <asp:Label ID="lblBankName" runat="server" Text=""></asp:Label></td>
                    <td><b>ACCONT NUMBER</b></td>
                    <td>
                        <asp:Label ID="lblAccountNumber" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td><b>IFS CODE</b></td>
                    <td>
                        <asp:Label ID="lblIFSC" runat="server" Text=""></asp:Label></td>
                    <td><b>MICR CODE</b></td>
                    <td>
                        <asp:Label ID="lblMICR" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td><b>BRANCH NAME</b></td>
                    <td>
                        <asp:Label ID="lblBranchName" runat="server" Text=""></asp:Label></td>
                    <td><b>BRANCH CODE</b></td>
                    <td>
                        <asp:Label ID="lblBranchCode" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="4"><b>REFERANCES</b></td>
                </tr>
                <tr>
                    <td><b>
                        <asp:Label ID="lblRef1" runat="server" Text=""></asp:Label></b></td>
                    <td>
                        <asp:Label ID="lblRef1Mobile" runat="server" Text=""></asp:Label>
                    </td>
                    <td><b>
                        <asp:Label ID="lblRef3" runat="server" Text=""></asp:Label></b></td>
                    <td>
                        <asp:Label ID="lblRef3Mobile" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><b>
                        <asp:Label ID="lblRef2" runat="server" Text=""></asp:Label></b></td>
                    <td>
                        <asp:Label ID="lblRef2Mobile" runat="server" Text=""></asp:Label>
                    </td>
                    <td><b>
                        <asp:Label ID="lblRef4" runat="server" Text=""></asp:Label></b></td>
                    <td>
                        <asp:Label ID="lblRef4Mobile" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

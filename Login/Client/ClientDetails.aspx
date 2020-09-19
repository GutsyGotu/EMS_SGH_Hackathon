<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Client/Client.Master" AutoEventWireup="true" CodeBehind="ClientDetails.aspx.cs" Inherits="EmployeeCRM.Login.Client.ClientDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="basic-form-layouts">
        <div class="row match-height">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">My Details</h4>
                        <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                    </div>
                    <div class="alert alert-deep-orange mb-2" role="alert" id="divAlert" runat="server" visible="false">
                    </div>
                    <asp:Label ID="lblId" Visible="false" runat="server" Text=""></asp:Label>
                    <asp:Label ID="lblFamilyDetailId" Visible="false" runat="server" Text=""></asp:Label>
                    <div class="card-body collapse in">
                        <div class="card-block">
                            <div class="form">
                                <div class="form-body">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Email</label>
                                                <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Proposal Date</label>
                                                <asp:TextBox ID="txtProposalDate" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Client Name</label>
                                                <asp:TextBox ID="txtClientName" CssClass="form-control" placeholder="ClientName" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-12"></div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Father Name</label>
                                                <asp:TextBox ID="txtFatherName" CssClass="form-control" placeholder="FatherName" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Mother Name</label>
                                                <asp:TextBox ID="txtMotherName" CssClass="form-control" placeholder="MotherName" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Pan Card</label>
                                                <asp:TextBox ID="txtPanCard" CssClass="form-control" placeholder="PanCard" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>School Id Card</label>
                                                <asp:TextBox ID="txtSchoolIdCard" CssClass="form-control" placeholder="SchoolIdCard" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Marriage Certificate</label>
                                                <asp:TextBox ID="txtMarriageCertificate" CssClass="form-control" placeholder="MarriageCertificate" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Height</label>
                                                <asp:TextBox ID="txtHeight" CssClass="form-control" placeholder="Height" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Weight</label>
                                                <asp:TextBox ID="txtWeight" CssClass="form-control" placeholder="Weight" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Id Proof</label>
                                                <asp:TextBox ID="txtIdProof" CssClass="form-control" placeholder="IdProof" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Election Card</label>
                                                <asp:TextBox ID="txtElectionCard" CssClass="form-control" placeholder="ElectionCard" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Adhar Card</label>
                                                <asp:TextBox ID="txtAdharCard" CssClass="form-control" placeholder="AdharCard" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Government Id</label>
                                                <asp:TextBox ID="txtGovernmentId" CssClass="form-control" placeholder="GovernmentId" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Retion Card</label>
                                                <asp:TextBox ID="txtRetionCard" CssClass="form-control" placeholder="RetionCard" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Tax Bill</label>
                                                <asp:TextBox ID="txtTaxBill" CssClass="form-control" placeholder="TaxBill" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Electricity Bill</label>
                                                <asp:TextBox ID="txtElectricityBill" CssClass="form-control" placeholder="ElectricityBill" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Address Proof</label>
                                                <asp:TextBox ID="txtAddressProof" CssClass="form-control" placeholder="AddressProof" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Age Proof</label>
                                                <asp:TextBox ID="txtAgeProof" CssClass="form-control" placeholder="AgeProof" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>School Leaving</label>
                                                <asp:TextBox ID="txtSchoolLeaving" CssClass="form-control" placeholder="SchoolLeaving" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Passport</label>
                                                <asp:TextBox ID="txtPassport" CssClass="form-control" placeholder="Passport" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Birth Certificate</label>
                                                <asp:TextBox ID="txtBirthCertificate" CssClass="form-control" placeholder="BirthCertificate" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>BirthPlace</label>
                                                <asp:TextBox ID="txtBirthPlace" CssClass="form-control" placeholder="BirthPlace" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Age</label>
                                                <asp:TextBox ID="txtAge" CssClass="form-control" placeholder="Age" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Education</label>
                                                <asp:TextBox ID="txtEducation" CssClass="form-control" placeholder="Education" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Date Of Birth</label>
                                                <asp:TextBox ID="txtDateOfBirth" CssClass="form-control" TextMode="Date" placeholder="DateOfBirth" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Address</label>
                                                <asp:TextBox ID="txtAddress" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Nominee Name</label>
                                                <asp:TextBox ID="txtNomineeName" CssClass="form-control" placeholder="NomineeName" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Relationship With Prosper</label>
                                                <asp:TextBox ID="txtRelationshipWithProsper" CssClass="form-control" placeholder="RelationshipWithProsper" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Nominee DOB</label>
                                                <asp:TextBox ID="txtNomineeDOB" CssClass="form-control" TextMode="Date" placeholder="NomineeDOB" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Nominee Age</label>
                                                <asp:TextBox ID="txtNomineeAge" CssClass="form-control" placeholder="NomineeAge" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Services</label>
                                                <asp:TextBox ID="txtServices" CssClass="form-control" placeholder="Services" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Business</label>
                                                <asp:TextBox ID="txtBusiness" CssClass="form-control" placeholder="Business" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Profession</label>
                                                <asp:TextBox ID="txtProfession" CssClass="form-control" placeholder="Profession" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Organization Name</label>
                                                <asp:TextBox ID="txtOrganizationName" CssClass="form-control" placeholder="OrganizationName" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>PinCode</label>
                                                <asp:TextBox ID="txtPinCode" CssClass="form-control" placeholder="PinCode" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Nature Of Business</label>
                                                <asp:TextBox ID="txtNatureOfBusiness" CssClass="form-control" placeholder="NatureOfBusiness" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Period Of This Sector</label>
                                                <asp:TextBox ID="txtPeriodOfThisSector" CssClass="form-control" placeholder="PeriodOfThisSector" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>P Contact</label>
                                                <asp:TextBox ID="txtPContact" CssClass="form-control" placeholder="PContact" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>O Contact</label>
                                                <asp:TextBox ID="txtOContact" CssClass="form-control" placeholder="OContact" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>R Contact</label>
                                                <asp:TextBox ID="txtRContact" CssClass="form-control" placeholder="RContact" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Employer Name</label>
                                                <asp:TextBox ID="txtEmployerName" CssClass="form-control" placeholder="EmployerName" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Employer Address</label>
                                                <asp:TextBox ID="txtEmployerAddress" CssClass="form-control" placeholder="EmployerAddress" TextMode="MultiLine" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Sum Insured</label>
                                                <asp:TextBox ID="txtSumInsured" CssClass="form-control" placeholder="SumInsured" TextMode="Number" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Term Rider</label>
                                                <asp:TextBox ID="txtTermRider" CssClass="form-control" placeholder="TermRider" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Criticl Illness</label>
                                                <asp:TextBox ID="txtCriticlIllness" CssClass="form-control" placeholder="CriticlIllness" runat="server"></asp:TextBox>
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
                                                <label>Premium Mode</label>
                                                <asp:TextBox ID="txtPremiumMode" CssClass="form-control" placeholder="PremiumMode" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Proposal Number</label>
                                                <asp:TextBox ID="txtProposalNumber" CssClass="form-control" placeholder="ProposalNumber" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Policy Number</label>
                                                <asp:TextBox ID="txtPolicyNumber" CssClass="form-control" placeholder="PolicyNumber" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>DOC</label>
                                                <asp:TextBox ID="txtDOC" CssClass="form-control" TextMode="Date" placeholder="DOC" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Premium</label>
                                                <asp:TextBox ID="txtPremium" CssClass="form-control" TextMode="Number" placeholder="Premium" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Yearly Income</label>
                                                <asp:TextBox ID="txtYearlyIncome" CssClass="form-control" TextMode="Number" placeholder="YearlyIncome" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Identification Mark</label>
                                                <asp:TextBox ID="txtIdentificationMark" CssClass="form-control" placeholder="IdentificationMark" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Accident Benefit</label>
                                                <asp:TextBox ID="txtAccidentBenefit" CssClass="form-control" placeholder="AccidentBenefit" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-12"></div>
                                        <div class="col-md-12 alert alert-grey">
                                            <div class="col-md-12">
                                                <h3>Family Details</h3>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label>*Relation</label>
                                                    <asp:DropDownList ID="ddlRelation" ClientIDMode="Static" data-placeholder="Choose an item..." CssClass="form-control" runat="server">
                                                        <asp:ListItem Text="Father" Value="1"></asp:ListItem>
                                                        <asp:ListItem Text="Mother" Value="2"></asp:ListItem>
                                                        <asp:ListItem Text="Brother" Value="3"></asp:ListItem>
                                                        <asp:ListItem Text="Sister" Value="4"></asp:ListItem>
                                                        <asp:ListItem Text="Spouse" Value="5"></asp:ListItem>
                                                        <asp:ListItem Text="Child 1" Value="6"></asp:ListItem>
                                                        <asp:ListItem Text="Child 2" Value="7"></asp:ListItem>
                                                    </asp:DropDownList>
                                                    <%--<asp:DropDownList ID="ddlItem" ClientIDMode="Static" data-placeholder="Choose an Item..." CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlItem_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>--%>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label>Current Age</label>
                                                    <asp:TextBox ID="txtCurrentAge" CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label>Health</label>
                                                    <asp:TextBox ID="txtHealth" CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label>Age At Death Time</label>
                                                    <asp:TextBox ID="txtAgeAtDeathTime" CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label>Death Year</label>
                                                    <asp:TextBox ID="txtDeathYear" CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label>Reason Of Death</label>
                                                    <asp:TextBox ID="txtReasonOfDeath" CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <asp:Button ID="btnSubmitdtl" CssClass="btn btn-black" runat="server" Text="Submit" OnClick="btnSubmitdtl_Click" />
                                                <asp:Button ID="btnUpdatedtl" Visible="false" CssClass="btn btn-black" runat="server" Text="Update" OnClick="btnUpdatedtl_Click" />
                                                <asp:Button ID="btnDeletedtl" Visible="false" CssClass="btn btn-black" runat="server" Text="Delete" OnClick="btnDeletedtl_Click" />
                                                <asp:Button ID="btnCanceldtl" CssClass="btn btn-black" runat="server" Text="Cancel" OnClick="btnCanceldtl_Click" />
                                            </div>
                                            <div class="col-md-12">
                                                <asp:GridView ID="gvFamilydtl" AutoGenerateColumns="false" CssClass="table table-info table-bordered" OnRowCommand="gvFamilydtl_RowCommand"
                                                    runat="server" Width="100%">
                                                    <Columns>
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="lbtnSelect" CommandArgument='<% #Eval("FamilyId") %>' CommandName="S" runat="server">Select</asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField HeaderText="Relation" DataField="Relation" />
                                                        <asp:BoundField HeaderText="Current Age" DataField="CurrentAge" />
                                                        <asp:BoundField HeaderText="Health" DataField="Health" />
                                                        <asp:BoundField HeaderText="Age At Death Time" DataField="AgeAtDeathTime" />
                                                        <asp:BoundField HeaderText="Death Year" DataField="DeathYear" />
                                                        <asp:BoundField HeaderText="Reason Of Death" DataField="ReasonOfDeath" />
                                                    </Columns>
                                                </asp:GridView>
                                            </div>
                                        </div>
                                        <div class="col-md-12"></div>

                                        <%--<div class="col-md-4">
                                            <div class="form-group">
                                                <label>Father Age</label>
                                                <asp:TextBox ID="txtFatherAge" CssClass="form-control" placeholder="FatherAge" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Father Health</label>
                                                <asp:TextBox ID="txtFatherHealth" CssClass="form-control" placeholder="FatherHealth" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Father Age At Death Time</label>
                                                <asp:TextBox ID="txtFatherAgetAtDeathTime" CssClass="form-control" placeholder="FatherAgetAtDeathTime" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Father Death Year</label>
                                                <asp:TextBox ID="txtFatherDeathYear" CssClass="form-control" placeholder="FatherDeathYear" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Father Reason Of Death</label>
                                                <asp:TextBox ID="txtFatherReasonOfDeath" CssClass="form-control" placeholder="FatherReasonOfDeath" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Mother Age</label>
                                                <asp:TextBox ID="txtMotherAge" CssClass="form-control" placeholder="MotherAge" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Mother Health</label>
                                                <asp:TextBox ID="txtMotherHealth" CssClass="form-control" placeholder="MotherHealth" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Mother Age At Death</label>
                                                <asp:TextBox ID="txtMotherAgeAtDeath" CssClass="form-control" placeholder="MotherAgeAtDeath" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Mother Death Year</label>
                                                <asp:TextBox ID="txtMotherDeathYear" CssClass="form-control" placeholder="MotherDeathYear" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Mother Reason Of Death</label>
                                                <asp:TextBox ID="txtMotherReasonOfDeath" CssClass="form-control" placeholder="MotherReasonOfDeath" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Brother Age</label>
                                                <asp:TextBox ID="txtBrotherAge" CssClass="form-control" placeholder="BrotherAge" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Brother Health</label>
                                                <asp:TextBox ID="txtBrotherHealth" CssClass="form-control" placeholder="BrotherHealth" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Brother Age At Death</label>
                                                <asp:TextBox ID="txtBrotherAgeAtDeath" CssClass="form-control" placeholder="BrotherAgeAtDeath" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Brother Death Year</label>
                                                <asp:TextBox ID="txtBrotherDeathYear" CssClass="form-control" placeholder="BrotherDeathYear" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Brother Reason Of Death</label>
                                                <asp:TextBox ID="txtBrotherReasonOfDeath" CssClass="form-control" placeholder="BrotherReasonOfDeath" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Sister Age</label>
                                                <asp:TextBox ID="txtSisterAge" CssClass="form-control" placeholder="SisterAge" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Sister Health</label>
                                                <asp:TextBox ID="txtSisterHealth" CssClass="form-control" placeholder="SisterHealth" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Sister Age At Death Time</label>
                                                <asp:TextBox ID="txtSisterAgeAtDeathTime" CssClass="form-control" placeholder="SisterAgeAtDeathTime" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Sister Death Year</label>
                                                <asp:TextBox ID="txtSisterDeathYear" CssClass="form-control" placeholder="SisterDeathYear" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Sister Reason Of Death</label>
                                                <asp:TextBox ID="txtSisterReasonOfDeath" CssClass="form-control" placeholder="SisterReasonOfDeath" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Spouse Age</label>
                                                <asp:TextBox ID="txtSpouseAge" CssClass="form-control" placeholder="SpouseAge" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Spouse Health</label>
                                                <asp:TextBox ID="txtSpouseHealth" CssClass="form-control" placeholder="SpouseHealth" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Spouse Age At Death</label>
                                                <asp:TextBox ID="txtSpouseAgeAtDeath" CssClass="form-control" placeholder="SpouseAgeAtDeath" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Spouse Death Year</label>
                                                <asp:TextBox ID="txtSpouseDeathYear" CssClass="form-control" placeholder="SpouseDeathYear" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Spouse Reason Of Death</label>
                                                <asp:TextBox ID="txtSpouseReasonOfDeath" CssClass="form-control" placeholder="SpouseReasonOfDeath" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Child1 Age</label>
                                                <asp:TextBox ID="txtChild1Age" CssClass="form-control" placeholder="Child1Age" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Child1 Health</label>
                                                <asp:TextBox ID="txtChild1Health" CssClass="form-control" placeholder="Child1Health" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Child1 Age At Death</label>
                                                <asp:TextBox ID="txtChild1AgeAtDeath" CssClass="form-control" placeholder="Child1AgeAtDeath" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Child1 Death Year</label>
                                                <asp:TextBox ID="txtChild1DeathYear" CssClass="form-control" placeholder="Child1DeathYear" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Child1 Reason Of Death</label>
                                                <asp:TextBox ID="txtChild1ReasonOfDeath" CssClass="form-control" placeholder="Child1ReasonOfDeath" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Child2 Age</label>
                                                <asp:TextBox ID="txtChild2Age" CssClass="form-control" placeholder="Child2Age" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Child2 Health</label>
                                                <asp:TextBox ID="txtChild2Health" CssClass="form-control" placeholder="Child2Health" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Child2 Age At Death</label>
                                                <asp:TextBox ID="txtChild2AgeAtDeath" CssClass="form-control" placeholder="Child2AgeAtDeath" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Child2 Death Year</label>
                                                <asp:TextBox ID="txtChild2DeathYear" CssClass="form-control" placeholder="Child2DeathYear" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Child2 Reason Of Death</label>
                                                <asp:TextBox ID="txtChild2ReasonOfDeath" CssClass="form-control" placeholder="Child2ReasonOfDeath" runat="server"></asp:TextBox>
                                            </div>
                                        </div>--%>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>LIC</label>
                                                <asp:TextBox ID="txtLIC" CssClass="form-control" placeholder="LIC" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>GIC</label>
                                                <asp:TextBox ID="txtGIC" CssClass="form-control" placeholder="GIC" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Mutual Fund</label>
                                                <asp:TextBox ID="txtMutualFund" CssClass="form-control" placeholder="MutualFund" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Recharge</label>
                                                <asp:TextBox ID="txtRecharge" CssClass="form-control" placeholder="Recharge" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>ITR</label>
                                                <asp:TextBox ID="txtITR" CssClass="form-control" placeholder="ITR" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Bank Name</label>
                                                <asp:TextBox ID="txtBankName" CssClass="form-control" placeholder="BankName" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Account Number</label>
                                                <asp:TextBox ID="txtAccountNumber" CssClass="form-control" placeholder="AccountNumber" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>IFSC Code</label>
                                                <asp:TextBox ID="txtIFSCCode" CssClass="form-control" placeholder="IFSCCode" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>MICR Code</label>
                                                <asp:TextBox ID="txtMICRCode" CssClass="form-control" placeholder="MICRCode" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Branch Name</label>
                                                <asp:TextBox ID="txtBranchName" CssClass="form-control" placeholder="BranchName" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Branch Code</label>
                                                <asp:TextBox ID="txtBranchCode" CssClass="form-control" placeholder="BranchCode" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Refrence1 Name</label>
                                                <asp:TextBox ID="txtRefrence1Name" CssClass="form-control" placeholder="Refrence1Name" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Refrence1 Mobile</label>
                                                <asp:TextBox ID="txtRefrence1Mobile" CssClass="form-control" placeholder="Refrence1Mobile" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Refrence2 Name</label>
                                                <asp:TextBox ID="txtRefrence2Name" CssClass="form-control" placeholder="Refrence2Name" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Refrence2 Mobile</label>
                                                <asp:TextBox ID="txtRefrence2Mobile" CssClass="form-control" placeholder="Refrence2Mobile" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Refrence3 Name</label>
                                                <asp:TextBox ID="txtRefrence3Name" CssClass="form-control" placeholder="Refrence3Name" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Refrence3 Mobile</label>
                                                <asp:TextBox ID="txtRefrence3Mobile" CssClass="form-control" placeholder="Refrence3Mobile" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Refrence4 Name</label>
                                                <asp:TextBox ID="txtRefrence4Name" CssClass="form-control" placeholder="Refrence4Name" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Refrence4 Mobile</label>
                                                <asp:TextBox ID="txtRefrence4Mobile" CssClass="form-control" placeholder="Refrence4Mobile" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Spouse Name</label>
                                                <asp:TextBox ID="txtSpouseName" CssClass="form-control" placeholder="SpouseName" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Spouse Profession</label>
                                                <asp:TextBox ID="txtSpouseProfession" CssClass="form-control" placeholder="SpouseProfession" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Spouse Yearly Income</label>
                                                <asp:TextBox ID="txtSpouseYearlyIncome" CssClass="form-control" placeholder="SpouseYearlyIncome" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <h4>Female Proponents Only</h4>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Are you Pregnant now?</label>
                                                <asp:CheckBox ID="chkPregnant" runat="server" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Date of Last Delivery</label>
                                                <asp:TextBox ID="txtLastDeliveryDate" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Have You had any abortion or miscarriage or Cesarean section? if so, give details.</label>
                                                <asp:TextBox ID="txtMiscarriage" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Have you ever consulted a gynecologist or undergone any investigation, treatment for any gynaec ailment? (If yes,give details)</label>
                                                <asp:TextBox ID="txtGynacologist" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-actions">

                                        <asp:Button ID="btnSubmit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" runat="server" Text="Submit" />

                                        <asp:Button ID="btnCancel" Visible="false" CssClass="btn btn-primary" OnClick="btnCancel_Click" runat="server" Text="Cancel" />
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

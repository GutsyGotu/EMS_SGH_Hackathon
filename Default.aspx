<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmployeeCRM.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <div class="container">

        <div class="form-body">
            <div class="row">
                <div class="col-md-6">
                    <a href="Login/Default.aspx">
                        <img src="Images/memberLogin.jpg" />
                    </a>
                </div>
                <div class="col-md-6">
                    <a href="Login/ClientLogin.aspx">
                        <img src="Images/clientLogin.jpg" />
                    </a>
                </div>
                <div class="col-md-12 bg-white" >
                    <div class="form-body">
                        <h3>Features</h3>
                        <ul>
                            <li>Client Management</li>
                            <li>Task Management</li>
                            <li>Worklog Management</li>
                            <li>Service Management</li>
                            <li>Payments</li>
                            <li>Reminder and followups</li>
                            <li>Task Assignment</li>
                            <li>Target Achievements</li>
                            <li>Employee reports</li>
                            <li>Service report</li>
                            <li>Date report</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <section class="about-us-section section-padding">
        <div class="container">
            <div class="section-header text-center">
                <h3><span>Welcome to </span>EmployeeEase</h3>

            </div>
            <div class="row">
                <div class="col-lg-6 col-sm-6">
                    <div class="looking-car">
                        <div class="looking-car-content">
                            <div style="min-height: 90px;">
                                <div class="row">
                                    <div class="col-lg-6 col-sm-6 col-xs-6">
                                        <h4><span>I'm an </span>Employee</h4>
                                        <a href="Login/Default.aspx" class="btn"><i class="fa fa-lock" aria-hidden="true"></i>&nbsp;Login</a>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-6">
                                        <div style="text-align: right; vertical-align: middle; float: right;">
                                            <img src="Images/membership.png" style="max-height: 90px" class="img-responsive" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-6">
                    <div class="looking-car">
                        <div class="looking-car-content">
                            <div style="min-height: 90px;">
                                <div class="row">
                                    <div class="col-lg-6 col-sm-6 col-xs-6">

                                        <h4><span>I'm a </span>Customer</h4>
                                        <a href="Login/ClientLogin.aspx" class="btn"><i class="fa fa-lock" aria-hidden="true"></i>&nbsp;Login</a>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-6">
                                        <div style="text-align: right; vertical-align: middle; float: right;">
                                            <img src="Images/crown.png" style="max-height: 90px" class="img-responsive" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--<div class="col-lg-4 col-sm-4">
                    <div class="looking-car">
                        <div class="looking-car-content">
                            <div style="min-height: 90px;">
                                <div class="row">
                                    <div class="col-lg-6 col-sm-6 col-xs-6">

                                        <h4><span>Bid for </span>Tender</h4>
                                        <a href="Tender.aspx" class="btn"><i class="fa fa-hand-o-up" aria-hidden="true"></i>&nbsp;Apply</a>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-6">
                                        <div style="text-align: right; vertical-align: middle; float: right;">
                                            <img src="Images/application.png" style="max-height: 90px" class="img-responsive" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>
                <div class="col-md-12 col-sm-12">
                    <br />
                    <br />
                    <h3 style="text-align: center;"><span>EmployeeEase </span>Features</h3>
                    <hr />
                </div>
                <div class="col-md-6 col-sm-6">
                    <h5 style="color: red;"><i class="fa fa-user"></i>&nbsp;Client<span> Management</span></h5>
                </div>
                <div class="col-md-6 col-sm-6">
                    <h5 style="color: blueviolet;"><i class="fa fa-list"></i>&nbsp;Task<span> Management</span></h5>
                </div>
                <div class="col-md-6 col-sm-6">
                    <h5 style="color: darkcyan;"><i class="fa fa-clock-o"></i>&nbsp;Worklog<span> Management</span></h5>
                </div>
                <div class="col-md-6 col-sm-6">
                    <h5 style="color: darkgreen;"><i class="fa fa-wrench"></i>&nbsp;Service<span> Management</span></h5>
                </div>
                <div class="col-md-6 col-sm-6">
                    <h5 style="color: darkorange;"><i class="fa fa-money"></i>&nbsp;Payments<span> Management</span></h5>
                </div>
                <div class="col-md-6 col-sm-6">
                    <h5 style="color: hotpink;"><i class="fa fa-bell"></i>&nbsp;Reminders<span> & Followups</span></h5>
                </div>
                <div class="col-md-6 col-sm-6">
                    <h5 style="color: indigo;"><i class="fa fa-arrow-right"></i>&nbsp;Task<span> Assignment</span></h5>
                </div>
                <div class="col-md-6 col-sm-6">
                    <h5 style="color: mediumorchid;"><i class="fa fa-bullseye"></i>&nbsp;Target<span> Achievement</span></h5>
                </div>
                <div class="col-md-6 col-sm-6">
                    <h5 style="color: peru;"><i class="fa fa-users"></i>&nbsp;Employee<span> Reports</span></h5>
                </div>
                <div class="col-md-6 col-sm-6">
                    <h5 style="color: magenta;"><i class="fa fa-cogs"></i>&nbsp;Service<span> Reports</span></h5>
                </div>
                <div class="col-md-6 col-sm-6">
                    <h5 style="color: teal;"><i class="fa fa-calendar"></i>&nbsp;Date<span> Reports</span></h5>
                </div>
                <div class="col-md-6 col-sm-6">
                    <h5 style="color: darkolivegreen;"><i class="fa fa-dashboard"></i>&nbsp;Alert<span> Dashboard</span></h5>
                </div>
            </div>
        </div>
    </section>

</asp:Content>

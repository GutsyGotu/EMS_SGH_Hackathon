<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Panel/Panel.Master" AutoEventWireup="true" CodeBehind="WorkLog.aspx.cs" Inherits="EmployeeCRM.Login.Panel.WorkLog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <script type="text/javascript">
      function integersOnly(obj) {
          obj.value = obj.value.replace(/[^0-9-.]/g, '');
      }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="basic-form-layouts">
        <div class="row match-height">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">Work Log</h4>
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
                                                <label>Work Log Date*</label>
                                                <asp:TextBox ID="txtCreatedDate" TextMode="Date" OnTextChanged="txtCreatedDate_TextChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Work Type*</label>
                                                <asp:DropDownList ID="ddlWorkType" CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Service*</label>
                                                <asp:DropDownList ID="ddlService" CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Task</label>
                                                <asp:DropDownList ID="ddlTask" CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Worklog Time(Hrs)*</label>
                                                <asp:TextBox ID="txtWorkLogTimeHrs" onkeyup="integersOnly(this)" CssClass="form-control"  runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Work Heading*</label>
                                                <asp:TextBox ID="txtWorkHeading" placeholder="Work Heading" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Description*</label>
                                                <asp:TextBox ID="txtDescription" placeholder="Description" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="form-actions">
                                        <asp:Button ID="btnSubmit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" runat="server" Text="Submit" />
                                        <asp:Button ID="btnUpdate" Visible="false" CssClass="btn btn-primary" OnClick="btnUpdate_Click" runat="server" Text="Update" />
                                        <asp:Button ID="btnDelete" Visible="false" CssClass="btn btn-primary" OnClick="btnDelete_Click" runat="server" Text="Delete" />
                                        <asp:Button ID="btnCancel" CssClass="btn btn-primary" OnClick="btnCancel_Click" runat="server" Text="Cancel" />
                                    </div>
                                    <div class="table-responsive">
                                        <h4>Work log</h4>
                                        <asp:GridView ID="gvWorkLog" AutoGenerateColumns="false" CssClass="table table-hover table-bordered"
                                            OnRowCommand="gvWorkLog_RowCommand" runat="server" Width="100%">
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton CssClass="btn-link" ID="btnSelect" CommandArgument='<% #Eval("WorkLogId") %>' CommandName="S" runat="server" Text="Select" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField HeaderText="Task Number" DataField="TaskNumber" SortExpression="TaskNumber" />
                                                <asp:BoundField HeaderText="Work Heading" DataField="WorkHeading" SortExpression="WorkHeading" />
                                                <asp:BoundField HeaderText="Description" DataField="Description" SortExpression="Description" />
                                                <asp:BoundField HeaderText="Service Name" DataField="ServiceName" SortExpression="ServiceName" />
                                                <asp:BoundField HeaderText="Worklog Date" DataField="WorkLogDate" SortExpression="WorkLogDate" DataFormatString="{0:dd/MMM/yyyy}" />
                                                <asp:BoundField HeaderText="Worklog Time(Hrs)" DataField="WorkLogTimeHrs" SortExpression="WorkLogTimeHrs" />
                                                <asp:BoundField HeaderText="User Name" DataField="UserName" SortExpression="UserName" />
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

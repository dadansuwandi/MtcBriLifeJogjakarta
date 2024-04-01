<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/apps/Uidesk.Master" CodeBehind="TrmOtherThread.aspx.vb" Inherits="ICC.TrmOtherThread" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function ActionType(TrxID, TrxType) {
            $("#ContentPlaceHolder1_TrxID").val(TrxID);
            $("#ContentPlaceHolder1_TrxType").val(TrxType);
            $("#hd_sessionLogin").val();
            $("#modal-center-reason").modal('show');
        }
        function ActionReasonThread() {

            var ReasonThread = CKEDITOR.instances.ReasonThread.getData();
            if (ReasonThread == "") {
                AutoValidasiWarning($("#hd_sessionLogin").val(), "Your data <b>thread reason</b> is empty ")
                return false
            }
            var form_data = JSON.stringify({ TrxUserName: $("#hd_sessionLogin").val(), TrxID: $("#ContentPlaceHolder1_TrxID").val(), TrxType: $("#ContentPlaceHolder1_TrxType").val(), TrxReason: ReasonThread });
            swal({
                title: "Do you want to process?",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
                .then((willDelete) => {
                    if (willDelete) {

                        $.ajax({
                            url: "asmx/ServiceThread.asmx/UpdateDataThread",
                            method: "POST",
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            data: form_data,
                            success: function () {
                                console.log("Action UpdateDataThread : " + form_data)
                                $("#ReasonThread").val("");
                                window.location.href = "TrmOtherThread.aspx";
                            },
                            error: function (xmlHttpRequest, textStatus, errorThrown) {
                                console.log(xmlHttpRequest.responseText);
                                console.log(textStatus);
                                console.log(errorThrown);
                            },
                            complete: function () {

                            }
                        });

                    }
                });
        }
        function PreviewEmail(TrxEmailID) {
            document.getElementById("framefile_html").src = "http://10.28.2.222/brilifecc/FileEmail/INBOX/" + TrxEmailID + "/file.html"
            $("#modal-center-email").modal('show')
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:HiddenField ID="TrxID" runat="server" />
    <asp:HiddenField ID="TrxType" runat="server" />
    <section class="content">
        <div class="row" runat="server">
            <div class="col-xl-12 col-lg-12 col-12">
                <div class="box">
                    <div class="box-header with-border">
                        <h4 class="box-title">Data Incoming Thread&nbsp;</h4>
                    </div>
                    <div class="box-body p-15">
                        <dx:ASPxGridView ID="ASPxGridView1" ClientInstanceName="ASPxGridView1" DataSourceID="DSChannel" runat="server" Width="100%"
                            Font-Size="Small" Styles-Header-Font-Bold="true" Theme="MetropolisBlue" SettingsPager-PageSizeItemSettings-Items="50" Styles-Header-HorizontalAlign="Center">
                            <SettingsPager>
                                <AllButton Text="All">
                                </AllButton>
                                <NextPageButton Text="Next &gt;">
                                </NextPageButton>
                                <PrevPageButton Text="&lt; Prev">
                                </PrevPageButton>
                                <PageSizeItemSettings Visible="true" Items="10, 25, 50, 100" ShowAllItem="true" />
                            </SettingsPager>
                            <Settings ShowFilterRow="true" ShowFilterRowMenu="false" ShowGroupPanel="true" ShowVerticalScrollBar="false" ShowHorizontalScrollBar="true" />
                            <Columns>
                                <dx:GridViewDataTextColumn Caption="ID" FieldName="ID" Width="100px" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"></dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Number ID" FieldName="GenesysNumber" Width="320px" CellStyle-HorizontalAlign="Center"></dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Channel" FieldName="ValueThread" Width="320px" CellStyle-HorizontalAlign="Center"></dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Name" FieldName="ThreadCustomerName" Width="320px"></dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Account" FieldName="Account" Width="320px"></dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Subject" FieldName="Subject" Width="500px"></dx:GridViewDataTextColumn>
                                <%--<dx:GridViewDataTextColumn Caption="Agent" FieldName="AgentID" Width="320px"></dx:GridViewDataTextColumn>--%>
                                <dx:GridViewDataTextColumn Caption="Date Email" FieldName="DatePickup" Width="320px" CellStyle-HorizontalAlign="Center"></dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Date Thread" FieldName="DateCreate" Width="320px" CellStyle-HorizontalAlign="Center"></dx:GridViewDataTextColumn>
                                <dx:GridViewDataHyperLinkColumn Settings-FilterMode="DisplayText" Caption="Action" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
                                    ShowInCustomizationForm="True" FieldName="CustomerID" Width="320px">
                                    <DataItemTemplate>
                                        <a href="#" onclick="ActionType('<%# Eval("ID") %>','Spam')">Spam</a>&nbsp;|
                                        <a href="#" onclick="ActionType('<%# Eval("ID") %>','Solved')">Solved</a>&nbsp;|&nbsp;
                                         <a href="#" onclick="PreviewEmail('<%# Eval("ThreadID") %>')">Preview</a>&nbsp;|&nbsp; 
                                        <dx:ASPxHyperLink Font-Underline="false" Font-Size="Small" ID="ASPxHyperLinkTest" Target="_blank" runat="server" Text="Follow up" 
                                            NavigateUrl='<%#String.Format("1_doticket.aspx?id={0}&channel={1}&n=1&threadid={2}&numberid={3}&account={4}", Eval("CustomerID"), Eval("ValueThread"), Eval("ThreadID"), Eval("GenesysNumber"), Eval("Account"))%>'>
                                        </dx:ASPxHyperLink>
                                    </DataItemTemplate>
                                </dx:GridViewDataHyperLinkColumn>
                            </Columns>
                        </dx:ASPxGridView>
                        <%-- <hr />
                        <div class="row">
                            <div class="col-sm-2">
                                <asp:DropDownList runat="server" ID="ddList" Height="30" CssClass="form-control input-sm">
                                    <asp:ListItem Value="xlsx" Text="Excel" />
                                    <asp:ListItem Value="xls" Text="Excel 97-2003" />
                                    <asp:ListItem Value="csv" Text="CSV" />
                                </asp:DropDownList>
                            </div>
                            <div class="col-sm-2">
                                <dx:ASPxButton ID="btn_Export" runat="server" Text="Export" Theme="Metropolis"
                                    HoverStyle-BackColor="#EE4D2D" Height="30px" Width="100%">
                                </dx:ASPxButton>
                            </div>
                        </div>
                        <hr />--%>
                    </div>
                    <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" GridViewID="ASPxGridView1"></dx:ASPxGridViewExporter>
                </div>
            </div>
        </div>
        <asp:SqlDataSource ID="DSChannel" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" runat="server"></asp:SqlDataSource>
    </section>
    <div class="modal center-modal fade" id="modal-center-reason" tabindex="-1" data-keyboard="false" data-backdrop="static">
            <div class="modal-dialog">
                <div class="modal-content" style="width: 900px; margin-left: -180px;">
                    <div class="modal-header">
                        <h5 class="modal-title">Form Reason Thread</h5>
                        <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <textarea rows="6" class="form-control" name="ReasonThread" id="ReasonThread" placeholder="Reason Thread"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer modal-footer-uniform">
                        <button type="button" class="btn btn-rounded btn-danger" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-rounded btn-primary float-right" onclick="ActionReasonThread()" id="SaveReasonThread">Submit</button>
                    </div>
                </div>
            </div>
        </div>
     <div class="modal center-modal fade" id="modal-center-email" tabindex="-1" data-keyboard="false" data-backdrop="static">
            <div class="modal-dialog">
                <div class="modal-content" style="width: 1100px; margin-left: -300px;">
                    <div class="modal-header">
                        <h5 class="modal-title">Detail Transaction</h5>
                        <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <iframe id="framefile_html" title="description" style="width: 100%; height: 500px;"></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer modal-footer-uniform">
                        <button type="button" class="btn btn-rounded btn-danger float-right" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
     <script src="js/ckeditor/ckeditor.js"></script>
    <script>
        var ReasonThread = CKEDITOR.replace('ReasonThread');
        ReasonThread.config.height = 200;
        ReasonThread.config.toolbar = 'Basic';
        ReasonThread.config.toolbar_Basic =
            [
                ['Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', '-', 'About']
            ];
    </script>
</asp:Content>

﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/apps/Uidesk.Master" CodeBehind="4_Reports.aspx.vb" Inherits="ICC._4_Reports" %>
<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-full">
		<!-- Content Header (Page header) -->
		<div class="content-header">
			<div class="d-flex align-items-center">
				<div class="w-p100 d-md-flex align-items-center justify-content-between">
					<h3 class="page-title">All Reports</h3>
					<div class="d-inline-block align-items-center">
						<nav>
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#"><i class="mdi mdi-home-outline"></i></a></li>
								<li class="breadcrumb-item" aria-current="page">Page</li>
								<li class="breadcrumb-item active" aria-current="page">Reports</li>
							</ol>
						</nav>
					</div>
				</div>
				
			</div>
		</div>

    <!-- Main content -->
    <section class="content">
        <div class="box bg-danger bg-temple-dark">				
					
					<div class="box-body mt-10">
						<span class="badge badge-warning">Please choice...</span>
						<h4 class="font-weight-100 mb-10"><a style="color:white" href="?rpt=all">1.Reports All Data Conversation</a></h4>
						<h4 class="font-weight-100 mb-10"><a style="color:white" href="?rpt=dateresponse">2.Reports Conversation By Interval Time</a></h4>
					</div>
				</div>
                <div class="row" runat="server" visible="false" id="divAllData">
                    <div class="col-xl-12 col-lg-12 col-12">
					    <div class="box">
						   
						    <div class="box-body p-15">		
                                <!-- New Template #RestuCode 2020-12-07 20:30 -->
							    <dx:ASPxGridView ID="gr_AllData" ClientInstanceName="gr_AllData" Width="100%" runat="server"
                                DataSourceID="dsAllData" KeyFieldName="NumberRow"
                                SettingsPager-PageSize="15" Theme="Office2010Black" Styles-Header-Font-Bold="true" Font-Size="X-Small" Visible="true">
                                <SettingsPager>
                                    <AllButton Text="All">
                                    </AllButton>
                                    <NextPageButton Text="Next &gt;">
                                    </NextPageButton>
                                    <PrevPageButton Text="&lt; Prev">
                                    </PrevPageButton>
                                    <PageSizeItemSettings Visible="true" Items="25, 50, 75" ShowAllItem="true" />
                                </SettingsPager>
                                <SettingsEditing Mode="Inline" />
                                <Settings ShowFilterRow="true" ShowGroupPanel="true" ShowHorizontalScrollBar="false" />
                                <SettingsBehavior ConfirmDelete="true" />
                                <Columns>
                                    
                                    <dx:GridViewDataTextColumn Caption="Chat ID" FieldName="ChatID" HeaderStyle-HorizontalAlign="left" Width="60px" Settings-AutoFilterCondition="Contains"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Name" FieldName="Nama" HeaderStyle-HorizontalAlign="left" Width="100px" Settings-AutoFilterCondition="Contains"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Type" FieldName="sender_type" HeaderStyle-HorizontalAlign="left" Width="130px" Settings-AutoFilterCondition="Contains"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Message" FieldName="Pesan" HeaderStyle-HorizontalAlign="left" Width="250px" Settings-AutoFilterCondition="Contains"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Date" FieldName="DateNya" HeaderStyle-HorizontalAlign="left" Width="250px" Settings-AutoFilterCondition="Contains"></dx:GridViewDataTextColumn>
                                    
                                </Columns>
                            </dx:ASPxGridView>
                                <asp:SqlDataSource ID="dsAllData" runat="server" SelectCommand="select * from WA_vw_Rpt_Conversation" ConnectionString="<%$ ConnectionStrings:WAConnection %>"></asp:SqlDataSource>
						        <!--End-->
                            </div>
					    </div>
				    </div>
                </div>
                <div class="row" runat="server" visible="false" id="divDateResponse">
                    <div class="col-xl-12 col-lg-12 col-12">
					    <div class="box">
						   
						    <div class="box-body p-15">		
                                <!-- New Template #RestuCode 2020-12-07 20:30 -->
							    <dx:ASPxGridView ID="gr_DateResponse" ClientInstanceName="gr_DateResponse" Width="100%" runat="server"
                                DataSourceID="dsDateResponse" KeyFieldName="NumberRow"
                                SettingsPager-PageSize="15" Theme="Office2010Black" Styles-Header-Font-Bold="true" Font-Size="X-Small" Visible="true">
                                <SettingsPager>
                                    <AllButton Text="All">
                                    </AllButton>
                                    <NextPageButton Text="Next &gt;">
                                    </NextPageButton>
                                    <PrevPageButton Text="&lt; Prev">
                                    </PrevPageButton>
                                    <PageSizeItemSettings Visible="true" Items="25, 50, 75" ShowAllItem="true" />
                                </SettingsPager>
                                <SettingsEditing Mode="Inline" />
                                <Settings ShowFilterRow="true" ShowGroupPanel="true" ShowHorizontalScrollBar="false" />
                                <SettingsBehavior ConfirmDelete="true" />
                                <Columns>
                                    
                                    <dx:GridViewDataTextColumn Caption="Chat ID" FieldName="ChatID" HeaderStyle-HorizontalAlign="left" Width="60px" Settings-AutoFilterCondition="Contains"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Customer Name" FieldName="CustomerName" HeaderStyle-HorizontalAlign="left" Width="100px" Settings-AutoFilterCondition="Contains"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Agent Name" FieldName="AgentName" HeaderStyle-HorizontalAlign="left" Width="130px" Settings-AutoFilterCondition="Contains"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Date WA Received" FieldName="DateRecevied" HeaderStyle-HorizontalAlign="left" Width="250px" Settings-AutoFilterCondition="Contains"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Date WA First Response" FieldName="DateFirstResponse" HeaderStyle-HorizontalAlign="left" Width="250px" Settings-AutoFilterCondition="Contains"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Date WA Last Response" FieldName="DateLastResponse" HeaderStyle-HorizontalAlign="left" Width="250px" Settings-AutoFilterCondition="Contains"></dx:GridViewDataTextColumn>
                                </Columns>
                            </dx:ASPxGridView>
                                <asp:SqlDataSource ID="dsDateResponse" runat="server" SelectCommand="select * from WA_vw_listIntervalChat" ConnectionString="<%$ ConnectionStrings:WAConnection %>"></asp:SqlDataSource>
						        <!--End-->
                            </div>
					    </div>
				    </div>
                </div>
    </section>
    <!-- /.content -->
    </div>
</asp:Content>

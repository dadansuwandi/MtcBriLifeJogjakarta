<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/apps/Uidesk.Master" CodeBehind="Extra_ExportUser.aspx.vb" Inherits="ICC.Extra_ExportUser" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="body">
        <div class="box-body">
            <dx:ASPxGridView ID="ASPxGridView1" ClientInstanceName="ASPxGridView1" runat="server" Font-Size="X-Small"
                DataSourceID="DatasourceWhatsApp" Width="100%" Styles-Header-Font-Bold="true" Theme="MetropolisBlue">
                <SettingsPager>
                    <AllButton Text="All">
                    </AllButton>
                    <NextPageButton Text="Next &gt;">
                    </NextPageButton>
                    <PrevPageButton Text="&lt; Prev">
                    </PrevPageButton>
                    <PageSizeItemSettings Visible="true" Items="10, 15, 20" ShowAllItem="true" />
                </SettingsPager>
                <Settings ShowFilterRow="true" ShowFilterRowMenu="false" ShowGroupPanel="true" ShowFilterBar="Hidden" EnableFilterControlPopupMenuScrolling="true"
                    ShowVerticalScrollBar="false" ShowFooter="false" ShowHorizontalScrollBar="false" />
                <Columns>
                    <dx:GridViewDataTextColumn Caption="User ID" FieldName="USERID" Width="200px" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="UserName" FieldName="USERNAME" Width="200px" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="Name" FieldName="NAME" Width="200px" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="Level User" FieldName="LEVELUSER" Width="200px" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn Caption="Email Address" FieldName="EMAIL_ADDRESS" Width="200px" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn Caption="Group Agent" FieldName="NamaGrup" Width="200px" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn Caption="Department" FieldName="ORGANIZATION_NAME" Width="200px" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn Caption="Site" FieldName="Site" Width="200px" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="Status" FieldName="Status" Width="200px" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="Date Create" FieldName="DATECREATE" Width="200px" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"></dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <hr />
            <div class="row">
                <div class="col-sm-2">
                    <asp:DropDownList runat="server" ID="ddList" Height="30" CssClass="form-control input-sm">
                        <asp:ListItem Value="xlsx" Text="Excel" />
                        <asp:ListItem Value="xls" Text="Excel 97-2003" />
                        <%--<asp:ListItem Value="pdf" Text="PDF" />
                        <asp:ListItem Value="rtf" Text="RTF" />--%>
                        <asp:ListItem Value="csv" Text="CSV" />
                    </asp:DropDownList>
                </div>
                <div class="col-sm-2">
                    <dx:ASPxButton ID="btn_Export" runat="server" Text="Export" Theme="Metropolis" ValidationGroup="SMLvalidationGroup"
                        Height="30px" Width="100%">
                    </dx:ASPxButton>
                </div>
            </div>
        </div>
    </div>
    <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" GridViewID="ASPxGridView1"></dx:ASPxGridViewExporter>
    <asp:SqlDataSource ID="DatasourceWhatsApp" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" runat="server"></asp:SqlDataSource>
</asp:Content>

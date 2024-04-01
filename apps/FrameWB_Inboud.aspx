<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/apps/Uidesk.Master" CodeBehind="FrameWB_Inboud.aspx.vb" Inherits="ICC.FrameWB_Inboud" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <iframe id="iframe_inbound" title="description" style="width: 100%; height: 700px;" src="http://10.28.2.225/uidesk/inbound.html"></iframe>
            </div>
        </div>
    </div>
</asp:Content>

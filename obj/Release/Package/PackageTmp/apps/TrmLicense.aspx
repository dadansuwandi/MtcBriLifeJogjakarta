<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/apps/Uidesk.Master" CodeBehind="TrmLicense.aspx.vb" Inherits="ICC.TrmLicense" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/vendors_css.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/skin_color.css">
    <script src="js/TrmAux.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content">
        <div class="row">
            <div class="col-12 col-xl-12">
                <div class="box bg-gradient-primary">
                    <div class="box-header">
                        <h4 class="box-title text-white">Packages License Application System</h4>
                        <%-- <ul class="box-controls pull-right">
                            <li class="dropdown">
                                <a data-toggle="dropdown" href="#" class="btn btn-rounded btn-outline btn-white px-10">Stats</a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="#"><i class="ti-import"></i>Import</a>
                                    <a class="dropdown-item" href="#"><i class="ti-export"></i>Export</a>
                                    <a class="dropdown-item" href="#"><i class="ti-printer"></i>Print</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#"><i class="ti-settings"></i>Settings</a>
                                </div>
                            </li>
                        </ul>--%>
                    </div>
                    <div class="box-body">
                        <div class="px-10 py-30 bg-white text-dark">
                            <h5 class="px-10 mb-15 font-weight-700">Phase 1 (17 Desember 2021)</h5>
                            <ul class="flexbox flex-justified">
                                <li class="br-1 bl-1 px-10">
                                    <h6 class="mb-0 text-bold">35</h6>
                                    <small>Total Licenses Voice Call</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">20</h6>
                                    <small>Used Licenses Inbound Call</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">8</h6>
                                    <small>Used Licenses Outbound Call</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">7</h6>
                                    <small>Remaining Licenses Voice Call</small>
                                </li>
                            </ul>
                            <br />
                            <ul class="flexbox flex-justified">
                                <li class="br-1 bl-1 px-10">
                                    <h6 class="mb-0 text-bold">70</h6>
                                    <small>Total Licenses Ticketing System</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">52</h6>
                                    <small>Used Licenses Ticketing System</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">52</h6>
                                    <small>Used Licenses Ticketing System</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">18</h6>
                                    <small>Remaining Licenses Ticketing System</small>
                                </li>
                            </ul>
                            <br />
                            <ul class="flexbox flex-justified">
                                <li class="br-1 bl-1 px-10">
                                    <h6 class="mb-0 text-bold">4</h6>
                                    <small>Total Licenses Email</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">0</h6>
                                    <small>Used Licenses Email</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">0</h6>
                                    <small>Used Licenses Email</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">4</h6>
                                    <small>Remaining Licenses Email</small>
                                </li>
                            </ul>
                            <br />
                            <ul class="flexbox flex-justified">
                                <li class="br-1 bl-1 px-10">
                                    <h6 class="mb-0 text-bold">4</h6>
                                    <small>Total Licenses WA</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">0</h6>
                                    <small>Used Licenses WA</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">0</h6>
                                    <small>Used Licenses WA</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">4</h6>
                                    <small>Remaining Licenses WA</small>
                                </li>
                            </ul>
                            <br />
                            <ul class="flexbox flex-justified">
                                <li class="br-1 bl-1 px-10">
                                    <h6 class="mb-0 text-bold">4</h6>
                                    <small>Total Licenses Sosial Media</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">0</h6>
                                    <small>Used Licenses Sosial Media</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">0</h6>
                                    <small>Used Licenses Sosial Media</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">4</h6>
                                    <small>Remaining Licenses Sosial Media</small>
                                </li>
                            </ul>
                        </div>
                        <div class="px-10 py-30 bg-white text-dark">
                            <h5 class="px-10 mb-15 font-weight-700">Phase 2 (30 Mei 2022)</h5>
                            <ul class="flexbox flex-justified">
                                <li class="br-1 bl-1 px-10">
                                    <h6 class="mb-0 text-bold">35</h6>
                                    <small>Total Licenses Voice Call</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">20</h6>
                                    <small>Used Licenses Inbound Call</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">8</h6>
                                    <small>Used Licenses Outbound Call</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">7</h6>
                                    <small>Remaining Licenses Voice Call</small>
                                </li>
                            </ul>
                            <br />
                            <ul class="flexbox flex-justified">
                                <li class="br-1 bl-1 px-10">
                                    <h6 class="mb-0 text-bold">70</h6>
                                    <small>Total Licenses Ticketing System</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">52</h6>
                                    <small>Used Licenses Ticketing System</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">52</h6>
                                    <small>Used Licenses Ticketing System</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">18</h6>
                                    <small>Remaining Licenses Ticketing System</small>
                                </li>
                            </ul>
                            <br />
                            <ul class="flexbox flex-justified">
                                <li class="br-1 bl-1 px-10">
                                    <h6 class="mb-0 text-bold">4</h6>
                                    <small>Total Licenses Email</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">0</h6>
                                    <small>Used Licenses Email</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">0</h6>
                                    <small>Used Licenses Email</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">4</h6>
                                    <small>Remaining Licenses Email</small>
                                </li>
                            </ul>
                            <br />
                            <ul class="flexbox flex-justified">
                                <li class="br-1 bl-1 px-10">
                                    <h6 class="mb-0 text-bold">4</h6>
                                    <small>Total Licenses WA</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">0</h6>
                                    <small>Used Licenses WA</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">0</h6>
                                    <small>Used Licenses WA</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">4</h6>
                                    <small>Remaining Licenses WA</small>
                                </li>
                            </ul>
                            <br />
                            <ul class="flexbox flex-justified">
                                <li class="br-1 bl-1 px-10">
                                    <h6 class="mb-0 text-bold">4</h6>
                                    <small>Total Licenses Sosial Media</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">0</h6>
                                    <small>Used Licenses Sosial Media</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">0</h6>
                                    <small>Used Licenses Sosial Media</small>
                                </li>
                                <li class="px-10">
                                    <h6 class="mb-0 text-bold">4</h6>
                                    <small>Remaining Licenses Sosial Media</small>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="box">
                    <div class="box-header with-border">
                        <h4 class="box-title">Uidesk License System</h4>
                    </div>
                    <div class="box-body">
                        <table id="TrmLicense" class="table mt-0 table-hover no-wrap table-borderless" style="width: 100%; overflow-x: scroll; overflow: scroll;">
                            <thead>
                                <tr>
                                    <th style="width:50px;">No</th>
                                    <th>License Channel</th>
                                    <th>License Tersedia</th>
                                    <th>License Terpakai</th>
                                    <th>License Tersisa</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

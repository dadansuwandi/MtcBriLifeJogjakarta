$(document).ready(function () {
    //TrmTabelTransaction();
    TableTaskboard()
    //KotakTaskboard()
});
//function TrmTabelTransaction() {
//	//alert(sessionStorage.getItem('user'));
//	$(".usr1").text(sessionStorage.getItem("user"));

//	$("#btnlogout").click(function (e) {
//		e.preventDefault();
//		sessionStorage.removeItem("user");
//		window.open("login.html", "_parent");
//	});

//	$("#menuproduct").click(function (e) {
//		e.preventDefault();
//		window.open("product.html", "_parent");
//	});
//	$("#menuclient").click(function (e) {
//		e.preventDefault();
//		window.open("client.html", "_parent");
//	});
//	$("#menutransaction").click(function (e) {
//		e.preventDefault();
//		window.open("transaction.html", "_parent");
//	});

//	let url = new URL(window.location.href)
//	//url = "http://127.0.0.1:9009/api/v1/list/qm-transactions?user=00296259&level=QA&status=Pending Approved";
//	//url =  "http://192.168.37.27:9009/api/v1/list/qm-transaction?user=00296259&level=QA&status=Pending Approved";
//	//url =  "http://103.66.46.141:9009/api/v1/list/call-log";
//	//url =  "http://127.0.0.1:9009/api/v1/list/call-log";
//	//url =  "http://127.0.0.1:9009/api/v1/list/call-logs";
//	url = "http://10.28.2.223:9009/api/v1/list/email/inbox";
//	//url = "http://127.0.0.1:9009/api/v1/list/email/outbox";
//	console.log(url)
//	$.fn.dataTable.ext.errMode = 'none';
//	$('#myTable').DataTable({
//		fixedHeader: true,
//		autoWidth: true,
//		serverSide: true,
//		deferRender: true,
//		bSortClasses: false,
//		sDom: 'r<"H"lf><"datatable-scroll"t><"F"ip>',
//		pageLength: 10,
//		processing: true, ajax: {},
//		bJQueryUI: true,
//		sPaginationType: "full_numbers",
//		language: {
//			processing: '<i class="fa fa-spinner fa-spin fa-2x fa-fw"></i><span>Loading...</span> '
//		},
//		ajax: {
//			method: "POST",
//			url: url,
//			beforeSend: function (xhr) {
//				xhr.setRequestHeader("Authorization",
//					"Basic " + btoa("Uidesk123:Uidesk123"));
//				//"Basic VWlkZXNrMTIzOlVpZGVzazEyMw==");
//			},
//			data: function (data) {
//				console.log(data);
//				data.order[0].dir = data.order[0].dir.toUpperCase();
//				return data;
//			}
//		},
//		columns: [
//			{
//				data: null,
//				render: function (data, type, row, meta) {
//					return meta.row + meta.settings._iDisplayStart + 1;
//				}
//			},
//			{ data: "EMAIL_ID" },
//			{ data: "DIRECTION" },
//			{ data: "EFROM" },
//			{ data: "ETO" },
//			{ data: "ECC" },
//			{ data: "SUBJECT" },
//			{
//				data: "FLAG_HANDLING",
//				render: function (data, type, row) {
//					if (data == "0") {
//						return "<span class=\"label label-inverse\">Finish</span>";
//					} else if (data == "1") {
//						return "<span class=\"label label-light-danger\">Approved</span>";
//					} else {
//						return data;
//					}
//				},
//				className: 'text-center'
//			},
//		],
//		columnDefs: [
//			{ targets: "_all", orderable: false, className: "text-nowrap" },
//		]
//	});
//}
function getParameterByName(name, url = window.location.href) {
    name = name.replace(/[\[\]]/g, '\\$&');
    var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, ' '));
}
function TrmTabelTransaction() {
    let url = new URL(window.location.href)
    url = "http://10.28.2.223:9009/api/v1/list/email/inbox";
    console.log(url)
    $.fn.dataTable.ext.errMode = 'none';
    $('#TrmTableHistoryNewX').DataTable({
        fixedHeader: true,
        autoWidth: true,
        serverSide: true,
        deferRender: true,
        bSortClasses: false,
        sDom: 'r<"H"lf><"datatable-scroll"t><"F"ip>',
        pageLength: 10,
        processing: true, ajax: {},
        bJQueryUI: true,
        sPaginationType: "full_numbers",
        language: {
            processing: '<i class="fa fa-spinner fa-spin fa-2x fa-fw"></i><span>Loading...</span> '
        },
        ajax: {
            method: "POST",
            url: url,
            crossDomain: true,
            data: function (data) {
                console.log(data);
                data.order[0].dir = data.order[0].dir.toUpperCase();
                return data;
            }
        },
        columns: [
            {
                data: null,
                render: function (data, type, row, meta) {
                    return meta.row + meta.settings._iDisplayStart + 1;
                }
            },
            { data: "account" },
            { data: "EFROM" },
            { data: "ESUBJECT" },
            { data: "NAME" },
            { data: "Email_Date" },
            { data: "DIRECTION" },
            {
                data: "FLAG_HANDLING",
                render: function (data, type, row) {
                    if (data == "0") {
                        return "<span class=\"label label-inverse\">Finish</span>";
                    } else if (data == "1") {
                        return "<span class=\"label label-light-danger\">Approved</span>";
                    } else {
                        return data;
                    }
                },
                className: 'text-center'
            },
        ],
        columnDefs: [
            { targets: "_all", orderable: false, className: "text-normal" },
        ]
    });
}
function TableTaskboard() {
    if (getParameterByName("group") == null) {
        var AgentGrouping = "0"
    } else {
        if ($("#TrxLayerUser").val() == "Supervisor") {
            var AgentGrouping = $("#TrxDivisi").val()
            var TicketPosition = "3"
        } else {
            var AgentGrouping = getParameterByName("group")
            var TicketPosition = $("#TrxLoginTypeAngka").val()
        }
    }  
    $(document).ready(function () {
        //alert(sessionStorage.getItem('user'));
        $(".usr1").text(sessionStorage.getItem("user"));

        $("#btnlogout").click(function (e) {
            e.preventDefault();
            sessionStorage.removeItem("user");
            window.open("login.html", "_parent");
        });

        $("#menuproduct").click(function (e) {
            e.preventDefault();
            window.open("product.html", "_parent");
        });
        $("#menuclient").click(function (e) {
            e.preventDefault();
            window.open("client.html", "_parent");
        });
        $("#menutransaction").click(function (e) {
            e.preventDefault();
            window.open("transaction.html", "_parent");
        });

        let url = new URL(window.location.href)
        url = "http://10.28.2.223:9009/api/v1/list/spopen?username=" + $("#hd_sessionLogin").val() + "&status=" + getParameterByName("status") + "&ticketPosition=" + TicketPosition +"&userDivisi=" + AgentGrouping +"";
        //url =  "http://127.0.0.1:9009/api/v1/list/qm-transactions?user=00296259&level=QA&status=Pending Approved";
        //url =  "http://192.168.37.27:9009/api/v1/list/qm-transaction?user=00296259&level=QA&status=Pending Approved";
        //url =  "http://103.66.46.141:9009/api/v1/list/call-log";
        //url =  "http://127.0.0.1:9009/api/v1/list/call-log";
        //url =  "http://127.0.0.1:9009/api/v1/list/call-logs";
        //url =  "http://10.28.2.223:9009/api/v1/list/email/inbox";
        //url =  "http://127.0.0.1:9009/api/v1/list/email/inbox";
        console.log("url api " + url)
        $.fn.dataTable.ext.errMode = 'none';
        $('#TaskboardTicket').DataTable({
            fixedHeader: true,
            autoWidth: true,
            serverSide: true,
            deferRender: true,
            bSortClasses: false,
            sDom: 'r<"H"lf><"datatable-scroll"t><"F"ip>',
            pageLength: 10,
            processing: true, ajax: {},
            bJQueryUI: true,
            sPaginationType: "full_numbers",
            language: {
                processing: '<i class="fa fa-spinner fa-spin fa-2x fa-fw"></i><span>Loading...</span> '
            },
            ajax: {
                method: "POST",
                url: url,
                beforeSend: function (xhr) {
                    xhr.setRequestHeader("Authorization",
                        "Basic " + btoa("Uidesk123:Uidesk123"));
                    //"Basic VWlkZXNrMTIzOlVpZGVzazEyMw==");
                },
                data: function (data) {
                    console.log(data);
                    data.order[0].dir = data.order[0].dir.toUpperCase();
                    return data;
                }
            },
            columns: [
                {
                    data: null,
                    render: function (data, type, row, meta) {
                        return meta.row + meta.settings._iDisplayStart + 1;
                    }
                },
                { data: "TicketNumber" },
                { data: "NamePIC" },

                {
                    data: "CategoryName",
                    //render: function (data, type, row) {
                    //    return "<span class=\"label label-inverse\">" + data + "</span>";
                    //},
                    className: 'text-center'
                },
                {
                    data: "SubCategory3Name",
                    //render: function (data, type, row) {
                    //    return "<span class=\"label label-inverse\">" + data + "</span>";
                    //},
                    className: 'text-center'
                },
                { data: "SLA" },
                { data: "UsedDaySLAOK" },
                //{ data: "TicketPosition" },
                {
                    data: "TicketPosition",
                    render: function (data, type, row) {
                        if (data == "1") {
                            return "Layer 1";
                        } else if (data == "2") {
                            return "Layer 2";
                        } else if (data == "3") {
                            return "Layer 3";
                        } else {
                            return data;
                        }
                    },
                    className: 'text-center'
                },
                {
                    data: "Status",
                    render: function (data, type, row) {
                        if (data == "Open") {
                            return "<span class='badge badge-pill badge-primary' style='width: 100%;'>" + row.Status + "</span>";
                        } else if (data == "Pending") {
                            return "<span class='badge badge-pill badge-warning' style='width: 100%;'>" + row.Status + "</span>";
                        } else if (data == "Solved") {
                            return "<span class='badge badge-pill badge-success' style='width: 100%;'>" + row.Status + "</span>";
                        } else if (data == "Closed") {
                            return "<span class='badge badge-pill badge-danger' style='width: 100%;'>" + row.Status + "</span>";
                        } else {
                            return data;
                        }
                    },
                    className: 'text-center'
                },
                {
                    data: "datecreate",
                    render: function (data, type, row) {
                        return new Date(data).toLocaleString();
                    },
                    className: 'text-nowrap'
                },
                //{ data: "NAMA_PELAPOR" },
                {
                    data: "NAMA_PELAPOR",
                    render: function (data, type, row) {
                        if ($("#TrxLayerUser").val() == "Admin" || $("#TrxLayerUser").val() == "layer2") {
                            //return data
                            var urlaction = "<div class='dropdown'>" +
                                "<a data-toggle='dropdown' href='#'><i class='ti-more-alt rotate-90 text-black'></i></a>" +
                                "<div class='dropdown-menu dropdown-menu-right'>" +
                                "<a class='dropdown-item' href='#' onclick=showInternalNote('" + row.TicketNumber + "')><i class='fa fa-plus'></i> Internal Note</a>" +
                                "<a class='dropdown-item' href='#' onclick=showReminder('" + row.TicketNumber + "')><i class='fa fa-envelope'></i> Email Reminder</a>" +
                                "<div class='dropdown-divider'></div>" +
                                "<a class='dropdown-item' href='1_journey.aspx?ticketid=" + row.TicketNumber + "&numberid=0&threadid=0&status=" + row.Status + "'><i class='si-arrow-right-circle si'></i> Follow up</a>" +
                                "</div>" +
                                "</div>"
                        } else {
                            var urlaction = "<div class='dropdown'>" +
                                "<a data-toggle='dropdown' href='#'><i class='ti-more-alt rotate-90 text-black'></i></a>" +
                                "<div class='dropdown-menu dropdown-menu-right'>" +
                                "<a class='dropdown-item' href='#' onclick=showInternalNote('" + row.TicketNumber + "')><i class='fa fa-plus'></i> Internal Note</a>" +
                                "<div class='dropdown-divider'></div>" +
                                "<a class='dropdown-item' href='1_journey.aspx?ticketid=" + row.TicketNumber + "&numberid=0&threadid=0&status=" + row.Status + "'><i class='si-arrow-right-circle si'></i> Follow up</a>" +
                                "</div>" +
                                "</div>"
                        }
                        return urlaction
                    },
                    className: 'text-left'
                },
            ],             
            order: [[9, "desc"]],
            columnDefs: [
                { targets: "_all", orderable: true, className: "text-nowrap" },
            ]
        });
        function newexportaction(e, dt, button, config) {
            var self = this;
            var oldStart = dt.settings()[0]._iDisplayStart;
            dt.one('preXhr', function (e, s, data) {
                // Just this once, load all data from the server...
                data.start = 0;
                data.length = 2147483647;
                dt.one('preDraw', function (e, settings) {
                    // Call the original action function
                    if (button[0].className.indexOf('buttons-copy') >= 0) {
                        $.fn.dataTable.ext.buttons.copyHtml5.action.call(self, e, dt, button, config);
                    } else if (button[0].className.indexOf('buttons-excel') >= 0) {
                        $.fn.dataTable.ext.buttons.excelHtml5.available(dt, config) ?
                            $.fn.dataTable.ext.buttons.excelHtml5.action.call(self, e, dt, button, config) :
                            $.fn.dataTable.ext.buttons.excelFlash.action.call(self, e, dt, button, config);
                    } else if (button[0].className.indexOf('buttons-csv') >= 0) {
                        $.fn.dataTable.ext.buttons.csvHtml5.available(dt, config) ?
                            $.fn.dataTable.ext.buttons.csvHtml5.action.call(self, e, dt, button, config) :
                            $.fn.dataTable.ext.buttons.csvFlash.action.call(self, e, dt, button, config);
                    } else if (button[0].className.indexOf('buttons-pdf') >= 0) {
                        $.fn.dataTable.ext.buttons.pdfHtml5.available(dt, config) ?
                            $.fn.dataTable.ext.buttons.pdfHtml5.action.call(self, e, dt, button, config) :
                            $.fn.dataTable.ext.buttons.pdfFlash.action.call(self, e, dt, button, config);
                    } else if (button[0].className.indexOf('buttons-print') >= 0) {
                        $.fn.dataTable.ext.buttons.print.action(e, dt, button, config);
                    }
                    dt.one('preXhr', function (e, s, data) {
                        // DataTables thinks the first item displayed is index 0, but we're not drawing that.
                        // Set the property to what it was before exporting.
                        settings._iDisplayStart = oldStart;
                        data.start = oldStart;
                    });
                    // Reload the grid with the original page. Otherwise, API functions like table.cell(this) don't work properly.
                    setTimeout(dt.ajax.reload, 0);
                    // Prevent rendering of the full data to the DOM
                    return false;
                });
            });
            // Requery the server with the new one-time export settings
            dt.ajax.reload();
        }
    });

}
//function KotakTaskboard() {
//    var ValUserID = $("#hd_sessionLogin").val();
//    var ValLayerID = $("#TrxLoginTypeAngka").val();
//    var result = "";
//    var messageDiv = $('#2_TampungKotakAtas');
//    var ValSpv = $("#TrxLayerUser").val();
//    if ($("#TrxLayerUser").val() == "Admin") {
//        var ValLayerID = GroupAgent;
//    } else {
//        var ValLayerID = $("#TrxLoginTypeAngka").val();
//    }
//    if ($('#ComboGroupAgent').val() == "") {
//        var GroupAgent = getParameterByName("group")
//    } else {
//        var GroupAgent = $('#ComboGroupAgent').val()
//    }
//    $.ajax({
//        type: "POST",
//        url: "asmx/ServiceTaskboard.asmx/ws_2_taskboard",
//        data: "{UserID: '" + ValUserID + "',LayerID: '" + ValLayerID + "',Spv: '" + ValSpv + "'}",
//        contentType: "application/json; charset=utf-8",
//        dataType: "json",
//        success: function (data) {
//            var json = JSON.parse(data.d);
//            var i, x = "";
//            messageDiv.empty();
//            for (i = 0; i < json.length; i++) {
//                //alert(json[i].JumlahData);
//                result = '<div class="col-lg-3 col-6"> ' +
//                    //<a class="box box-link-shadow text-center" href="2_taskboard.aspx?status=' + json[i].StatusData + '&group=' + GroupAgent + '&mid=' + getParameterByName("mid") + '&smid=' + getParameterByName("smid") + '"> ' +
//                    '<a class="box box-link-shadow text-center" href="http://10.28.2.223:9009/api/v1/list/spopen?username=' + $("#hd_sessionLogin").val() + '&status=' + json[i].StatusData +'&ticketPosition=0&userDivisi=0"> ' +
//                    '<div class="box-body"> ' +
//                    '<div class="font-size-24">' + json[i].JumlahData + '</div> ' +
//                    '<span>' + json[i].StatusData + '</span> ' +
//                    '</div> ' +
//                    '<div class="box-body ' + json[i].statusColor + '"> ' +
//                    '<center> ' +
//                    '<span class="mdi ' + json[i].statusIcon + ' font-size-30"></span> ' +
//                    '</center> ' +
//                    '</div> ' +
//                    '</a> ' +
//                    '</div>';

//                messageDiv.append(result);
//            }

//        },
//        error: function (xmlHttpRequest, textStatus, errorThrown) {
//            console.log(xmlHttpRequest.responseText);
//            console.log(textStatus);
//            console.log(errorThrown);
//        }
//    })
//}
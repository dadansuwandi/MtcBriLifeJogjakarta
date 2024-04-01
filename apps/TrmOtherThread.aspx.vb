Public Class TrmOtherThread
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DSChannel.SelectCommand = "EXEC BL_GridviewThread '" & Session("UserName") & "'"
    End Sub

    Private Sub ASPxGridView1_Load(sender As Object, e As EventArgs) Handles ASPxGridView1.Load
        DSChannel.SelectCommand = "EXEC BL_GridviewThread '" & Session("UserName") & "'"
    End Sub
    'Private Sub btn_Export_Click(sender As Object, e As EventArgs) Handles btn_Export.Click
    '    Dim casses As String = ddList.SelectedValue
    '    Select Case casses
    '        Case "xlsx"
    '            ASPxGridViewExporter1.WriteXlsxToResponse("DataIncomingThread_" & DateTime.Now.ToString("yyyyMMddhhmmss"))
    '        Case "xls"
    '            ASPxGridViewExporter1.WriteXlsToResponse("DataIncomingThread_" & DateTime.Now.ToString("yyyyMMddhhmmss"))
    '        Case "rtf"
    '            ASPxGridViewExporter1.Landscape = True
    '            ASPxGridViewExporter1.LeftMargin = 35
    '            ASPxGridViewExporter1.RightMargin = 30
    '            ASPxGridViewExporter1.MaxColumnWidth = 108
    '            ASPxGridViewExporter1.WriteRtfToResponse("DataIncomingThread_" & DateTime.Now.ToString("yyyyMMddhhmmss"))
    '        Case "pdf"
    '            ASPxGridViewExporter1.Landscape = True
    '            ASPxGridViewExporter1.LeftMargin = 35
    '            ASPxGridViewExporter1.RightMargin = 30
    '            ASPxGridViewExporter1.MaxColumnWidth = 108
    '            ASPxGridViewExporter1.WritePdfToResponse("DataIncomingThread_" & DateTime.Now.ToString("yyyyMMddhhmmss"))
    '        Case "csv"
    '            ASPxGridViewExporter1.WriteCsvToResponse("DataIncomingThread_" & DateTime.Now.ToString("yyyyMMddhhmmss"))
    '    End Select
    'End Sub

End Class
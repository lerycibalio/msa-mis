﻿using System;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Windows.Forms;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.Data;

namespace MSAMISUserInterface {
    public partial class ReportsForm : Form {
        public SqlConnection conn;
        public DateTime dateToday = DateTime.Now;

        public ReportsForm() {
            InitializeComponent();
            RefreshGuardsSummaryList();
            RefreshClientsSummaryList();
        }

        //-----------------------------------------------------------------------------------------------------------
        //-----------------------------------------------------------------------------------------------------------
        //-----------------------------------------------------------------------------------------------------------
        //-----------------------------------------------------------------------------------------------------------
        //-----------------------------------------------------------------------------------------------------------
        //-----------------------------------------------------------------------------------------------------------
        //-----------------------------------------------------------------------------------------------------------
        //-----------------------------------------------------------------------------------------------------------
        //-----------------------------------------------------------------------------------------------------------
        //-----------------------------------------------------------------------------------------------------------


        private void CExportToPDFBTN_Click(object sender, EventArgs e) { }

        public DataGridView GetDataGridViewData(char o) {
            if (o == 'c')
                return ClientsSummaryTBL;
            if (o == 'g')
                return GuardsSummaryTBL;
            return null;
        }

        private PdfPTable FormatPDF(char formOrigin) {
            //Default PDF Format
            var myfont = FontFactory.GetFont("Arial", 10, BaseColor.BLACK);
            var headerfont = FontFactory.GetFont("Arial", 11, BaseColor.BLACK);
            var pdfTable = new PdfPTable(GetDataGridViewData(formOrigin).ColumnCount);
            pdfTable.SetWidths(Reports.GetPDFFormat(formOrigin));
            pdfTable.DefaultCell.VerticalAlignment = Element.ALIGN_MIDDLE;
            pdfTable.DefaultCell.HorizontalAlignment = Element.ALIGN_LEFT;
            pdfTable.DefaultCell.Padding = 3;
            pdfTable.WidthPercentage = 30;
            pdfTable.DefaultCell.BorderWidth = 1;
            pdfTable.HorizontalAlignment = 1;
            pdfTable.TotalWidth = 1000f;
            pdfTable.LockedWidth = true;

            //Add Headers Here
            pdfTable.DefaultCell.HorizontalAlignment = Element.ALIGN_CENTER;
            pdfTable.AddCell(new Phrase("Client Name", headerfont));
            pdfTable.AddCell(new Phrase("Status", headerfont));
            pdfTable.AddCell(new Phrase("Client Address", headerfont));
            pdfTable.AddCell(new Phrase("Manager", headerfont));
            pdfTable.AddCell(new Phrase("Contact Person", headerfont));
            pdfTable.AddCell(new Phrase("Contact Number", headerfont));


            //Add Data to PDF
            foreach (DataGridViewRow row in GetDataGridViewData(formOrigin).Rows)
            foreach (DataGridViewCell cell in row.Cells) {
                var newcell = new PdfPCell(new Phrase(cell.Value.ToString(), myfont));
                newcell.PaddingTop = 5f;
                newcell.PaddingBottom = 8f;
                pdfTable.AddCell(newcell);
            }
            return pdfTable;
        }

        #region Excel Reports

        #region Guards Summary

        public void RefreshGuardsSummaryList() {
            GuardsSummaryTBL.DataSource = Reports.GetGuardsList();
            GuardsSummaryTBL.Columns["Full Name"].HeaderText = "NAME";
            GuardsSummaryTBL.Columns["Status"].HeaderText = "STATUS";
            GuardsSummaryTBL.Columns["Cell Number"].HeaderText = "CONTACT NUMBER";
            GuardsSummaryTBL.Columns["License Number"].HeaderText = "LICENSE NUMBER";
            GuardsSummaryTBL.Columns["SSS"].HeaderText = "SSS";
            GuardsSummaryTBL.Columns["TIN"].HeaderText = "TIN NO";
            GuardsSummaryTBL.Columns["PHIC"].HeaderText = "PHIC";

            #region Format Table

            GuardsSummaryTBL.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            GuardsSummaryTBL.Columns["Full Name"].Width = 200;
            GuardsSummaryTBL.Columns["Status"].Width = 70;
            GuardsSummaryTBL.Columns["Cell Number"].Width = 140;

            GuardsSummaryTBL.Sort(GuardsSummaryTBL.Columns[1], ListSortDirection.Ascending);

            #endregion
        }

        #endregion

        #region Clients Summary

        public void RefreshClientsSummaryList() {
            ClientsSummaryTBL.DataSource = Reports.GetClientsList();

            ClientsSummaryTBL.Columns["Name"].HeaderText = "NAME";
            ClientsSummaryTBL.Columns["Status"].HeaderText = "STATUS";
            ClientsSummaryTBL.Columns["Address"].HeaderText = "ADDRESS";
            ClientsSummaryTBL.Columns["Manager"].HeaderText = "MANAGER";
            ClientsSummaryTBL.Columns["Contact Person"].HeaderText = "CONTACT PERSON";
            ClientsSummaryTBL.Columns["Contact Number"].HeaderText = "CONTACT NUMBER";

            #region Format Table

            ClientsSummaryTBL.Columns["Name"].Width = 200;
            ClientsSummaryTBL.Columns["Status"].Width = 70;
            ClientsSummaryTBL.Columns["Address"].Width = 250;
            ClientsSummaryTBL.Columns["Manager"].Width = 170;
            ClientsSummaryTBL.Columns["Contact Person"].Width = 170;
            ClientsSummaryTBL.Columns["Contact Number"].Width = 110;
            ClientsSummaryTBL.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            ClientsSummaryTBL.Sort(ClientsSummaryTBL.Columns[1], ListSortDirection.Ascending);

            #endregion
        }

        #endregion

        #endregion

        #region FormEvents

        private void ExportGuardsSummaryBTN_Click(object sender, EventArgs e) {
            var r = new Reports();
            //r.ExporttoExcel('g');
        }

        private void ExportClientsSummaryBTN_Click(object sender, EventArgs e) {
            
            var rp = new ReportsPreview();

            /*
            srp.FormatPDF('s');1
            rp.FormatPDF('g');
            rp.FormatPDF('c');
            
            */
            var r = new Reports();
            r.PrintPayslipPDF();
            rp.FormatPDF('s');
            //
            //r.ExportToPayslipPDF(Payroll.GetApprovedPayrollsList());



        }

        private void label43_Click(object sender, EventArgs e) {
            ClientsReportPNL.Hide();
            GuardsReportPNL.Show();
        }

        private void label2_Click(object sender, EventArgs e) {
            GuardsReportPNL.Hide();
            ClientsReportPNL.Show();
        }

        private void ReportsForm_Load(object sender, EventArgs e) {
            GSummaryDateLBL.Text = "Guards Summary as of " + DateTime.Now.ToString("MM/dd/yyyy");
            CSummaryDateLBL.Text = "Clients Summary as of " + DateTime.Now.ToString("MM/dd/yyyy");
            GTotalLBL.Text = "Total Guards: " + Reports.GetTotalGuards('g', 't');
            GTotalActiveLBL.Text = "Total Active Guards: " + Reports.GetTotalGuards('g', 'a');
            CTotalLBL.Text = "Total Clients: " + Reports.GetTotalGuards('c', 't');
            CTotalActiveLBL.Text = "Total Active Clients: " + Reports.GetTotalGuards('c', 'a');
        }

        #endregion

        #region PDF Reports

        #region Client Report

        #endregion


        #region Client Report

        #endregion

        #endregion
    }
}

/*------------------PROGRESS BLOCK-----------------
 * Segregate and clean method
 * Add Headers
 * Separate into Methods
 * 
 * 
 */
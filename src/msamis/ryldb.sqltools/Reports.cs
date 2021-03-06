﻿using System.Data.SqlClient;
using System;
using iTextSharp.text.pdf;
using iTextSharp.text;
using System.IO;
using System.Windows.Forms;
using System.Data;
using System.Drawing.Printing;
using System.Linq;
using MySql.Data.MySqlClient.Properties;
using rylui;

namespace MSAMISUserInterface
{
    public class Reports
    {
        public int flagAlign = 0;
        public SqlConnection conn;
        public String FilterText = "Search or filter";
        public String EmptyText = "";
        public static String ExtraQueryParams = "";
        public string summaryDate = "";
        public Font myfontPayslip = FontFactory.GetFont("Arial", 10, BaseColor.BLACK);
        public Font boldfontPayslip = FontFactory.GetFont("Arial", 10, Font.BOLD, BaseColor.BLACK);
        public Font boldunderfontPayslip = FontFactory.GetFont("Arial", 10, Font.BOLD | Font.UNDERLINE, BaseColor.BLACK);
        public Font reportHeaderFont = FontFactory.GetFont("Arial", 14, Font.BOLD, BaseColor.BLACK);
        public Font myfont = FontFactory.GetFont("Arial", 8, BaseColor.BLACK);
        public Font boldfont = FontFactory.GetFont("Arial", 8, Font.BOLD, BaseColor.BLACK);
        public Font boldunderfont = FontFactory.GetFont("Arial", 8, Font.BOLD | Font.UNDERLINE, BaseColor.BLACK);
        public Font testFont = FontFactory.GetFont("Segoe UI", 10, BaseColor.BLACK);
        public String fileName;
        public Image LetterHeadImage  = Resources.ResourceManager.GetObject("Letterhead.png") as Image;

        Font LetterHeadFont = FontFactory.GetFont("Arial", 18, iTextSharp.text.Font.BOLD, BaseColor.BLUE);
        Font LetterHeadFontSmall = FontFactory.GetFont("Arial", 10, BaseColor.BLACK);

        #region Guards Report

        public static DataTable GetGuardsList()
        {
            ExtraQueryParams = "ORDER BY GStatus desc";
            String q = "SELECT concat(ln,', ',fn,' ',mn) AS 'Full Name', CASE WHEN GStatus = 1 THEN 'Active' WHEN GStatus = 0 THEN 'Inactive' END as Status,  CellNo as 'Cell Number', LicenseNo as 'License Number', SSS, TIN, PhilHealth as PHIC FROM msadb.guards " + ExtraQueryParams;
            return SQLTools.ExecuteQuery(q);
        }

        private static String getGuardsQuery(char id)
        {
            if (id == 't')
                return "SELECT COUNT(GStatus) FROM msadb.guards";
            else if (id == 'a')
                return "SELECT COUNT(GStatus) FROM msadb.guards WHERE GStatus = 1";
            return "";
        }

        #endregion

        #region Clients Export
        public static DataTable GetClientsList()
        {
            ExtraQueryParams = " ORDER BY Name asc";
            String q = "SELECT Name as 'Name', CASE WHEN CStatus = 1 THEN 'Active' WHEN CStatus = 0 THEN 'Inactive' END as Status, concat(ClientStreetNo,' ', ClientStreet, ', ', ClientBrgy, ', ', ClientCity) as Address, Manager, ContactPerson as 'Contact Person', ContactNo as 'Contact Number' FROM msadb.client" + ExtraQueryParams;
            return SQLTools.ExecuteQuery(q);
        }

        private static String getClientsQuery(char id)
        {
            if (id == 't')
                return "SELECT COUNT(CStatus) FROM msadb.client";
            else if (id == 'a')
                return "SELECT COUNT(CStatus) FROM msadb.client WHERE CStatus = 1";
            return "";
        }

        #endregion

        #region Duty Detail Export
        public static DataTable GetDutyDetailList()
        {
            ExtraQueryParams = "GROUP BY concat(guards.ln, ', ', guards.fn, ' ', guards.mn) ORDER BY client.Name asc; ";
            String q = "SELECT client.Name as 'Client Name' , concat(guards.ln, ', ', guards.fn, ' ', guards.mn) AS 'Guards Assigned', guards.LicenseNo as 'License Number', concat(request_assign.streetno, ' ', request_assign.streetname, ', ', request_assign.brgy, ', ', request_assign.city) as 'Assignment Address', concat(dutydetails.TI_hh, ':', dutydetails.TI_mm, ' ', dutydetails.TI_period) AS 'Shift Start', concat(dutydetails.TO_hh, ':', dutydetails.TO_mm, ' ', dutydetails.TO_period) AS 'Shift End', concat(CASE WHEN(dutydetails.Sun = 1) THEN 'S' END, CASE WHEN(dutydetails.Mon = 1) THEN 'M' END, CASE WHEN(dutydetails.Tue = 1) THEN 'T' END, CASE WHEN(dutydetails.Wed = 1) THEN 'W' END, CASE WHEN(dutydetails.Thu = 1) THEN 'Th' END, CASE WHEN(dutydetails.Fri = 1) THEN 'F' END, CASE WHEN(dutydetails.Sat = 1) THEN 'Sa' END) AS 'Shift Days', CAST(request_assign.ContractStart AS date) AS 'Contract Start', CAST(request_assign.ContractEnd AS DATE) AS 'Contract End' FROM sduty_assignment JOIN guards ON sduty_assignment.GID = guards.GID JOIN request_assign ON sduty_assignment.RAID = request_assign.RAID JOIN request ON request_assign.RID = request.RID JOIN client ON request.CID = client.CID LEFT JOIN dutydetails ON sduty_assignment.AID = dutydetails.AID " + ExtraQueryParams;
            return SQLTools.ExecuteQuery(q);
        }

        #endregion

        #region Salary Export
        public static DataTable GetSalaryList()
        {
            var dt = new DataTable();
            var approvedlist = Payroll.GetApprovedPayrollsList();
            int gid, month, period, year;
            int i;

            for (i = 0; i <= 19; i++)
            dt.Columns.Add();

            for (i = 0; i < Payroll.GetApprovedPayrollsList().Rows.Count; i++)
            {
                gid = Convert.ToInt32(approvedlist.Rows[i][0]);
                month = Convert.ToInt32(approvedlist.Rows[i][1]);
                period = Convert.ToInt32(approvedlist.Rows[i][2]);
                year = Convert.ToInt32(approvedlist.Rows[i][3]);
                PayrollReport pr = new PayrollReport(gid, year, month, period);

                DataRow dr = dt.NewRow();
                dr[0] = pr.LN + ", " + pr.FN + " " + pr.MN;
                dr[1] = pr.DaysOfWork;
                dr[2] = pr.Rate.ToString("₱0.00");
                dr[3] = pr.TotalRegularWage.ToString("₱0.00");
                dr[4] = pr.overtime.RegularDay.hour;
                dr[5] = pr.overtime.RegularDay.total.ToString("₱0.00");
                dr[6] = pr.overtime.SundayAndHoliday.hour;
                dr[7] = pr.overtime.SundayAndHoliday.total.ToString("₱0.00");
                dr[8] = pr.TotalAmount.ToString("₱0.00");
                dr[9] = pr.Sss.ToString("₱0.00");
                dr[10] = pr.PHIC.ToString("₱0.00");
                dr[11] = pr.Withtax.ToString("₱0.00");
                dr[12] = pr.HDMF.ToString("₱0.00");
                dr[13] = pr.CashAdvance.ToString("₱0.00");
                dr[14] = pr.ThirteenthMonthPay.ToString("₱0.00");
                dr[15] = pr.Cola.ToString("₱0.00");
                dr[16] = pr.CashBond.ToString("₱0.00");
                dr[17] = pr.EmergencyAllowance.ToString("₱0.00");
                dr[18] = pr.NetAmountPaid.ToString("₱0.00");
               dr[19] = "";

                dt.Rows.InsertAt(dr, i);
            }
            return dt;
        }

        #endregion

        #region Export

        public static DataTable GetList(char formOrigin)
        {
            if (formOrigin == 'g')
                return GetGuardsList();
            else if (formOrigin == 'c')
                return GetClientsList();
            else if (formOrigin == 'd')
                return GetDutyDetailList();
            else if (formOrigin == 's')
                return GetSalaryList();
            else return null;
        }
        #endregion

        public static int GetTotalGuards(char origin, char id)
        {
            if (origin == 'g')
            {
                DataTable dt = SQLTools.ExecuteQuery(getGuardsQuery(id));
                return int.Parse(dt.Rows[0][0].ToString());
            }
            else if (origin == 'c')
            {
                DataTable dt = SQLTools.ExecuteQuery(getClientsQuery(id));
                return int.Parse(dt.Rows[0][0].ToString());
            }
            return 0;
        }

        public void ExportToPDF(PdfPTable HeaderTable, PdfPTable pdfTable, char formOrigin)
        {


            var newLine = Environment.NewLine;
            //Exporting to PDF
            var fileName = GetFileName(formOrigin);
            var filePath = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments) + "\\" + "MSAMIS Reports";
            if (!Directory.Exists(filePath))
                Directory.CreateDirectory(filePath);

            if (File.Exists(filePath + "\\" + fileName)) {
                if (formOrigin == 'g' || formOrigin == 'c') { 
                    DialogResult x = rylui.RylMessageBox.ShowDialog(fileName + " already exists.\nDo you want to replace it?", "", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                    if (x == DialogResult.Yes)
                    {
                        File.Delete(filePath + "\\" + fileName);
                    }
                } else File.Delete(filePath + "\\" + fileName);
        }

            using (var stream = new FileStream(filePath + "\\" + fileName, FileMode.Create))
            {
                var pdfDoc = new Document(PageSize.LEGAL.Rotate(), 30f, 50f, 30f, 50f);
                PdfWriter.GetInstance(pdfDoc, stream);
                pdfDoc.Open();
                PdfPTable LHTable = new PdfPTable(1);
                LHTable.WidthPercentage = 100;
                LHTable.DefaultCell.BorderWidth = 0;
                LHTable.DefaultCell.HorizontalAlignment = Element.ALIGN_CENTER;

                Phrase LetterHead = new Phrase("MAKABAYAN SECURITY AGENCY" + newLine, LetterHeadFont);
                Phrase letterhead1 = new Phrase("168 Margarita Village, First Avenue, Bajada, Davao City, 8000 Davao del Sur" + newLine, LetterHeadFontSmall);
                Phrase letterhead2 = new Phrase("Tel. No.: (082) 221 2365          Fax No.: +63 (82) 226.9715" + newLine, LetterHeadFontSmall);

                LHTable.AddCell(LetterHead);
                LHTable.AddCell(letterhead1);
                LHTable.AddCell(letterhead2);
                pdfDoc.Add(LHTable);
                pdfDoc = addSummaryInfo(pdfDoc, formOrigin);
                //pdfDoc.Add(ReportHeader);
                
                pdfDoc.Add(HeaderTable);
                //Add Spacing
                pdfDoc.Add(pdfTable);
                pdfDoc.Close();
                stream.Close();
            }
        //PrintPDF(filePath, fileName);
        }

        public Phrase getTitlePhrase(char o)
        {
            
            if (o == 'g')
                return new Phrase("GUARDS SUMMARY", reportHeaderFont);
            else if (o == 'c')
                return new Phrase("CLIENTS SUMMARY", reportHeaderFont);
            else if (o == 'd')
                return new Phrase("DUTY DETAIL REPORT", reportHeaderFont);
            else if (o == 's')
                return new Phrase("SALARY REPORT", reportHeaderFont);
            else
                return new Phrase("");
        }

        public Document addSummaryInfo(Document pdfDoc, char o)
        {

            if (o == 'g') {
                var Header = new Phrase();
                var HeaderChunk = new Chunk("Total Guards: ", boldfont);
                var HeaderChunk1 = new Chunk(GetSummaryTotal(o, 2).ToString() + "    ", myfont);
                var HeaderChunk2 = new Chunk("Total Guards Active: ", boldfont);
                var HeaderChunk3 = new Chunk(GetSummaryTotal(o, 1).ToString() + "    ", myfont);
                var HeaderChunk4 = new Chunk("Total Guards Inactive: ", boldfont);
                var HeaderChunk5 = new Chunk(GetSummaryTotal(o, 0).ToString(), myfont);
                Header.Add(HeaderChunk);
                Header.Add(HeaderChunk1);
                Header.Add(HeaderChunk2);
                Header.Add(HeaderChunk3);
                Header.Add(HeaderChunk4);
                Header.Add(HeaderChunk5);

                pdfDoc.Add(Header);
            }
            else if (o == 'c')
            {
                Phrase Header = new Phrase();
                Chunk HeaderChunk = new Chunk("Total Clients: ", boldfont);
                Chunk HeaderChunk1 = new Chunk(GetSummaryTotal(o, 2).ToString() + "    ", myfont);
                Chunk HeaderChunk2 = new Chunk("Total Clients Active: ", boldfont);
                Chunk HeaderChunk3 = new Chunk(GetSummaryTotal(o, 1).ToString() + "    ", myfont);
                Chunk HeaderChunk4 = new Chunk("Total Clients Inactive: ", boldfont);
                Chunk HeaderChunk5 = new Chunk(GetSummaryTotal(o, 0).ToString(), myfont);
                Header.Add(HeaderChunk);
                Header.Add(HeaderChunk1);
                Header.Add(HeaderChunk2);
                Header.Add(HeaderChunk3);
                Header.Add(HeaderChunk4);
                Header.Add(HeaderChunk5);

                pdfDoc.Add(Header);

            }
            else if (o == 'd')
            {
                Phrase Header = new Phrase();
                Chunk HeaderChunk = new Chunk("Total Clients with Assignments: ", boldfont);
                Chunk HeaderChunk1 = new Chunk(GetSummaryTotal(o, 0).ToString() + "    ", myfont);
                Chunk HeaderChunk2 = new Chunk("Total Guards with Assignments: ", boldfont);
                Chunk HeaderChunk3 = new Chunk(GetSummaryTotal(o, 1).ToString() + "    ", myfont);
                Header.Add(HeaderChunk);
                Header.Add(HeaderChunk1);
                Header.Add(HeaderChunk2);
                Header.Add(HeaderChunk3);

                pdfDoc.Add(Header);
            }
            else if (o == 's')
            {
                Phrase Header = new Phrase();
                Chunk HeaderChunk = new Chunk("Total Guards with Salary: ", boldfont);
                Chunk HeaderChunk1 = new Chunk(GetSummaryTotal(o, 0).ToString() + "    ", myfont);
                Header.Add(HeaderChunk);
                Header.Add(HeaderChunk1);
                pdfDoc.Add(Header);
            }
            return pdfDoc;
        }

        public void ExportToPayslipPDFOne(DataTable approvedList, string file) {
            int i;
            var PrintTable = new PdfPTable(2);
            var alignTable = new PdfPTable(2);

            alignTable.DefaultCell.Padding = 3;
            alignTable.WidthPercentage = 100;
            alignTable.DefaultCell.BorderWidth = 0;
            //alignTable.LockedWidth = true;

            PrintTable.DefaultCell.Padding = 3;
            PrintTable.WidthPercentage = 100;
            PrintTable.DefaultCell.BorderWidth = 0;

            //rylui.RylMessageBox.ShowDialog("Flag boiii");
            for (i = 0; i < approvedList.Rows.Count; i++) {
                var gid = Convert.ToInt32(approvedList.Rows[i][0]);
                var month = Convert.ToInt32(approvedList.Rows[i][1]);
                var period = Convert.ToInt32(approvedList.Rows[i][2]);
                var year = Convert.ToInt32(approvedList.Rows[i][3]);

                var newLine = Environment.NewLine;
                var pr = new PayrollReport(gid, year, month, period);
                var p = Attendance.GetCurrentPayPeriod();
                //Content
                //Name
                var GuardFullName = pr.LN.ToUpper() + ", " + pr.FN.ToUpper() + " " + pr.MN[0].ToString().ToUpper() + ".";
                var Name = new Phrase(GuardFullName + newLine, boldfontPayslip);

                var Header = new Phrase("THIS IS TO CERTIFY THAT I'VE RECEIVED THE FULL AMOUNT OF MY SALARY FOR THE PERIOD OF ", myfontPayslip);
                var ChunkHeader2 = new Chunk(($@"{(p.period == 1 ? "1ST HALF" : "2ND HALF")} OF {p.month}/{p.year}") + newLine + newLine, boldfontPayslip);

                Header.Add(ChunkHeader2);

                //deductions

                alignTable.AddCell(new Phrase("DEDUCTIONS:" + newLine, boldunderfontPayslip));
                alignTable.AddCell(new Phrase(" ", boldunderfontPayslip));

                alignTable.AddCell(new Phrase("SSS: ", myfontPayslip));
                alignTable.AddCell(new Phrase("Php " + pr.Sss.ToString("0.00"), myfontPayslip));

                alignTable.AddCell(new Phrase("PHIC: ", myfontPayslip));
                alignTable.AddCell(new Phrase("Php " + pr.PHIC.ToString("₱0.00"), myfontPayslip));

                alignTable.AddCell(new Phrase("Tax Withhold: ", myfontPayslip));
                alignTable.AddCell(new Phrase("Php " + pr.Withtax.ToString("₱0.00"), myfontPayslip));

                alignTable.AddCell(new Phrase("Pag-Ibig: ", myfontPayslip));
                alignTable.AddCell(new Phrase("Php " + pr.HDMF.ToString("₱0.00"), myfontPayslip));

                alignTable.AddCell(new Phrase("Cash Advance: ", myfontPayslip));
                alignTable.AddCell(new Phrase("Php " + pr.CashAdvance.ToString("₱0.00"), myfontPayslip));

                var TotalDedVal = pr.Sss + pr.PHIC + pr.Withtax + pr.HDMF + pr.CashAdvance;
                alignTable.AddCell(new Phrase("Total Deductions: ", boldfontPayslip));
                alignTable.AddCell(new Phrase("Php " + TotalDedVal.ToString("₱0.00"), boldfontPayslip));

                alignTable.AddCell(new Phrase(" "));
                alignTable.AddCell(new Phrase(" "));

                //Bonuses
                alignTable.AddCell(new Phrase("BONUSES:", boldunderfontPayslip));
                alignTable.AddCell(new Phrase("", boldunderfontPayslip));

                alignTable.AddCell(new Phrase("Thirteenth Month: ", myfontPayslip));
                alignTable.AddCell(new Phrase("Php " + pr.ThirteenthMonthPay.ToString("₱0.00"), myfontPayslip));

                alignTable.AddCell(new Phrase("Cola: ", myfontPayslip));
                alignTable.AddCell(new Phrase("Php " + pr.Cola.ToString("₱0.00"), myfontPayslip));

                alignTable.AddCell(new Phrase("Cash Bond: ", myfontPayslip));
                alignTable.AddCell(new Phrase("Php " + pr.CashBond.ToString("₱0.00"), myfontPayslip));

                alignTable.AddCell(new Phrase("Emergency Allowance: ", myfontPayslip));
                alignTable.AddCell(new Phrase("Php " + pr.EmergencyAllowance.ToString("₱0.00"), myfontPayslip));

                var TotalBonVal = pr.ThirteenthMonthPay + pr.Cola + pr.CashBond + pr.EmergencyAllowance;
                alignTable.AddCell(new Phrase("Total Bonuses: ", boldfontPayslip));
                alignTable.AddCell(new Phrase("Php " + TotalBonVal.ToString("₱0.00"), boldfontPayslip));

                alignTable.DefaultCell.Colspan = 2;
                alignTable.AddCell(new Phrase(" "));

                alignTable.AddCell(new Phrase("PLEASE COUNT YOUR MONEY BEFORE LEAVING", myfontPayslip));

                alignTable.AddCell(new Phrase(" "));

                alignTable.AddCell(new Phrase("TOTAL PAY: Php " + pr.NetAmountPaid.ToString("₱0.00"), boldunderfontPayslip));

                //Export Content
                
                using (var stream = new FileStream(file, FileMode.Create)) {
                    var pdfDoc = getPDFSize(approvedList.Rows.Count);// new Document(PageSize.A8, 10f, 10f, 10f, 10f);
                    PdfWriter.GetInstance(pdfDoc, stream);
                    pdfDoc.Open();

                    pdfDoc.Add(Name);
                    pdfDoc.Add(Header);
                    
                    pdfDoc.Add(alignTable);
                    pdfDoc.Close();
                    stream.Close();
                }
            }
        }

        public void ExportToPayslipPDF(DataTable approvedList, bool printFlag)
        {
            int gid, month, period, year;
            int i;

            string filePath = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments) + "\\" + "MSAMIS Reports";
            var PrintTable = new PdfPTable(2);
            var alignTable = new PdfPTable(2);
            Document pdfDoc = getPDFSize(approvedList.Rows.Count);

            alignTable.DefaultCell.Padding = 3;
            alignTable.WidthPercentage = 100;
            alignTable.DefaultCell.BorderWidth = 0;
            //alignTable.LockedWidth = true;
            Paragraph par = new Paragraph();
            PrintTable.DefaultCell.Padding = 3;
            PrintTable.WidthPercentage = 100;
            PrintTable.DefaultCell.BorderWidth = 0;
            if (approvedList.Rows.Count != 1) fileName = "PayslipBatchPrintTemp.pdf";
            //rylui.RylMessageBox.ShowDialog("Flag boiii");
            for (i = 0; i < approvedList.Rows.Count; i++)
            {
                alignTable = new PdfPTable(2);
                alignTable.HorizontalAlignment = Element.ALIGN_LEFT;
                alignTable.DefaultCell.Padding = 3;
                alignTable.WidthPercentage = 45;
                alignTable.DefaultCell.BorderWidth = 0;

                gid = Convert.ToInt32(approvedList.Rows[i][0]);
                month = Convert.ToInt32(approvedList.Rows[i][1]);
                period = Convert.ToInt32(approvedList.Rows[i][2]);
                year = Convert.ToInt32(approvedList.Rows[i][3]);


                var newLine = Environment.NewLine;
                PayrollReport pr = new PayrollReport(gid, year, month, period);
                Attendance.Period p = Attendance.GetCurrentPayPeriod();
                //Content
                //Name
                String GuardFullName = pr.LN.ToUpper() + ", " + pr.FN.ToUpper() + " " + pr.MN[0].ToString().ToUpper() + ".";
                Phrase Name = new Phrase(GuardFullName + newLine, boldfontPayslip);
                //rylui.RylMessageBox.ShowDialog(GuardFullName);

                Phrase Header = new Phrase("THIS IS TO CERTIFY THAT I'VE RECEIVED THE FULL" + newLine + " AMOUNT OF MY SALARY FOR THE PERIOD OF " + newLine, myfontPayslip);
                Chunk ChunkHeader2 = new Chunk(($@"{(p.period == 1 ? "1ST HALF" : "2ND HALF")} OF {p.month}/{p.year}") + newLine + newLine, boldfontPayslip);

                Header.Add(ChunkHeader2);

                //deductions

                alignTable.AddCell(new Phrase("DEDUCTIONS:" + newLine, boldunderfontPayslip));
                alignTable.AddCell(new Phrase(" ", boldunderfontPayslip));

                alignTable.AddCell(new Phrase("SSS: ", myfontPayslip));
                alignTable.AddCell(new Phrase("Php " + pr.Sss.ToString("0.00"), myfontPayslip));

                alignTable.AddCell(new Phrase("PHIC: ", myfontPayslip));
                alignTable.AddCell(new Phrase("Php " + pr.PHIC.ToString("₱0.00"), myfontPayslip));

                alignTable.AddCell(new Phrase("Tax Withhold: ", myfontPayslip));
                alignTable.AddCell(new Phrase("Php " + pr.Withtax.ToString("₱0.00"), myfontPayslip));

                alignTable.AddCell(new Phrase("Pag-Ibig: ", myfontPayslip));
                alignTable.AddCell(new Phrase("Php " + pr.HDMF.ToString("₱0.00"), myfontPayslip));

                alignTable.AddCell(new Phrase("Cash Advance: ", myfontPayslip));
                alignTable.AddCell(new Phrase("Php " + pr.CashAdvance.ToString("₱0.00"), myfontPayslip));

                double TotalDedVal = pr.Sss + pr.PHIC + pr.Withtax + pr.HDMF + pr.CashAdvance;
                alignTable.AddCell(new Phrase("Total Deductions: ", boldfontPayslip));
                alignTable.AddCell(new Phrase("Php " + TotalDedVal.ToString("₱0.00"), boldfontPayslip));

                alignTable.AddCell(new Phrase(" "));
                alignTable.AddCell(new Phrase(" "));

                //Bonuses
                alignTable.AddCell(new Phrase("BONUSES:", boldunderfontPayslip));
                alignTable.AddCell(new Phrase("", boldunderfontPayslip));

                alignTable.AddCell(new Phrase("Thirteenth Month: ", myfontPayslip));
                alignTable.AddCell(new Phrase("Php " + pr.ThirteenthMonthPay.ToString("₱0.00"), myfontPayslip));

                alignTable.AddCell(new Phrase("Cola: ", myfontPayslip));
                alignTable.AddCell(new Phrase("Php " + pr.Cola.ToString("₱0.00"), myfontPayslip));

                alignTable.AddCell(new Phrase("Cash Bond: ", myfontPayslip));
                alignTable.AddCell(new Phrase("Php " + pr.CashBond.ToString("₱0.00"), myfontPayslip));

                alignTable.AddCell(new Phrase("Emergency Allowance: ", myfontPayslip));
                alignTable.AddCell(new Phrase("Php " + pr.EmergencyAllowance.ToString("₱0.00"), myfontPayslip));

                double TotalBonVal = pr.ThirteenthMonthPay + pr.Cola + pr.CashBond + pr.EmergencyAllowance;
                alignTable.AddCell(new Phrase("Total Bonuses: ", boldfontPayslip));
                alignTable.AddCell(new Phrase("Php " + TotalBonVal.ToString("₱0.00"), boldfontPayslip));

                alignTable.DefaultCell.Colspan = 2;
                alignTable.AddCell(new Phrase(" "));

                alignTable.AddCell(new Phrase("PLEASE COUNT YOUR MONEY BEFORE LEAVING", myfontPayslip));

                alignTable.AddCell(new Phrase(" "));

                alignTable.AddCell(new Phrase("TOTAL PAY: Php " + pr.NetAmountPaid.ToString("₱0.00") + newLine + newLine, boldunderfontPayslip));
                alignTable.DefaultCell.Colspan = 1;

                //Export Content
                if (approvedList.Rows.Count == 1)
                    fileName = "Payslip" + pr.LN + pr.FN + pr.MN + ($@"{p.year}-{p.month}-{(p.period == 1 ? "1st_Half" : "2nd_Half")}") + ".pdf";
                
                if (!Directory.Exists(filePath))
                    Directory.CreateDirectory(filePath);


                if (File.Exists(filePath + "\\" + fileName))
                {

                    File.Delete(filePath + "\\" + fileName);

                }
     

                par.Add(Name);
                par.Add(Header);
                par.Add(alignTable);
            }
            using (FileStream stream = new FileStream(filePath + "\\" + fileName, FileMode.Create))
            {
                //pdfDoc = new Document();
                PdfWriter.GetInstance(pdfDoc, stream);
                pdfDoc.Open();
                pdfDoc.Add(par);
                pdfDoc.Close();
                stream.Close();
            }
            if (printFlag == true)
            {
                PrintPDF(fileName);
            }
        }


        private Document getPDFSize(int count)
        {
            if (count == 1)
                return new Document(PageSize.A6, 10f, 10f, 10f, 10f);
            else return new Document(PageSize.A4, 10f, 60f, 10f, 10f);
        }

        public void PrintPayslipPDF()
        {
            String filePath = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments) + "\\" + "MSAMIS Reports";
            var dirInfo = new DirectoryInfo(filePath);
            var file = (from f in dirInfo.GetFiles("Payslip*.pdf") orderby f.LastWriteTime descending select f).First();

        }

        public static void PrintPDF(String fileName)
        {
            String filePath = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments) + "\\" + "MSAMIS Reports";
            String fileTempDir = filePath + "\\newTemp.pdf";
            String fileDir = filePath + "\\" + fileName;
           if (File.Exists(fileTempDir))
               File.Delete(fileTempDir);
            foreach (string printer in PrinterSettings.InstalledPrinters)
                Console.WriteLine(printer);
            var printerSettings = new PrinterSettings();
            Console.WriteLine(string.Format("The default printer is: {0}", printerSettings.PrinterName));

            Console.WriteLine(printerSettings.PrintFileName);

            Console.WriteLine(fileName);

            PrintDialog printdg = new PrintDialog();
            PrintDocument pdoc = new PrintDocument();
            //printdg.ShowDialog();
            if (printdg.ShowDialog() == DialogResult.OK)
            {
                pdoc.PrinterSettings.PrinterName = printdg.PrinterSettings.PrinterName;
                pdoc.DocumentName = fileTempDir;
                pdoc.PrinterSettings.PrintFileName = fileTempDir;
                pdoc.PrinterSettings.PrintToFile = true;
                pdoc.Print();
            }
            if (File.Exists(fileTempDir))
                File.Delete(fileTempDir);
        }


        

        public static String GetFileName(char o)
            {
                if (o == 'c')
                    return "ClientsSummaryReport_" + DateTime.Now.ToString("MMM-dd-yyyy") + ".pdf";
                else if (o == 'g')
                    return "GuardsSummaryReport_" + DateTime.Now.ToString("MMM-dd-yyyy") + ".pdf";
                else if (o == 'd')
                    return "SchedSummaryReport_" + DateTime.Now.ToString("MMM-dd-yyyy") + ".pdf";
                else if (o == 's')
                    return "SalaryReport_" + DateTime.Now.ToString("MMM-dd-yyyy") + ".pdf";
            return null;
            }

            public static float[] GetPDFFormat(char formOrigin)
            {
                if (formOrigin == 'c')
                    return new float[] { 120f, 50f, 250f, 135f, 135f, 80f };
                else if (formOrigin == 'g')
                    return new float[] { 120f, 50f, 90f, 80f, 90f, 90f, 90f };
                else if (formOrigin == 'd')
                    return new float[] { 130f, 130f, 80f, 230f, 60f, 60f, 60f, 120f, 120f };
            else if (formOrigin == 's')
                return new float[] { 30f, 10f, 10f, 10f, 8f,/*5*/ 8f, 8f, 8f, 10f, 8f,/*5*/  10f, 10f, 10f, 10f, 10f,/*5*/ 10f, 10f, 10f, 10f, 20f /*5*/ };
            return null;
        }

        public static int GetSummaryTotal(char o, int status)
        {
            String ExtraQueryParams = " ";
            String q;
            var dt = new DataTable();
            int total = 0;
            String[] qp = getQueryParams(o);
            String tableID = qp[0];
            String tableName = qp[1];
            String cond = qp[2];

            if (o == 'c' || o == 'g')
            {
                switch (status)
                {
                    case 0:
                        q = "SELECT " + tableID + " FROM msadb." + tableName + " WHERE " + cond + " = 0" + ExtraQueryParams;
                        dt = SQLTools.ExecuteQuery(q);
                        total = dt.Rows.Count;
                        break;
                    case 1:
                        q = "SELECT " + tableID + " FROM msadb." + tableName + " WHERE " + cond + " = 1" + ExtraQueryParams;
                        dt = SQLTools.ExecuteQuery(q);
                        total = dt.Rows.Count;
                        break;
                    case 2:
                        q = "SELECT " + tableID + " FROM msadb." + tableName + ExtraQueryParams;
                        dt = SQLTools.ExecuteQuery(q);
                        total = dt.Rows.Count;
                        break;
                }
            }
            else if (o == 'd')
            {
                switch (status)
                {
                    case 0:
                        ExtraQueryParams = "GROUP BY cid";
                        q = "SELECT * FROM msadb.sduty_assignment " + ExtraQueryParams;
                        dt = SQLTools.ExecuteQuery(q);
                        total = dt.Rows.Count;
                        break;
                    case 1:
                        ExtraQueryParams = "";
                        q = "SELECT * FROM msadb.sduty_assignment" + ExtraQueryParams;
                        dt = SQLTools.ExecuteQuery(q);
                        total = dt.Rows.Count;
                        break;
                }
            }
            else if (o == 's')
                total = Payroll.GetApprovedPayrollsList().Rows.Count;

            return total;
        }

        public static String[] getQueryParams(char o)
        {
            String[] id = null;
            switch (o)
            {
                case 'g':
                    return new String[] { "GID", "guards", "GStatus" };
                case 'c':
                    return new String[] { "CID", "client", "CStatus" };
                case 'd':
                    return new String[] { "", "sduty_assignment", "cid" };
                case 's':
                    return new String[] { "", "", "" };
            }
            return id;
        }

        private void DataChecker(DataTable dt)
        {
            if (dt.Rows.Count == 0)
            {
                DialogResult dr = rylui.RylMessageBox.ShowDialog("You don't seem to have any data for printing", "", MessageBoxButtons.OK);
                if (dr == DialogResult.OK)
                {
                    //do Something to close
                }
            }
        }
    }
}


﻿using System;
using System.Drawing;
using System.Windows.Forms;

namespace MSAMISUserInterface {
    public partial class Exporting : Form {
        public MainForm Main;
        public char Mode;
        public Shadow Refer;
        int i = 0;

        public Exporting() {
            InitializeComponent();
            Opacity = 0;
        }

        private const int CsDropshadow = 0x20000;

        protected override CreateParams CreateParams {
            get {
                var cp = base.CreateParams;
                cp.ClassStyle |= CsDropshadow;
                return cp;
            }
        }

        private void Exporting_Load(object sender, EventArgs e) {
            label69.Text = "Exporting to PDF";
            label68.Text = "Please wait...";
            FadeInTMR.Start();
        }

        private void FadeInTMR_Tick(object sender, EventArgs e)
        {
            Opacity += 0.2;
            if (Opacity >= 1)
            {
                FadeInTMR.Stop();
                Export();
            }
        }

        private void FadeOutTMR_Tick(object sender, EventArgs e)
        {
            i++;
            if (i >= 150)
            {
                Opacity -= 0.2;
                if (Opacity <= 0)
                {
                    FadeOutTMR.Stop();
                    Close();
                }
            }

        }

        private void Exporting_FormClosing(object sender, FormClosingEventArgs e) {
            Refer.Hide();
        }

        private void Exporting_Shown(object sender, EventArgs e) { }

        private void Export() {
            var rp = new ReportsPreview();
            var r = new Reports();
            /*String fullFilePath;
            if (Mode == 's') r.ExportPayslipPDF();
            else
            */
            rp.FormatPDF(Mode);

            if (Mode == 'g') Main.GuardsLoadReport();
            else if (Mode == 'c') Main.ClientsLoadSummary();
            else if (Mode == 'd') Main.SchedLoadReport();
            else if (Mode == 's') Main.PayLoadReport();

            this.Close();
            //else if (Mode == 'p')

            /*
            if (Mode == 'g' || Mode == 'c')
            {
                fullFilePath = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments) + "\\MSAMIS Reports\\" + Reports.GetFileName(Mode);
                
                if (!System.IO.File.Exists(fullFilePath))
                {
                    label69.Text = "Something went wrong!";
                    label68.Text = "The file was not created. Please try again.";
                }
                else
                {
                    label69.Text = "Exporting Success!";
                    label68.Text = "Your file has been successfuly exported.";
                }
                FadeOutTMR.Start();
            }
            else
            {
                FadeOutTMR.Start();
            }
            */
        }
    }
}
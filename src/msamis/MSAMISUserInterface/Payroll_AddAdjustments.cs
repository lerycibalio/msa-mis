﻿using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MSAMISUserInterface {
    public partial class Payroll_AddAdjustments : Form {
        public int PID { get; set; }
        public MySqlConnection conn;

        public Payroll_AddAdjustments() {
            InitializeComponent();
            this.Opacity = 0;
        }

        private void FadeTMR_Tick(object sender, EventArgs e) {
            this.Opacity += 0.2;
            if (this.Opacity >= 1) { FadeTMR.Stop(); }
        }

        private void Payroll_AddAdjustments_FormClosing(object sender, FormClosingEventArgs e) {
            FadeTMR.Start();
        }

        private void Payroll_AddAdjustments_Load(object sender, EventArgs e) {
            FadeTMR.Start();
        }

        private void CloseBTN_Click(object sender, EventArgs e) {
            this.Close();
        }
    }
}

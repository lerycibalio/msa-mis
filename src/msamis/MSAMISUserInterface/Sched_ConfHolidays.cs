﻿using MySql.Data.MySqlClient;
using ryldb.sqltools;
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
    public partial class Sched_ConfHolidays : Form {
        public Sched_ViewDutyDetails reference;
        public MySqlConnection conn;

        #region Form Properties and Load
        public Sched_ConfHolidays() {
            InitializeComponent();
            this.Opacity = 0;
        }

        private void Sched_ConfHolidays_Load(object sender, EventArgs e) {
            LoadPage();
            FadeTMR.Start();



        }

        private void FadeTMR_Tick(object sender, EventArgs e) {
            this.Opacity += 0.2;
            if (this.Opacity >= 1) FadeTMR.Stop();
        }

        private void CloseBTN_Click(object sender, EventArgs e) {
            this.Close();
        }
        private void LoadPage() {
            HolidaysGRD.DataSource = Holiday.GetHolidays();
            HolidaysGRD.Columns[0].Visible = false;
            HolidaysGRD.Columns[1].HeaderText = "START DATE";
            HolidaysGRD.Columns[1].Width = 70;
            HolidaysGRD.Columns[2].HeaderText = "START END";
            HolidaysGRD.Columns[2].Width = 70;
            HolidaysGRD.Columns[3].HeaderText = "DESCRIPTION";
            HolidaysGRD.Columns[3].Width = 300;

            List<DateTime> dts = new List<DateTime>();

            foreach (DataGridViewRow row in HolidaysGRD.Rows) {
                if (row.Cells[1].Value.ToString().Equals(row.Cells[2].Value.ToString())) {
                    dts.Add(new DateTime(int.Parse(row.Cells[1].Value.ToString().Split('/')[2]), int.Parse(row.Cells[1].Value.ToString().Split('/')[0]), int.Parse(row.Cells[1].Value.ToString().Split('/')[1])));
                } else {
                    int count = int.Parse(row.Cells[2].Value.ToString().Split('/')[1]) - int.Parse(row.Cells[1].Value.ToString().Split('/')[1]);
                    for (int i = 0; i < count; i++) dts.Add(new DateTime(int.Parse(row.Cells[1].Value.ToString().Split('/')[2]), int.Parse(row.Cells[1].Value.ToString().Split('/')[0]), int.Parse(row.Cells[1].Value.ToString().Split('/')[1])+i));
                }
            }
           HoldaysCLNDR.BoldedDates = dts.ToArray();

        }
        #endregion

        private void HoldaysCLNDR_DateSelected(object sender, DateRangeEventArgs e) {
            if (HoldaysCLNDR.SelectionRange.Start.Day - HoldaysCLNDR.SelectionRange.End.Day != 0) DateLBL.Text = HoldaysCLNDR.SelectionRange.Start.ToShortDateString() + " - " + HoldaysCLNDR.SelectionRange.End.ToShortDateString();
            else DateLBL.Text = HoldaysCLNDR.SelectionRange.Start.ToShortDateString();
        }

        private void AddBTN_Click(object sender, EventArgs e) {
            Holiday.AddHoliday(HoldaysCLNDR.SelectionRange, DescBX.Text);
        }
    }
}

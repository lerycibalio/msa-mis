﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ryldb.sqltools;

namespace MSAMISUserInterface {
    public partial class LoginForm : Form {
        public LoginForm() {
            InitializeComponent();
            this.Opacity = 0;
            FadeTMR.Start();
        }

        private void GEditDetailsBTN_Click(object sender, EventArgs e) {
            Login();
        }

        private void Login() {
            if (PasswordBX.Text.Equals("")) {
                rylui.RylMessageBox.ShowDialog("Please enter your password");
            } else if (UsernameBX.Text.Equals("")) {
                rylui.RylMessageBox.ShowDialog("Please enter your username");
            } else {
                MainForm mf = new MainForm();
                mf.Opacity = 0;
                mf.lf = this;
                mf.user = UsernameBX.Text;
                mf.Show();
                this.Hide();
            }
        }

        private void FadeTMR_Tick(object sender, EventArgs e) {
            this.Opacity += 0.2;
        }

        private void CloseBTN_Click(object sender, EventArgs e) {
            Application.Exit();
        }

        bool mouseDown;
        Point lastLocation;

        private void Form_MouseUp(object sender, MouseEventArgs e) {
            mouseDown = false;
        }
        private void Form_MouseDown(object sender, MouseEventArgs e) {
            mouseDown = true;
            lastLocation = e.Location;
        }
        private void Form_MouseMove(object sender, MouseEventArgs e) {
            if (mouseDown) {
                this.Location = new Point(
                    (this.Location.X - lastLocation.X) + e.X, (this.Location.Y - lastLocation.Y) + e.Y
                    );
                this.Update();
            }
        }
        private void PassPic_MouseDown(object sender, MouseEventArgs e) {
            PasswordBX.PasswordChar = '\0';
        }

        private void PassPic_MouseUp(object sender, MouseEventArgs e) {
            PasswordBX.PasswordChar = '●';
        }

        private void UsernameBX_KeyDown(object sender, KeyEventArgs e) {
            if (e.KeyValue.ToString().Equals("13")) {
                Login();
            }
        }

        private void PasswordBX_KeyDown(object sender, KeyEventArgs e) {
            if (e.KeyValue.ToString().Equals("13")) {
                Login();
            }
        }


        /*
         * Important: Para mag coordinate atong db's.
         * Returns an error if database if not updated (if ever gi edit ni Ler).
         * Opens browser, to download updated sql file.
         */


        private void bttesterxa_Click(object sender, EventArgs e) {
            Backend_Tester bt = new Backend_Tester();
            bt.ShowDialog();
        }

 
    }
}

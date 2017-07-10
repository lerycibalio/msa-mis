﻿namespace MSAMISUserInterface {
    partial class LoginForm {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing) {
            if (disposing && (components != null)) {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent() {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(LoginForm));
            this.UsernameBX = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.PasswordBX = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.FadeTMR = new System.Windows.Forms.Timer(this.components);
            this.PassPic = new System.Windows.Forms.PictureBox();
            this.CloseBTN = new System.Windows.Forms.Button();
            this.LoginBTN = new System.Windows.Forms.Button();
            this.UsernameTLTP = new System.Windows.Forms.ToolTip(this.components);
            this.PasswordTLTP = new System.Windows.Forms.ToolTip(this.components);
            this.panel2 = new System.Windows.Forms.Panel();
            this.LLBL = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.PassPic)).BeginInit();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // UsernameBX
            // 
            this.UsernameBX.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(53)))), ((int)(((byte)(64)))), ((int)(((byte)(82)))));
            this.UsernameBX.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.UsernameBX.Font = new System.Drawing.Font("Segoe UI Semilight", 12F);
            this.UsernameBX.ForeColor = System.Drawing.Color.White;
            this.UsernameBX.Location = new System.Drawing.Point(119, 278);
            this.UsernameBX.Name = "UsernameBX";
            this.UsernameBX.Size = new System.Drawing.Size(213, 22);
            this.UsernameBX.TabIndex = 1;
            this.UsernameBX.Text = "username";
            this.UsernameBX.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.UsernameBX.KeyDown += new System.Windows.Forms.KeyEventHandler(this.UsernameBX_KeyDown);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(53)))), ((int)(((byte)(64)))), ((int)(((byte)(82)))));
            this.label5.ForeColor = System.Drawing.Color.LightGray;
            this.label5.Location = new System.Drawing.Point(115, 292);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(217, 13);
            this.label5.TabIndex = 80;
            this.label5.Text = "___________________________________";
            // 
            // PasswordBX
            // 
            this.PasswordBX.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(53)))), ((int)(((byte)(64)))), ((int)(((byte)(82)))));
            this.PasswordBX.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.PasswordBX.Font = new System.Drawing.Font("Segoe UI Semilight", 12F);
            this.PasswordBX.ForeColor = System.Drawing.Color.White;
            this.PasswordBX.Location = new System.Drawing.Point(119, 337);
            this.PasswordBX.Name = "PasswordBX";
            this.PasswordBX.PasswordChar = '•';
            this.PasswordBX.Size = new System.Drawing.Size(210, 22);
            this.PasswordBX.TabIndex = 2;
            this.PasswordBX.Text = "pass";
            this.PasswordBX.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.PasswordBX.KeyDown += new System.Windows.Forms.KeyEventHandler(this.PasswordBX_KeyDown);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(53)))), ((int)(((byte)(64)))), ((int)(((byte)(82)))));
            this.label1.ForeColor = System.Drawing.Color.LightGray;
            this.label1.Location = new System.Drawing.Point(116, 352);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(217, 13);
            this.label1.TabIndex = 82;
            this.label1.Text = "___________________________________";
            // 
            // FadeTMR
            // 
            this.FadeTMR.Interval = 1;
            this.FadeTMR.Tick += new System.EventHandler(this.FadeTMR_Tick);
            // 
            // PassPic
            // 
            this.PassPic.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(53)))), ((int)(((byte)(64)))), ((int)(((byte)(82)))));
            this.PassPic.BackgroundImage = global::MSAMISUserInterface.Properties.Resources.eYE;
            this.PassPic.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.PassPic.Location = new System.Drawing.Point(308, 338);
            this.PassPic.Name = "PassPic";
            this.PassPic.Size = new System.Drawing.Size(23, 20);
            this.PassPic.TabIndex = 91;
            this.PassPic.TabStop = false;
            this.PassPic.MouseDown += new System.Windows.Forms.MouseEventHandler(this.PassPic_MouseDown);
            this.PassPic.MouseUp += new System.Windows.Forms.MouseEventHandler(this.PassPic_MouseUp);
            // 
            // CloseBTN
            // 
            this.CloseBTN.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.CloseBTN.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(53)))), ((int)(((byte)(64)))), ((int)(((byte)(82)))));
            this.CloseBTN.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.CloseBTN.FlatAppearance.BorderSize = 0;
            this.CloseBTN.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(57)))), ((int)(((byte)(43)))));
            this.CloseBTN.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(97)))), ((int)(((byte)(81)))));
            this.CloseBTN.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.CloseBTN.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CloseBTN.ForeColor = System.Drawing.Color.White;
            this.CloseBTN.Location = new System.Drawing.Point(469, -1);
            this.CloseBTN.Name = "CloseBTN";
            this.CloseBTN.Size = new System.Drawing.Size(36, 32);
            this.CloseBTN.TabIndex = 4;
            this.CloseBTN.Text = "X";
            this.CloseBTN.UseVisualStyleBackColor = false;
            this.CloseBTN.Click += new System.EventHandler(this.CloseBTN_Click);
            // 
            // LoginBTN
            // 
            this.LoginBTN.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.LoginBTN.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(53)))), ((int)(((byte)(64)))), ((int)(((byte)(82)))));
            this.LoginBTN.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("LoginBTN.BackgroundImage")));
            this.LoginBTN.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.LoginBTN.FlatAppearance.BorderSize = 0;
            this.LoginBTN.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(39)))), ((int)(((byte)(47)))), ((int)(((byte)(61)))));
            this.LoginBTN.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(114)))), ((int)(((byte)(146)))));
            this.LoginBTN.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.LoginBTN.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.LoginBTN.ForeColor = System.Drawing.Color.White;
            this.LoginBTN.Location = new System.Drawing.Point(138, 441);
            this.LoginBTN.Name = "LoginBTN";
            this.LoginBTN.Size = new System.Drawing.Size(99, 32);
            this.LoginBTN.TabIndex = 3;
            this.LoginBTN.Text = "LOGIN";
            this.LoginBTN.UseVisualStyleBackColor = false;
            this.LoginBTN.Click += new System.EventHandler(this.GEditDetailsBTN_Click);
            // 
            // UsernameTLTP
            // 
            this.UsernameTLTP.AutoPopDelay = 3000;
            this.UsernameTLTP.InitialDelay = 500;
            this.UsernameTLTP.ReshowDelay = 100;
            this.UsernameTLTP.ToolTipIcon = System.Windows.Forms.ToolTipIcon.Warning;
            // 
            // PasswordTLTP
            // 
            this.PasswordTLTP.AutoPopDelay = 3000;
            this.PasswordTLTP.InitialDelay = 500;
            this.PasswordTLTP.ReshowDelay = 100;
            this.PasswordTLTP.ToolTipIcon = System.Windows.Forms.ToolTipIcon.Warning;
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(53)))), ((int)(((byte)(64)))), ((int)(((byte)(82)))));
            this.panel2.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.panel2.Controls.Add(this.label7);
            this.panel2.Controls.Add(this.PassPic);
            this.panel2.Controls.Add(this.label2);
            this.panel2.Controls.Add(this.PasswordBX);
            this.panel2.Controls.Add(this.CloseBTN);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Controls.Add(this.label3);
            this.panel2.Controls.Add(this.UsernameBX);
            this.panel2.Controls.Add(this.label5);
            this.panel2.Controls.Add(this.LoginBTN);
            this.panel2.Controls.Add(this.label4);
            this.panel2.Controls.Add(this.pictureBox1);
            this.panel2.Controls.Add(this.LLBL);
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(505, 600);
            this.panel2.TabIndex = 92;
            // 
            // LLBL
            // 
            this.LLBL.AutoSize = true;
            this.LLBL.BackColor = System.Drawing.Color.Transparent;
            this.LLBL.Font = new System.Drawing.Font("Segoe UI", 24F, System.Drawing.FontStyle.Bold);
            this.LLBL.ForeColor = System.Drawing.Color.White;
            this.LLBL.Location = new System.Drawing.Point(227, 139);
            this.LLBL.Name = "LLBL";
            this.LLBL.Size = new System.Drawing.Size(151, 45);
            this.LLBL.TabIndex = 235;
            this.LLBL.Text = "MSAMIS";
            this.LLBL.Click += new System.EventHandler(this.LLBL_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.Transparent;
            this.label4.Font = new System.Drawing.Font("Segoe UI", 24F);
            this.label4.ForeColor = System.Drawing.Color.White;
            this.label4.Location = new System.Drawing.Point(42, 139);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(192, 45);
            this.label4.TabIndex = 236;
            this.label4.Text = "Welcome to";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(45, 186);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(186, 19);
            this.label2.TabIndex = 238;
            this.label2.Text = "Login to access your account";
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackgroundImage = global::MSAMISUserInterface.Properties.Resources.AgencyLogo;
            this.pictureBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.pictureBox1.Location = new System.Drawing.Point(50, 30);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(39, 35);
            this.pictureBox1.TabIndex = 93;
            this.pictureBox1.TabStop = false;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold);
            this.label3.ForeColor = System.Drawing.Color.White;
            this.label3.Location = new System.Drawing.Point(95, 31);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(162, 15);
            this.label3.TabIndex = 239;
            this.label3.Text = "Makabayan Security Agency";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.BackColor = System.Drawing.Color.Transparent;
            this.label7.Font = new System.Drawing.Font("Segoe UI", 8F);
            this.label7.ForeColor = System.Drawing.Color.White;
            this.label7.Location = new System.Drawing.Point(96, 50);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(177, 13);
            this.label7.TabIndex = 240;
            this.label7.Text = "Management Information System";
            // 
            // LoginForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(498, 598);
            this.ControlBox = false;
            this.Controls.Add(this.panel2);
            this.DoubleBuffered = true;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "LoginForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.MouseDown += new System.Windows.Forms.MouseEventHandler(this.Form_MouseDown);
            this.MouseMove += new System.Windows.Forms.MouseEventHandler(this.Form_MouseMove);
            this.MouseUp += new System.Windows.Forms.MouseEventHandler(this.Form_MouseUp);
            ((System.ComponentModel.ISupportInitialize)(this.PassPic)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TextBox UsernameBX;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox PasswordBX;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button LoginBTN;
        private System.Windows.Forms.Button CloseBTN;
        private System.Windows.Forms.Timer FadeTMR;
        private System.Windows.Forms.PictureBox PassPic;
        private System.Windows.Forms.ToolTip UsernameTLTP;
        private System.Windows.Forms.ToolTip PasswordTLTP;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label LLBL;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.PictureBox pictureBox1;
    }
}
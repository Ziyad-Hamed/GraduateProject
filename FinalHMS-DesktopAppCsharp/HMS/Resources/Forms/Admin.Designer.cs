namespace HMS
{
    partial class Admin
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnAddDoctor = new System.Windows.Forms.Button();
            this.btnUpdateDoctor = new System.Windows.Forms.Button();
            this.btnDeleteDoctor = new System.Windows.Forms.Button();
            this.btnViewPatient = new System.Windows.Forms.Button();
            this.btnPrepareDoctorSalary = new System.Windows.Forms.Button();
            this.gridViewAdmin = new System.Windows.Forms.DataGridView();
            this.btn_AddReceptionist = new System.Windows.Forms.Button();
            this.btn_UpdateReceptionist = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.comboBox2 = new System.Windows.Forms.ComboBox();
            this.button4 = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.button2 = new System.Windows.Forms.Button();
            this.button6 = new System.Windows.Forms.Button();
            this.button7 = new System.Windows.Forms.Button();
            this.button8 = new System.Windows.Forms.Button();
            this.button9 = new System.Windows.Forms.Button();
            this.button10 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.gridViewAdmin)).BeginInit();
            this.SuspendLayout();
            // 
            // btnAddDoctor
            // 
            this.btnAddDoctor.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.btnAddDoctor.Font = new System.Drawing.Font("Gabriola", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAddDoctor.Location = new System.Drawing.Point(24, 14);
            this.btnAddDoctor.Name = "btnAddDoctor";
            this.btnAddDoctor.Size = new System.Drawing.Size(146, 41);
            this.btnAddDoctor.TabIndex = 0;
            this.btnAddDoctor.Text = "Add Doctor";
            this.btnAddDoctor.UseVisualStyleBackColor = false;
            this.btnAddDoctor.Click += new System.EventHandler(this.btnAddDoctor_Click);
            // 
            // btnUpdateDoctor
            // 
            this.btnUpdateDoctor.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.btnUpdateDoctor.Font = new System.Drawing.Font("Gabriola", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnUpdateDoctor.Location = new System.Drawing.Point(176, 13);
            this.btnUpdateDoctor.Name = "btnUpdateDoctor";
            this.btnUpdateDoctor.Size = new System.Drawing.Size(203, 42);
            this.btnUpdateDoctor.TabIndex = 2;
            this.btnUpdateDoctor.Text = "Update Doctor";
            this.btnUpdateDoctor.UseVisualStyleBackColor = false;
            this.btnUpdateDoctor.Click += new System.EventHandler(this.btnUpdateDoctor_Click);
            // 
            // btnDeleteDoctor
            // 
            this.btnDeleteDoctor.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.btnDeleteDoctor.Font = new System.Drawing.Font("Gabriola", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDeleteDoctor.Location = new System.Drawing.Point(177, 62);
            this.btnDeleteDoctor.Name = "btnDeleteDoctor";
            this.btnDeleteDoctor.Size = new System.Drawing.Size(203, 44);
            this.btnDeleteDoctor.TabIndex = 3;
            this.btnDeleteDoctor.Text = "Delete Doctor";
            this.btnDeleteDoctor.UseVisualStyleBackColor = false;
            this.btnDeleteDoctor.Click += new System.EventHandler(this.btnDeleteDoctor_Click);
            // 
            // btnViewPatient
            // 
            this.btnViewPatient.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.btnViewPatient.Font = new System.Drawing.Font("Gabriola", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnViewPatient.Location = new System.Drawing.Point(594, 109);
            this.btnViewPatient.Name = "btnViewPatient";
            this.btnViewPatient.Size = new System.Drawing.Size(210, 40);
            this.btnViewPatient.TabIndex = 6;
            this.btnViewPatient.Text = "View Patient";
            this.btnViewPatient.UseVisualStyleBackColor = false;
            this.btnViewPatient.Click += new System.EventHandler(this.btnViewPatient_Click);
            // 
            // btnPrepareDoctorSalary
            // 
            this.btnPrepareDoctorSalary.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.btnPrepareDoctorSalary.Font = new System.Drawing.Font("Gabriola", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnPrepareDoctorSalary.Location = new System.Drawing.Point(594, 12);
            this.btnPrepareDoctorSalary.Name = "btnPrepareDoctorSalary";
            this.btnPrepareDoctorSalary.Size = new System.Drawing.Size(210, 43);
            this.btnPrepareDoctorSalary.TabIndex = 7;
            this.btnPrepareDoctorSalary.Text = "Prepare Doctor Salary";
            this.btnPrepareDoctorSalary.UseVisualStyleBackColor = false;
            this.btnPrepareDoctorSalary.Click += new System.EventHandler(this.btnPrepareDoctorSalary_Click);
            // 
            // gridViewAdmin
            // 
            this.gridViewAdmin.BackgroundColor = System.Drawing.SystemColors.ButtonHighlight;
            this.gridViewAdmin.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gridViewAdmin.GridColor = System.Drawing.SystemColors.ButtonHighlight;
            this.gridViewAdmin.Location = new System.Drawing.Point(12, 288);
            this.gridViewAdmin.Name = "gridViewAdmin";
            this.gridViewAdmin.Size = new System.Drawing.Size(802, 225);
            this.gridViewAdmin.TabIndex = 9;
            this.gridViewAdmin.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.gridViewAdmin_CellContentClick);
            // 
            // btn_AddReceptionist
            // 
            this.btn_AddReceptionist.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.btn_AddReceptionist.Font = new System.Drawing.Font("Gabriola", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_AddReceptionist.Location = new System.Drawing.Point(24, 61);
            this.btn_AddReceptionist.Name = "btn_AddReceptionist";
            this.btn_AddReceptionist.Size = new System.Drawing.Size(147, 43);
            this.btn_AddReceptionist.TabIndex = 10;
            this.btn_AddReceptionist.Text = "Add Receptionist";
            this.btn_AddReceptionist.UseVisualStyleBackColor = false;
            this.btn_AddReceptionist.Click += new System.EventHandler(this.btn_AddReceptionist_Click);
            // 
            // btn_UpdateReceptionist
            // 
            this.btn_UpdateReceptionist.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.btn_UpdateReceptionist.Font = new System.Drawing.Font("Gabriola", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_UpdateReceptionist.Location = new System.Drawing.Point(385, 12);
            this.btn_UpdateReceptionist.Name = "btn_UpdateReceptionist";
            this.btn_UpdateReceptionist.Size = new System.Drawing.Size(203, 43);
            this.btn_UpdateReceptionist.TabIndex = 11;
            this.btn_UpdateReceptionist.Text = "Update Receptionist";
            this.btn_UpdateReceptionist.UseVisualStyleBackColor = false;
            this.btn_UpdateReceptionist.Click += new System.EventHandler(this.btn_UpdateReceptionist_Click);
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.button1.Font = new System.Drawing.Font("Gabriola", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.Location = new System.Drawing.Point(385, 62);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(203, 44);
            this.button1.TabIndex = 12;
            this.button1.Text = "Delete Receptionist";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button3
            // 
            this.button3.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.button3.Font = new System.Drawing.Font("Gabriola", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button3.Location = new System.Drawing.Point(385, 109);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(203, 41);
            this.button3.TabIndex = 14;
            this.button3.Text = "Receptionist Portal";
            this.button3.UseVisualStyleBackColor = false;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(250, 264);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(203, 21);
            this.comboBox1.TabIndex = 15;
            // 
            // comboBox2
            // 
            this.comboBox2.FormattingEnabled = true;
            this.comboBox2.Location = new System.Drawing.Point(594, 261);
            this.comboBox2.Name = "comboBox2";
            this.comboBox2.Size = new System.Drawing.Size(203, 21);
            this.comboBox2.TabIndex = 16;
            // 
            // button4
            // 
            this.button4.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.button4.Font = new System.Drawing.Font("Gabriola", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button4.Location = new System.Drawing.Point(24, 110);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(146, 40);
            this.button4.TabIndex = 17;
            this.button4.Text = "View Fee";
            this.button4.UseVisualStyleBackColor = false;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // button5
            // 
            this.button5.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.button5.Font = new System.Drawing.Font("Gabriola", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button5.Location = new System.Drawing.Point(177, 108);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(203, 42);
            this.button5.TabIndex = 18;
            this.button5.Text = "View Doctor";
            this.button5.UseVisualStyleBackColor = false;
            this.button5.Click += new System.EventHandler(this.button5_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label1.Location = new System.Drawing.Point(482, 264);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(106, 13);
            this.label1.TabIndex = 19;
            this.label1.Text = "RECEPTIONIST ID :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label2.Location = new System.Drawing.Point(172, 272);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(73, 13);
            this.label2.TabIndex = 20;
            this.label2.Text = "DOCTOR ID :";
            // 
            // button2
            // 
            this.button2.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.button2.Font = new System.Drawing.Font("Gabriola", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button2.Location = new System.Drawing.Point(233, 156);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(145, 43);
            this.button2.TabIndex = 21;
            this.button2.Text = "View Receptionist";
            this.button2.UseVisualStyleBackColor = false;
            this.button2.Click += new System.EventHandler(this.button2_Click_1);
            // 
            // button6
            // 
            this.button6.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.button6.Font = new System.Drawing.Font("Gabriola", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button6.Location = new System.Drawing.Point(594, 63);
            this.button6.Name = "button6";
            this.button6.Size = new System.Drawing.Size(210, 43);
            this.button6.TabIndex = 22;
            this.button6.Text = "Prepare Receptionist Salary";
            this.button6.UseVisualStyleBackColor = false;
            this.button6.Click += new System.EventHandler(this.button6_Click);
            // 
            // button7
            // 
            this.button7.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.button7.Font = new System.Drawing.Font("Gabriola", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button7.Location = new System.Drawing.Point(385, 156);
            this.button7.Name = "button7";
            this.button7.Size = new System.Drawing.Size(203, 43);
            this.button7.TabIndex = 23;
            this.button7.Text = "View Surgery Ward Patient";
            this.button7.UseVisualStyleBackColor = false;
            this.button7.Click += new System.EventHandler(this.button7_Click);
            // 
            // button8
            // 
            this.button8.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.button8.Font = new System.Drawing.Font("Gabriola", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button8.Location = new System.Drawing.Point(594, 156);
            this.button8.Name = "button8";
            this.button8.Size = new System.Drawing.Size(203, 43);
            this.button8.TabIndex = 24;
            this.button8.Text = "View Surgery OPD Patient";
            this.button8.UseVisualStyleBackColor = false;
            this.button8.Click += new System.EventHandler(this.button8_Click);
            // 
            // button9
            // 
            this.button9.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.button9.Font = new System.Drawing.Font("Gabriola", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button9.Location = new System.Drawing.Point(24, 156);
            this.button9.Name = "button9";
            this.button9.Size = new System.Drawing.Size(203, 43);
            this.button9.TabIndex = 25;
            this.button9.Text = "View General Ward Patient";
            this.button9.UseVisualStyleBackColor = false;
            this.button9.Click += new System.EventHandler(this.button9_Click);
            // 
            // button10
            // 
            this.button10.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.button10.Font = new System.Drawing.Font("Gabriola", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button10.Location = new System.Drawing.Point(24, 205);
            this.button10.Name = "button10";
            this.button10.Size = new System.Drawing.Size(203, 43);
            this.button10.TabIndex = 26;
            this.button10.Text = "View General OPD Patient";
            this.button10.UseVisualStyleBackColor = false;
            this.button10.Click += new System.EventHandler(this.button10_Click);
            // 
            // Admin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.ClientSize = new System.Drawing.Size(824, 525);
            this.Controls.Add(this.button10);
            this.Controls.Add(this.button9);
            this.Controls.Add(this.button8);
            this.Controls.Add(this.button7);
            this.Controls.Add(this.button6);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.comboBox2);
            this.Controls.Add(this.comboBox1);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.btn_UpdateReceptionist);
            this.Controls.Add(this.btn_AddReceptionist);
            this.Controls.Add(this.gridViewAdmin);
            this.Controls.Add(this.btnPrepareDoctorSalary);
            this.Controls.Add(this.btnViewPatient);
            this.Controls.Add(this.btnDeleteDoctor);
            this.Controls.Add(this.btnUpdateDoctor);
            this.Controls.Add(this.btnAddDoctor);
            this.Name = "Admin";
            this.Text = "Admin";
            this.Load += new System.EventHandler(this.Admin_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridViewAdmin)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnAddDoctor;
        private System.Windows.Forms.Button btnUpdateDoctor;
        private System.Windows.Forms.Button btnDeleteDoctor;
        private System.Windows.Forms.Button btnViewPatient;
        private System.Windows.Forms.Button btnPrepareDoctorSalary;
        private System.Windows.Forms.DataGridView gridViewAdmin;
        private System.Windows.Forms.Button btn_AddReceptionist;
        private System.Windows.Forms.Button btn_UpdateReceptionist;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.ComboBox comboBox2;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button6;
        private System.Windows.Forms.Button button7;
        private System.Windows.Forms.Button button8;
        private System.Windows.Forms.Button button9;
        private System.Windows.Forms.Button button10;
    }
}
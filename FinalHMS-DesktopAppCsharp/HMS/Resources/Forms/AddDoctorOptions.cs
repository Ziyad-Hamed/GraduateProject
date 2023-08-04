using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using HMS.Resources.Forms;
using HMS.Resources.Classes;

namespace HMS
{
    public partial class AddDoctorOptions : Form
    {
       
        public AddDoctorOptions()
        {
            InitializeComponent();
        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void button1_Click(object sender, EventArgs e) 

        {
            Doctor_info d = new Doctor_info();
            string save = d.AddDoctor(textBox10.Text, textBox1.Text, textBox2.Text, textBox3.Text, textBox7.Text, Convert.ToInt32(textBox4.Text),textBox5.Text, Convert.ToInt32(textBox6.Text), Convert.ToInt32(textBox8.Text));
            MessageBox.Show(save);
        }

        private void label10_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }
    }
}

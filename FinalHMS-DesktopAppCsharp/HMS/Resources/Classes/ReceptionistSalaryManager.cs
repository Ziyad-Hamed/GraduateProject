using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.Sql;
using System.Data.SqlClient;

namespace HMS
{
    class ReceptionistSalaryManager
    {

        int receptionist_id;
        double BasicPay;
        int AttendanceReport;
        int time;
        double Salary;

        public ReceptionistSalaryManager(System.Windows.Forms.TextBox t8, System.Windows.Forms.TextBox t7, System.Windows.Forms.TextBox t6, System.Windows.Forms.TextBox t5)
        {
            receptionist_id = Convert.ToInt32(t8.Text);
            BasicPay = Convert.ToDouble(t5.Text);
            AttendanceReport = Convert.ToInt32(t7.Text);
            time = Convert.ToInt32(t6.Text);
        }
        public void CalculateSalary()
        {
            if (time == 6)
            {
                Salary = BasicPay;

            }
            else if (time == 12)
            {
                Salary = BasicPay * 2;
            }

            if (AttendanceReport >= 0)
            {
                for (int i = 1; i <= AttendanceReport; i++)
                {
                    Salary = Salary - 100;
                }
            }
            else
            {
                MessageBox.Show("Invalid Input");
            }

            Connections con = new Connections();
            try
            {
                SqlCommand cmd = new SqlCommand("insert into HMS_Audit(RecepSalary, DoctorSalary, d_Fid, r_Fid) values(" + Salary + ", NULL, Null," + receptionist_id + ")", con.Connect());
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {

                }
                MessageBox.Show("Successful");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            con.Close();


        }
    }
    
}

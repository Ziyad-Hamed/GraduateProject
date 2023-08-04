using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
namespace HMS
{
    class DoctorSalaryManager
    { int doctor_id;
        double BasicPay;
        int AttendanceReport;
        int time;
        double Salary;

        public DoctorSalaryManager(System.Windows.Forms.TextBox t1, System.Windows.Forms.TextBox t2, System.Windows.Forms.TextBox t3, System.Windows.Forms.TextBox t4)
        {
            doctor_id = Convert.ToInt32(t1.Text);
            BasicPay = Convert.ToDouble(t4.Text);
            AttendanceReport =Convert.ToInt32( t3.Text);
            time = Convert.ToInt32(t2.Text);
        }


        

        public void CalculateSalary()
        {
            if (time == 2)
            {
                Salary = BasicPay;

            }
            else if (time == 4)
            {
                Salary = BasicPay * 2;
            }

            if (AttendanceReport >= 0)
            {
                for (int i = 1; i <= AttendanceReport; i++)
                {
                    Salary = Salary - 200;
                }
            }
            else
            {
                MessageBox.Show("Invalid Input");
            }

            Connections con = new Connections();
            try
            {
                SqlCommand cmd = new SqlCommand("insert into HMS_Audit(DoctorSalary, RecepSalary, d_Fid, r_Fid) values("+Salary+", Null, "+doctor_id+", Null)", con.Connect());
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {

                }
                MessageBox.Show("Successful");
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            con.Close();

            
        }
    }
}

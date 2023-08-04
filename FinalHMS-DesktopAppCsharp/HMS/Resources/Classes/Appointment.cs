using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;

namespace HMS.Resources.Classes
{
    class Appointment
    {
        Connections con = Connections.getconnection();
        SqlCommand cmd = null;
        public string AddAppointment(string _Patient, string _disease, string _doctor,DateTime _dateTimeAppointment)
        {
            SqlCommand cmd = new SqlCommand("insert into Appointment(Appointment_PatientID,Appointment_Disease,Appointment_DoctorID,Appointment_dateTime)values('" + _Patient + "','" + _disease + "','" + _doctor + "','"+ _dateTimeAppointment + "')", con.Open());
            cmd.ExecuteNonQuery();
            con.Close();
            return "Saved Successfully!";
        }
        public DataTable ShowAppointment()
        {
            DataTable dt = new DataTable();
            try
            {
                cmd = new SqlCommand("select * from AddAppointment", con.Open());
                SqlDataAdapter DataAdapter = new SqlDataAdapter(cmd);
                DataAdapter.Fill(dt);
            }
            catch (Exception ex)
            {
                string exception = ex.Message + "No data is avaiable";

            }
            con.Close();
            return dt;
        }
    }
}

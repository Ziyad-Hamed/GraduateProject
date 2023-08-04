using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;

namespace HMS.Resources.Forms
{
    class GeneralOPDPatient:GeneralPatient
    {
        Connections con = Connections.getconnection();
        SqlCommand cmd = null;
      
        public override string AddPatient(string _Pswd, string _name, string _fName, string _disease, string _age, string _gender, string _cnum)
        {
            SqlCommand cmd = new SqlCommand("insert into GeneralOPDPatient(GeneralOPDPatient_Password,GeneralOPDPatient_Name,GeneralOPDPatient_FatherName,GeneralOPDPatient_Disease,GeneralOPDPatient_Age,GeneralOPDPatient_Gender,GeneralOPDPatient_ContactNumber)values('" + _Pswd + "','" + _name + "','" + _fName + "','" + _disease + "','" + _age + "','" + _gender + "','" + _cnum + "')", con.Open());
            cmd.ExecuteNonQuery();
            con.Close();
            return "Saved Successfully!";
        }
        public DataTable ShowGeneralOPDPatient()
        {
            DataTable dt = new DataTable();
            try
            {
                cmd = new SqlCommand("select * from GeneralOPDPatient", con.Open());
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

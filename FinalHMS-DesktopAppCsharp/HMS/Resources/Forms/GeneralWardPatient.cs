﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HMS.Resources.Classes;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;

namespace HMS.Resources.Forms
{
    class GeneralWardPatient:GeneralPatient
    {
        Connections con = Connections.getconnection();
        SqlCommand cmd = null;

        public override string AddPatient(string _Pswd, string _name, string _fName, string _disease, string _age, string _gender, string _cnum)
        {
            SqlCommand cmd = new SqlCommand("insert into GeneralWardPatient(Password,Name,FatherName,Disease,Age,Gender,ContactNumber)values('" + _Pswd + "','" + _name + "','" + _fName + "','" + _disease + "','" + _age + "','" + _gender + "','" + _cnum + "')", con.Open());
            cmd.ExecuteNonQuery();
            con.Close();
            return "Saved Successfully!";
        }
        public DataTable ShowGeneralWardPatient()
        {
            DataTable dt = new DataTable();
            try
            {
                cmd = new SqlCommand("select * from GeneralWardPatient", con.Open());
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

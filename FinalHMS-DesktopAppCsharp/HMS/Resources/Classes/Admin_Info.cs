using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using System.Windows.Forms;
using HMS.Resources.Forms;


namespace HMS
{
    class Admin_Info
    {
        Connections con = Connections.getconnection();
        SqlCommand cmd = null;

        public string AdminLogin(string _ID, string pswrd)
        {
            cmd = new SqlCommand("select * from AdminSignUp where Admin_ID ='" + _ID + "'  and Admin_Password='" + pswrd + "'", con.Open());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                con.Close();
                return "Welcome";
            }
            else
            {
                con.Close();
                return "Invalid User";
            }
        }



        public string AddAdmin(string _pswd, string _name, string _fName, string _email)
        {
            SqlCommand cmd = new SqlCommand("insert into AdminSignUp(Admin_Password,Name,Admin_FatherName,Admin_Email)values('" + _pswd + "','" + _name + "','" + _fName + "','" + _email + "')", con.Open());
            cmd.ExecuteNonQuery();
            con.Close();
            return "Saved Successfully!";
        }
    }
}

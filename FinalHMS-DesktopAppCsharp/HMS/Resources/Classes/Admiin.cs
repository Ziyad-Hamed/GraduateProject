using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HMS.Resources.Forms;
using System.Windows.Forms;

namespace HMS.Resources.Classes
{
    class Admiin : ILogin
    {
        private System.Windows.Forms.TextBox ID1;
        private System.Windows.Forms.TextBox Password1;

        public Admiin(System.Windows.Forms.TextBox ID1, System.Windows.Forms.TextBox Password1)
        {

            this.ID1 = ID1;
            this.Password1 = Password1;
        }
        public string LoginAdmin()
        {
            if (ID1.Text != "" && Password1.Text != "")
            {
                Admin_Info p = new Admin_Info();
                string message = p.AdminLogin(ID1.Text, Password1.Text);
                MessageBox.Show(message);

                if (message == "Welcome")
                {
                    Receptionist recep = new Receptionist();
                    recep.Show();

                }

            }
            else
            {
                MessageBox.Show("Please Fill All The Fields");
            }
            return "Welcome";
        }

    }

}

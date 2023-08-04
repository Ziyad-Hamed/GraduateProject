using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HMS.Resources.Forms;

namespace HMS.Resources.Classes
{
   abstract class PatientType
    {
        public abstract SurgeryPatient createSurgeryPatient();
        public abstract GeneralPatient createGeneralPatient();
    }
}

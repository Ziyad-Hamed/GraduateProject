using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HMS.Resources.Classes;

namespace HMS.Resources.Forms
{
    class OPDPatient : PatientType
    {
        public override SurgeryPatient createSurgeryPatient()
        {
            return new SurgeryOPDPatient();
        }
        public override GeneralPatient createGeneralPatient()
        {
            return new GeneralOPDPatient();
        }
    }
}

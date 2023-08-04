using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HMS.Resources.Classes;



namespace HMS.Resources.Forms
{
    class WardPatient:PatientType
    {
        public override SurgeryPatient createSurgeryPatient()
    {
        return new SurgeryWardPatient();
    }
        public override GeneralPatient createGeneralPatient()
    {
        return new GeneralWardPatient();
    }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System;
using System.Collections.Generic;
using System.Linq;

namespace ClassChasseurDT.Metier
{
    public class Consultant
    {
        public sbyte IdConsultant { get; set; }
        public string NomConsultant { get; set; }
        public string PrenomConsultant { get; set; }

        public List<Mission> Missions { get; set; }

        public Consultant()
        {

        }

        public override string ToString()
        {
            return base.ToString();
        }

        public override int GetHashCode()
        {
            return base.GetHashCode();
        }

        public override bool Equals(Object obj)
        {
            return obj is Consultant && ((Consultant)obj).IdConsultant.Equals(this.IdConsultant);
        }
    }
}

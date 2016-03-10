using System;
using System.Collections.Generic;

namespace ClassChasseurDT.Metier
{
    public class Qualification
    {
        public int IdQualification { get; set; }
        public string LibelleQualification { get; set; }

        public List<PosteRecherche> Postes { get; set; }

        public Qualification()
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
            return obj is Qualification && ((Qualification)obj).IdQualification.Equals(this.IdQualification);
        }

    }
    
}
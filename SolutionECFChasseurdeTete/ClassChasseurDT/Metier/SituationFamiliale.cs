using System;

namespace ClassChasseurDT.Metier
{
    public class SituationFamiliale
    {
        public sbyte IdSituF { get; set; }
        public string LibelleSituF { get; set; }

        public SituationFamiliale() { }

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
            return obj is SituationFamiliale && ((SituationFamiliale)obj).IdSituF.Equals(this.IdSituF);
        }

    }
}
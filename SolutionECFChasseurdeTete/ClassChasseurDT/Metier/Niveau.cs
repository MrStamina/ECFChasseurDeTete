using System;

namespace ClassChasseurDT.Metier
{
    public class Niveau
    {
        public sbyte IdNiveau { get; set; }
        public string Libelle { get; set; }

        public Niveau()
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
            return obj is Niveau && ((Niveau)obj).IdNiveau.Equals(this.IdNiveau);
        }

    }
}
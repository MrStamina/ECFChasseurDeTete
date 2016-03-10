using System;
using System.Collections.Generic;

namespace ClassChasseurDT.Metier
{
    public class Mission
    {
        public int IdMission { get; set; }
        public DateTime DateOuverture { get; set; }
        public string Precisions { get; set; }
        public decimal? RemunerationProposee { get; set; }
        public sbyte? Duree { get; set; }
        public Qualification QualificationDemandee { get; set; }
        public Entreprise EntrepriseOffre { get; set; }
        public Niveau NiveauDemande { get; set; }
        public Consultant Consult { get; set; }
        public DateTime? DateFin { get; set; }
        public MotifFin Motif { get; set; }
        public List<Contact> Contacts { get; set; }

        //public string LibelleQualif { get { return QualificationDemandee.LibelleQualification; } }
        //public string LibelleNiveau { get { return NiveauDemande.Libelle; } }
        //public string NomConsultant { get { return Consult.NomConsultant; } }



        public Mission()
        {

        }

        public override string ToString()
        {
            return base.ToString();
        }

        public override bool Equals(Object obj)
        {
            return obj is Mission && ((Mission)obj).IdMission.Equals(IdMission);
        }

        public override int GetHashCode()
        {
            return base.GetHashCode();
        }

    }
}
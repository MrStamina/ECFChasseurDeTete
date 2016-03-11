using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassChasseurDT.Dao;
using ClassChasseurDT.Metier;
using ClassChasseurDT.Exceptions;

namespace WebApplicationChasseurDeTete
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime minDate = new DateTime(DateTime.Now.Year - 18, DateTime.Now.Month, 1);
            CompareValidator3.ValueToCompare = minDate.ToShortDateString();
            if (!Page.IsPostBack)
            {
                try
                {
                    //Bind drop Pole géographique candidat
                    DropDownListPoleEmploi.Items.Insert(0, new ListItem("Sélectionnez votre secteur géographique", "0"));
                    DropDownListPoleEmploi.DataSource = DaoPoleEmbauche.GetAllPoleEmbauches();
                    DropDownListPoleEmploi.DataTextField = "LibellePole";
                    DropDownListPoleEmploi.DataValueField = "IdPole";
                    DropDownListPoleEmploi.DataBind();
                    // Bin drop Situation 
                    DropDownListSituFami.Items.Insert(0, new ListItem("Selectionnez votre situation familiale", "0"));
                    DropDownListSituFami.DataSource = DaoSituFam.GetAllSituationFamiliales();
                    DropDownListSituFami.DataTextField = "LibelleSituF";
                    DropDownListSituFami.DataValueField = "IdSituF";
                    DropDownListSituFami.DataBind();
                }
                catch
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Failure", "<script type='text/javascript'>alert('Connexion impossible');window.location='EspaceCandidat.aspx';</script>'");
                }

                int idCand = (int)Session["idCand"];
                Candidat cand = new Candidat();
                cand = DaoCandidat.GetCandidatById(idCand);
                TextBoxNomCandidat.Text = cand.Nom;
                TextBoxPrenom.Text = cand.Prenom;
                TextBoxDateDeNaissance.Text = cand.DateNaissance.ToShortDateString();
                TextBoxTelephone.Text = cand.Telephone;
                TextBoxAdresseMailCandidat.Text = cand.AdresseMail;
                if (cand.SituationProfess == true)
                    DropDownListSituPro.SelectedIndex = 1;
                else
                    DropDownListSituPro.SelectedIndex = 0;
                if (cand.Mobilite == true)
                    DropDownListMobilite.SelectedIndex = 0;
                else
                    DropDownListMobilite.SelectedIndex = 1;
                SituationFamiliale situF = new SituationFamiliale();
                situF = cand.SituationF;
                DropDownListSituFami.SelectedIndex = Convert.ToInt32(situF.IdSituF);
                PoleEmbauche pole = new PoleEmbauche();
                pole = cand.PoleRattachement;
                if (pole == null)
                    DropDownListPoleEmploi.SelectedIndex = 0;
                else
                    DropDownListPoleEmploi.SelectedIndex = Convert.ToInt32(pole.IdPole);
            }
        }

        protected void ButtonValiderCand_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                Candidat cand = new Candidat();
                cand.IdCandidat = (int)Session["idCand"];
                cand.Nom = TextBoxNomCandidat.Text;
                cand.Prenom = TextBoxPrenom.Text;
                cand.DateNaissance = Convert.ToDateTime(TextBoxDateDeNaissance.Text);
                cand.Telephone = TextBoxTelephone.Text;
                cand.AdresseMail = TextBoxAdresseMailCandidat.Text;
                if (DropDownListSituPro.SelectedIndex == 0)
                    cand.SituationProfess = false;
                else
                    cand.SituationProfess = true;
                if (DropDownListMobilite.SelectedIndex == 0)
                    cand.Mobilite = true;
                else
                    cand.Mobilite = false;
                SituationFamiliale situF = new SituationFamiliale();
                cand.SituationF = situF;
                situF.IdSituF = Convert.ToSByte(DropDownListSituFami.SelectedIndex);
                PoleEmbauche pole = new PoleEmbauche();
                cand.PoleRattachement = pole;
                if (DropDownListPoleEmploi.SelectedIndex == 0)
                    pole = null;
                else
                    pole.IdPole = Convert.ToSByte(DropDownListPoleEmploi.SelectedIndex);
                try
                {
                    if (DaoCandidat.UpdCandidat(cand) == true)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('La modification est effectuée');window.location='EspaceCandidat.aspx';</script>'");
                    }


                }
                catch
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Failure", "<script type='text/javascript'>alert('La modification a échoué');window.location='EspaceEntreprise.aspx';</script>'");
                }


            }
        }

       
    }
}
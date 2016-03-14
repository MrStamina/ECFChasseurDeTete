using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System.Web.UI.WebControls;
using System.Collections.Generic;
using Owin;

using ClassChasseurDT.Dao;
using ClassChasseurDT.Exceptions;
using ClassChasseurDT.Metier;

namespace WebApplicationChasseurDeTete.Account
{
    public partial class Register : Page
    {

        //Afficher une message box

        
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                DateTime minDate = new DateTime(DateTime.Now.Year - 18, DateTime.Now.Month, 1);
                CompareValidator3.ValueToCompare = minDate.ToShortDateString();
                try
                {
                    //Bind  dropdown Pole géographique entreprise
                    DropDownListPole.Items.Insert(0, new ListItem("Sélectionnez le secteur géographique", "0"));
                    DropDownListPole.DataSource = DaoPoleEmbauche.GetAllPoleEmbauches();
                    DropDownListPole.DataTextField = "LibellePole";
                    DropDownListPole.DataValueField = "IdPole";
                    DropDownListPole.DataBind();
                    //bind dropdown secteur activité
                    DropDownListSecteur.Items.Insert(0, new ListItem("Sélectionnez votre secteur d'activité", "0"));
                    DropDownListSecteur.DataSource = DaoSecteurActivite.GetAllActivites();
                    DropDownListSecteur.DataTextField = "LibelleActivite";
                    DropDownListSecteur.DataValueField = "IdActivite";
                    DropDownListSecteur.DataBind();
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
                    ClientScript.RegisterStartupScript(this.GetType(), "Failure", "<script type='text/javascript'>alert('Le compte n'a pas été enregistré');window.location='~/Accueil.aspx';</script>'");
                }
            }
        }





        protected void ButtonValider_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Entreprise ent = new Entreprise();
                ent.RaisonSociale = TextBoxNom.Text;
                ent.Adresse1Ent = TextBoxAdresse.Text;
                if (TextBoxComplement.Text == string.Empty)
                    ent.Adresse2Ent = null;
                else
                    ent.Adresse2Ent = TextBoxComplement.Text;
                ent.CpEnt = TextBoxCodePostal.Text;
                ent.VilleEnt = TextBoxVille.Text;
                if (DropDownListClient.SelectedIndex == 1)
                    ent.Cliente = true;
                else
                    ent.Cliente = false;
                if (TextBoxContact.Text == string.Empty)
                    ent.Contact = null;
                else
                    ent.Contact = TextBoxContact.Text;
                if (TextBoxTel.Text == string.Empty)
                    ent.TelContact = null;
                else
                    ent.TelContact = TextBoxTel.Text;
                if (TextBoxMail.Text == string.Empty)
                    ent.MailContact = null;
                else
                    ent.MailContact = TextBoxMail.Text;
                Activite act = new Activite();
                ent.SecteurActivite = act;
                if (DropDownListSecteur.SelectedIndex == 0)
                    act.IdActivite = null;
                else
                    act.IdActivite = Convert.ToSByte(DropDownListSecteur.SelectedIndex);
                PoleEmbauche polE = new PoleEmbauche();
                ent.PoleRattachement = polE;
                if (DropDownListPole.SelectedIndex == 0)
                    polE.IdPole = null;
                else
                    polE.IdPole = Convert.ToSByte(DropDownListPole.SelectedIndex);
                ent.DateCreation = DateTime.Now;

                LoginEntreprise log = new LoginEntreprise();
                log.UserIdent = TextBoxIdentification.Text;
                log.UserPwd = TextBoxConfirmation.Text;

                try
                {
                    ent.IdEntreprise = DaoEntreprise.AddEntreprise(ent);
                    if (DaoEntreprise.AddLoginEntreprise(log, ent.IdEntreprise) == true)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Le compte a bien été enregistré');window.location='Login.aspx';</script>'");
                    }
                }
                catch 
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Failure", "<script type='text/javascript'>alert('Le compte n'a pas été enregistré');window.location='Register.aspx';</script>'");
                }
            }
           

        }



        protected void ButtonEntreprise_Click(object sender, EventArgs e)
        {
            PanelCreation.Visible = true;
            PanelCreationCandidat.Visible = false;
        }

        protected void ButtonCandidat_Click(object sender, EventArgs e)
        {
            PanelCreation.Visible = false;
            PanelCreationCandidat.Visible = true;
        }

        protected void ButtonRetour_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
        }

        protected void ButtonValiderCand_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Candidat cand = new Candidat();
                cand.Nom = TextBoxNomCandidat.Text;
                cand.Prenom = TextBoxPrenom.Text;
                cand.DateNaissance = Convert.ToDateTime(TextBoxDateDeNaissance.Text);
                cand.Telephone = TextBoxTelephone.Text;
                cand.AdresseMail = TextBoxAdresseMailCandidat.Text;
                if (DropDownListSituPro.SelectedIndex == 1)
                    cand.SituationProfess = true;
                else
                    cand.SituationProfess = false;
                if (DropDownListMobilite.SelectedIndex == 1)
                    cand.Mobilite = false;
                else
                    cand.Mobilite = true;
                SituationFamiliale situF = new SituationFamiliale();
                cand.SituationF = situF;
                situF.IdSituF = Convert.ToSByte(DropDownListSituFami.SelectedIndex);
                PoleEmbauche pole = new PoleEmbauche();
                cand.PoleRattachement = pole;
                if (DropDownListPoleEmploi.SelectedIndex == 0)
                    cand.PoleRattachement = null;
                else
                    pole.IdPole = Convert.ToSByte(DropDownListPoleEmploi.SelectedIndex);
                LoginCandidat log = new LoginCandidat();
                log.UserIdent = TextBoxMailConnexionCand.Text;
                log.UserPwd = TextBoxConfirmCand.Text;
                try
                {
                    cand.IdCandidat = DaoCandidat.AddCandidat(cand);
                    if (DaoCandidat.AddLoginCandidat(log, cand.IdCandidat) == true)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Le compte a bien été enregistré');window.location='Login.aspx';</script>'");
                    }
                         
                }
                catch 
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Failure", "<script type='text/javascript'>alert('Le compte n'a pas été enregistré');window.location='Register.aspx';</script>'");
                }

            }
          
          
        }

        protected void DropDownListClient_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownListClient.SelectedIndex == 1)
            {
                RequiredFieldValidatorContact.Enabled = true;
                RequiredFieldValidatorMail.Enabled = true;
                RequiredFieldValidatorPole.Enabled = true;
                RequiredFieldValidatorTel.Enabled = true;
            }
            else
            {
                RequiredFieldValidatorContact.Enabled = false;
                RequiredFieldValidatorMail.Enabled = false;
                RequiredFieldValidatorPole.Enabled = false;
                RequiredFieldValidatorTel.Enabled = false;
            }
        }

        protected void DropDownListPoleEmploi_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownListPoleEmploi.SelectedIndex == 0)
            {
                DropDownListMobilite.SelectedIndex = 0;
            }
        }
    }

    
}
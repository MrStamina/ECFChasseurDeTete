using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassChasseurDT.Dao;
using ClassChasseurDT.Exceptions;
using ClassChasseurDT.Metier;


namespace WebApplicationChasseurDeTete
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    //Bind  dropdown Pole géographique
                    DropDownListPole.Items.Insert(0, new ListItem("Sélectionner le secteur géographique", "0"));
                    DropDownListPole.DataSource = DaoPoleEmbauche.GetAllPoleEmbauches();
                    DropDownListPole.DataTextField = "LibellePole";
                    DropDownListPole.DataValueField = "IdPole";
                    DropDownListPole.DataBind();
                    //bind dropdown secteur activité
                    DropDownListSecteur.Items.Insert(0, new ListItem("Sélectionner votre secteur d'activité", "0"));
                    DropDownListSecteur.DataSource = DaoSecteurActivite.GetAllActivites();
                    DropDownListSecteur.DataTextField = "LibelleActivite";
                    DropDownListSecteur.DataValueField = "IdActivite";
                    DropDownListSecteur.DataBind();
                }
                catch 
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Failure", "<script type='text/javascript'>alert('Impossible de se connecter');window.location='EspaceEntreprise.aspx';</script>'");
                }
                int idEnt = (int)Session["IdEnt"];
                Entreprise ent = new Entreprise();
                ent = DaoEntreprise.GetEntrepriseById(idEnt);
                TextBoxNom.Text = ent.RaisonSociale;
                TextBoxAdresse.Text = ent.Adresse1Ent;
                if (ent.Adresse2Ent == null)
                    TextBoxComplement.Text = string.Empty;
                else
                    TextBoxComplement.Text = ent.Adresse2Ent;
                TextBoxCodePostal.Text = ent.CpEnt;
                TextBoxVille.Text = ent.VilleEnt;

                if (ent.Cliente == false)
                {
                    DropDownListClient.SelectedIndex = 2;
                }
                else
                    DropDownListClient.SelectedIndex = 1;
                if (ent.Contact == null)
                    TextBoxContact.Text = string.Empty;
                else
                    TextBoxContact.Text = ent.Contact;
                if (ent.TelContact == null)
                    TextBoxTel.Text = string.Empty;
                else
                    TextBoxTel.Text = ent.TelContact;
                if (ent.MailContact == null)
                    TextBoxMail.Text = string.Empty;
                else
                    TextBoxMail.Text = ent.MailContact;
                Activite act = new Activite();
                act = ent.SecteurActivite;
                if (act == null)
                    DropDownListSecteur.SelectedIndex = 0;
                else
                    DropDownListSecteur.SelectedIndex = Convert.ToInt32(act.IdActivite);
                PoleEmbauche pol = new PoleEmbauche();
                pol = ent.PoleRattachement;
                if (pol == null)
                    DropDownListPole.SelectedIndex = 0;
                else
                    DropDownListPole.SelectedIndex = Convert.ToInt32(pol.IdPole);
            }
           

        }

        protected void ButtonValider_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                
                 
                Entreprise ent = new Entreprise();
                ent.IdEntreprise = (int)Session["IdEnt"];
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
                try
                {
                    if(DaoEntreprise.UpdEntreprise(ent) == true)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('La modification est effectuée');window.location='EspaceEntreprise.aspx';</script>'");
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
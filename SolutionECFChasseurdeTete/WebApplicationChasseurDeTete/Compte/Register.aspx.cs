using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System.Web.UI.WebControls;
using System.Collections.Generic;
using Owin;
using WebApplicationChasseurDeTete.Models;
using ClassChasseurDT.Dao;
using ClassChasseurDT.Exceptions;
using ClassChasseurDT.Metier;

namespace WebApplicationChasseurDeTete.Account
{
    public partial class Register : Page
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
                catch (Exception ex)
                {
                    Response.Write("Impossible de se connecter" + ex);
                }
            }
        }

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = TextBoxIdentification.Text, Email = TextBoxIdentification.Text };
            IdentityResult result = manager.Create(user, TextBoxMdp.Text);
            if (result.Succeeded)
            {
                // Pour plus d'informations sur l'activation de la confirmation du compte et la réinitialisation du mot de passe, consultez http://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirmez votre compte", "Confirmez votre compte en cliquant <a href=\"" + callbackUrl + "\">ici</a>.");

                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
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
                        Response.Write("Le compte a été crée");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Le compte n'a pas été crée" + ex);
                }
            }
            
        }
            
    }
}
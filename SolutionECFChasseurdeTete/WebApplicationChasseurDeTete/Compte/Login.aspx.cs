using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassChasseurDT.Dao;
using ClassChasseurDT.Exceptions;
using ClassChasseurDT.Metier;
using CryptLibrary;
using System.Web.Security;

namespace WebApplicationChasseurDeTete
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonConnect_Click(object sender, EventArgs e)
        {
            LoginEntreprise log = new LoginEntreprise();

            log.UserIdent = TextBoxMail.Text;
            log.UserPwd = TextBoxMdp.Text;

            LoginCandidat logCand = new LoginCandidat();
            logCand.UserIdent = TextBoxMail.Text;
            logCand.UserPwd = TextBoxMdp.Text;

            int recupId = 0;
            if(DaoCandidat.GetLoginCandidatbyId(logCand,out recupId) == true)
            {
                Candidat cand = new Candidat();
                cand = DaoCandidat.GetCandidatById(recupId);
                Session["LoginCand"] = cand.Nom + " " + cand.Prenom;
                Session["IdCand"] = cand.IdCandidat;
                Response.BufferOutput = true;
                Response.Redirect("EspaceCandidat.aspx", false);
            }
            else if (DaoEntreprise.GetLoginEntreprisebyId(log, out recupId) == true)          
            {
                Entreprise ent = new Entreprise();
                ent = DaoEntreprise.GetEntrepriseById(recupId);
                Session["Login"] = ent.RaisonSociale;
                Session["IdEnt"] = ent.IdEntreprise;
                Response.BufferOutput = true;                
                Response.Redirect("EspaceEntreprise.aspx", false);
            }
            else
                LabelErreur.Text = "L'adresse mail et/ou le mot de passe sont incorrects";
          
            
        }
    }
}
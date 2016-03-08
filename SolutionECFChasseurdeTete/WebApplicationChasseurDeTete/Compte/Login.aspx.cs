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
        string name;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonConnect_Click(object sender, EventArgs e)
        {
            LoginEntreprise log = new LoginEntreprise();

            log.UserIdent = TextBoxMail.Text;
            log.UserPwd = TextBoxMdp.Text;

            int id = DaoEntreprise.GetLoginEntreprisebyId(log);
            if (id != 0)
            {
                Entreprise ent = new Entreprise();
                ent = DaoEntreprise.GetEntrepriseById(id);
                Session["Login"] = ent.RaisonSociale;
                Response.BufferOutput = true;
                //FormsAuthentication.RedirectFromLoginPage(ent.RaisonSociale, true);
                Response.Redirect("EspaceEntreprise.aspx", false);
            }
            else
                Response.Write("L'utilisateur n'existe pas");
          
            //if (Membership.ValidateUser(TextBoxMail.Text, TextBoxMdp.Text))
            //    FormsAuthentication.RedirectFromLoginPage(TextBoxMail.Text, true);
            //else
            //    Label1.Text = "Login failed. Please check your user name and password and try again.";
        }
    }
}
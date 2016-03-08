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
            if(id != 0)
            {

                Session["new"] = TextBoxMail.Text;
                Response.BufferOutput = true;
                Response.Redirect("", false);
            }
        }
    }
}
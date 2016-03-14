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
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonValider_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                LoginCandidat log = new LoginCandidat();
                log.IdCandidat = (int)Session["IdCand"];
                log.UserIdent = TextBoxMailConnexionCand.Text;
                log.UserPwd = TextBoxConfirmCand.Text;
                if(DaoCandidat.UpdLoginCandidat(log) == true)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('La modification a bien été enregistrée');window.location='EspaceCandidat.aspx';</script>'");
                }
                else
                    ClientScript.RegisterStartupScript(this.GetType(), "Failure", "<script type='text/javascript'>alert('La modification n'a pas été prise en compte');window.location='EspaceCandidat.aspx';</script>'");

            }
        }
    }
}
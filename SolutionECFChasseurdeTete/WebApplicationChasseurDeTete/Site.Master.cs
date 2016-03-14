using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace WebApplicationChasseurDeTete
{
    public partial class SiteMaster : MasterPage
    {
        

        protected void Page_Init(object sender, EventArgs e)
        {
            
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
           
        }

        protected void Page_Load(object sender, EventArgs e)
        {
           
                if (Session["Login"] != null)
                {
                    Panel1.Visible = true;
                    LinkButtonEspaceCand.Visible = false;
                    Panel2.Visible = false;
                
                }
                else if (Session["LoginCand"] != null)
                {
                    Panel1.Visible = true;
                    LinkButtonEspaceEnt.Visible = false;
                    Panel2.Visible = false;

                }
                else
                    Panel2.Visible = true;
            
        }

        

        protected void LinkButtonDeco_Click(object sender, EventArgs e)
        {
            
            Panel1.Visible = false;
            Panel2.Visible = true;
            Session.Abandon();
            Response.Redirect("~/Accueil.aspx");
        }

        protected void LinkButtonEspaceCand_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CompteCandidat/EspaceCandidat.aspx");
        }

        protected void LinkButtonEspaceEnt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Compte/EspaceEntreprise.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Session.Abandon();
            Response.Redirect("~/Accueil.aspx");
        }
    }

}
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
        //private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        //private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        //private string _antiXsrfTokenValue;

        protected void Page_Init(object sender, EventArgs e)
        {
            //// Le code ci-dessous vous aide à vous protéger des attaques XSRF
            //var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            //Guid requestCookieGuidValue;
            //if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            //{
            //    // Utiliser le jeton Anti-XSRF à partir du cookie
            //    _antiXsrfTokenValue = requestCookie.Value;
            //    Page.ViewStateUserKey = _antiXsrfTokenValue;
            //}
            //else
            //{
            //    // Générer un nouveau jeton Anti-XSRF et l'enregistrer dans le cookie
            //    _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
            //    Page.ViewStateUserKey = _antiXsrfTokenValue;

            //    var responseCookie = new HttpCookie(AntiXsrfTokenKey)
            //    {
            //        HttpOnly = true,
            //        Value = _antiXsrfTokenValue
            //    };
            //    if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
            //    {
            //        responseCookie.Secure = true;
            //    }
            //    Response.Cookies.Set(responseCookie);
            //}

            //Page.PreLoad += master_Page_PreLoad;
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    // Définir un jeton Anti-XSRF
            //    ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
            //    ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            //}
            //else
            //{
            //    // Valider le jeton Anti-XSRF
            //    if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
            //        || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
            //    {
            //        throw new InvalidOperationException("Échec de la validation du jeton Anti-XSRF.");
            //    }
            //}
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
    }

}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationChasseurDeTete
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write("Bienvenue"+ Session["Login"]);
            LabelBienvenu.Text = (string)Session["Login"];
        }

        
    }
}
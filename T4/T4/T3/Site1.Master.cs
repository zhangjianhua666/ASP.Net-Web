﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace T3
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["user"] != null)
                {
                    string deUser = Server.UrlDecode(Request.QueryString["user"]);
                    ibiUser.Text = deUser;
                }
            }
        }
    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitor_viewdisease : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
  
         bindGridView();

    }
    private void bindGridView()
    {
        String qry = "select * from disease";
        ConnectionClass1 db = new ConnectionClass1();
        ListView1.DataSource = db.getTable(qry);
        ListView1.DataBind();
    }
    
    
}
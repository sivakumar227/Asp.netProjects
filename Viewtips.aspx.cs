using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doctor_Viewtips : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindGridView();

    }
    private void bindGridView()
    {
        String qry = "select * from tips";
        ConnectionClass1 db = new ConnectionClass1();
        ListView2.DataSource = db.getTable(qry);
        ListView2.DataBind();
    }
 
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doctor_Viewbooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindGridView();
    }
    private void bindGridView()
    {
        String semail = Session["semail"].ToString();
        String qry = "select * from booking where dname='" + semail + "'";
        ConnectionClass1 db = new ConnectionClass1();
        ListView1.DataSource = db.getTable(qry);
        ListView1.DataBind();
    }
   
   
}
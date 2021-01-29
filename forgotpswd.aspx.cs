using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitor_forgotpswd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String uname = txtUsername.Text;
     
        String qry = "select * from Login where username='" + uname  + "'";
        ConnectionClass1 db = new ConnectionClass1();
        ListView1.DataSource = db.getTable(qry);
        ListView1.DataBind();

      
    }
}
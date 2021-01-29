using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_viewbooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    private void bindGridView()
    {
        String bkdate = TextBox1.Text;
        String qry = "select * from booking where bdate='" + bkdate + "'";
        ConnectionClass1 db = new ConnectionClass1();
        ListView1.DataSource = db.getTable(qry);
        ListView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bindGridView();
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Diseasedetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        String disname = txtdsname.Text;
        String descript = txtdescr.Text;
        String qry1 = "insert into disease(dsname,description)Values('" + disname + "','" + descript + "')";
        ConnectionClass1 db1 = new ConnectionClass1();
        String msg1 = db1.Manipulate(qry1);
        Response.Write("<script>alert'" + msg1 + "')</script>");

        bindGridView();
    }
    private void bindGridView()
    {
        String qry = "select * from disease";
        ConnectionClass1 db = new ConnectionClass1();
        ListView2.DataSource = db.getTable(qry);
        ListView2.DataBind();
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtdsname.Text=" ";
        txtdescr.Text=" ";
        
    }
}
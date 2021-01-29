using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doctor_Doctordetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         bindGridView();

    }
    public string semail;
    private void bindGridView()
    {
        
       
        if (Session["semail"] != null)
        {
            semail = Convert.ToString(Session["semail"]);

            String qry = "select * from doctor where dname='" + semail + "'";
            ConnectionClass1 db = new ConnectionClass1();
            ListView1.DataSource = db.getTable(qry);
            ListView1.DataBind();
        }
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        String name = txtdname.Text;

        String specialization = txtspec.Text;

        String time = txtctime.Text;
        String semail = Session["semail"].ToString();

        String qry1 = "update doctor set dname='" + name + "',spec='" + specialization + "',ctime = '" + time + "' where dname='"+ semail +"'";
        ConnectionClass1 db1 = new ConnectionClass1();
        String msg1 = db1.Manipulate(qry1);
        Response.Write("<script>alert'" + msg1 + "')</script>");

        bindGridView();
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtdname.Text = " ";
        txtspec.Text = " ";

        txtctime.Text = " ";

    }
}
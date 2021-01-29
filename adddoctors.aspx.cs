using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_adddoctors : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        
        String name = txtdname.Text;
       
        String specialization = txtspec.Text ;
       
        String time = txtctime.Text;

            String qry1 = "insert into doctor(dname,spec,ctime)Values('" + name + "','" + specialization + "', '" + time + "')";
            ConnectionClass1 db1 = new ConnectionClass1();
            String msg1 = db1.Manipulate(qry1);
            Response.Write("<script>alert'" + msg1 + "')</script>");

            bindGridView();
        }
     private void bindGridView()
    {
        String qry = "select * from doctor";
        ConnectionClass1 db = new ConnectionClass1();
        ListView1.DataSource = db.getTable(qry);
        ListView1.DataBind();
    }
     protected void btncancel_Click(object sender, EventArgs e)
     {
         txtdname.Text = " ";
         txtspec.Text = " ";
        
         txtctime.Text = " ";


     }
}
  
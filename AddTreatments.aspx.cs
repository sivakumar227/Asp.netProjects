using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddTreatments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
     
      
protected void btnsubmit_Click(object sender, EventArgs e)
{
    String disease = DropDownList1.SelectedItem.Value;
        String treatment = txttrtname.Text;
        String treattype = txttrttype.Text;
        String Method = txtmethod.Text;
        String charges = txtcharges.Text;
        String qry1 = "insert into treatment(dsname,trtname,trttype,method,charges)Values('" + disease + "','" + treatment + "','" + treattype + "','" + Method + "','" + charges + "')";
        ConnectionClass1 db1 = new ConnectionClass1();
        String msg1 = db1.Manipulate(qry1);
        Response.Write("<script>alert'" + msg1 + "')</script>");

        bindGridView();
}
 private void bindGridView()
    {
        String qry = "select * from treatment";
        ConnectionClass1 db = new ConnectionClass1();
        ListView1.DataSource = db.getTable(qry);
        ListView1.DataBind();
    }
protected void btncancel_Click(object sender, EventArgs e)
{
    DropDownList1.SelectedItem.Value = "";
        txttrtname.Text= " ";
        txttrttype.Text= " ";
        txtmethod.Text= " ";
        txtcharges.Text = " ";
        
        
}
}
  
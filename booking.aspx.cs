using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patient_booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtemailid.Text = Session["semail"].ToString();
        txtemailid.ReadOnly = true;
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
         
        String useremail=txtemailid.Text;
        String docname = DropDownList1.SelectedItem.Value;
        String  bookdate=txtbdate.Text;
        String booktime=txtbtime.Text;
        String  purpose=txtpurpose.Text;

        String qry1 = "insert into booking(uemail,dname,bdate,btime,purpose)Values('" + useremail  + "','" + docname  + "','" + bookdate   + "','" + booktime + "','" + purpose + "')";
        ConnectionClass1 db1 = new ConnectionClass1();
        String msg1 = db1.Manipulate(qry1);
        Response.Write("<script>alert'" + msg1 + "')</script>");

        bindGridView();
    }
    private void bindGridView()
    {
        String semail = Session["semail"].ToString();
        String qry = "select * from booking where uemail='"+semail+"'";
        ConnectionClass1 db = new ConnectionClass1();
        ListView1.DataSource = db.getTable(qry);
        ListView1.DataBind();
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtbdate.Text = "";
        txtbtime.Text = "";
        DropDownList1.SelectedItem.Value = "";
        txtemailid.Text = "";
        txtpurpose.Text = "";
       

    }
}

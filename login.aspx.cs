using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String uname = txtUsername.Text;
        String pwd = txtPassword.Text;
        String qry = "select usertype from Login where username='"+ uname +"' and password='"+ pwd +"' ";
        ConnectionClass1 db = new ConnectionClass1();
        String utype = db.getSingleData(qry);
        if (utype == "admin")
        {
            Session["semail"] = uname;
            Response.Redirect("../Admin/AdminHome.aspx");
            
        }
        else if(utype =="patient")
        {
            Session["semail"] = uname;
            Response.Redirect("../Patient/PatientHome.aspx");
           
        }
        else if (utype == "doctor")
        {
            Session["semail"] = uname;
            Response.Redirect("../Doctor/DoctorHome.aspx");

        }
        else
        {
            Response.Write("Login Failed");

        }

    }
}
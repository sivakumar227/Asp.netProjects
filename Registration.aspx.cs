using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String name = txtName.Text;
        String age = txtAge.Text;
        String gender= rbtngender.SelectedItem.Value ;
        String address=txtAdd.Text;
        String email=txtEmail.Text;
        String pwd=txtPwd.Text;
        String phone=txtphone.Text;
        String cpwd=txtcpwd.Text;
        String utype = "patient";
        
        if (pwd != cpwd)
        {
            Response.Write("Invalid Password");
        }
        else
        {
           
            String qry="insert into Login(username,password,usertype)Values('"+email+"','"+pwd+"','"+ utype +"')";
            ConnectionClass1 db = new ConnectionClass1();
            String msg = db.Manipulate(qry);
            Response.Write("<script>alert'" + msg + "')</script>");

            String qry1 = "insert into Registration(Name,Age,Gender,Address,Email,phoneno)Values('" + name + "','"+ age +"','"+ gender +"','"+ address +"', '" + email + "','"+ phone +"')";
            ConnectionClass1 db1 = new ConnectionClass1();
            String msg1 = db1.Manipulate(qry1);
            Response.Write("<script>alert'" + msg1 + "')</script>");

            Response.Redirect("login.aspx");
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtAge.Text = "";
        rbtngender.SelectedItem.Value = "";
        txtAdd.Text = "";
        txtEmail.Text = "";
        txtPwd.Text = "";
        txtphone.Text = "";
    }
}
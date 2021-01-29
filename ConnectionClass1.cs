using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Summary description for ConnectionClass1
/// </summary>
public class ConnectionClass1
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();

	public ConnectionClass1()
	{
        con.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Laptop\Documents\Visual Studio 2012\WebSites\onlineDental\App_Data\onlineDental.mdf;Integrated Security=True";
        cmd.Connection = con;
	}
    // add/delete/update
    public String  Manipulate(String qry){
        String msg="";
        try{
            con.Open(); 
            cmd.CommandText=qry ;
            cmd.ExecuteNonQuery();
            msg="Success";

        }
        catch(Exception ex){
            msg=ex.Message ;
        }
        finally {
            con.Close();
        }
        return msg;
}
    public DataTable getTable(String qry){
        DataTable dt=new DataTable ();
        cmd.CommandText =qry;
        SqlDataAdapter adp=new SqlDataAdapter();
        adp.SelectCommand = cmd;
        adp.Fill(dt);
        return dt;
    }
    // get Single Data
    public String getSingleData(String qry){
        String data = "";
        try{
            con.Open();
            cmd.CommandText =qry;
            SqlDataReader  rd=cmd.ExecuteReader();

            while (rd != null && rd.Read()){
                data=rd.GetString(0);

            }
        }
        catch (Exception  ex){

        }
        finally {
            con.Close();
        }
        return data;
    }
}
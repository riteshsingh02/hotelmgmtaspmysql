using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
public partial class MyLogin : System.Web.UI.Page
{
    MySqlConnection conn;
    MySqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void connect()
    {
        conn = new MySqlConnection("Data Source=localhost;Database=hotel;User ID=root;Password=1234");
        conn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        try
        {
            connect();
            MySqlDataAdapter adp = new MySqlDataAdapter("select * from login", conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            foreach (DataRow r in dt.Rows)
            {
                if (t1.Text == r["logid"].ToString())
                {
                    if (t2.Text == r["logpwd"].ToString())
                    {
                        Response.Write("<script>window.open('mymenu.aspx') </script>");
                    }
                    else
                        Response.Write("<script>alert('Password is wrong............') </script>");
                }
                else
                    Response.Write("<script>alert('ID is wrong') </script>");

            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.close()</script>");
    }
}
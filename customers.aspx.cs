using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using  System.Data;
public partial class customers : System.Web.UI.Page
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        //To Save the record
        try
        {
            connect();
            cmd = new MySqlCommand("insert into customers values('" + t1.Text + "','" + t2.Text + "','" + t3.Text + "','" + t4.Text + "','" + t5.Text + "','" + t6.Text + "','" + t7.Text + "','" + t8.Text + "','" + t9.Text + "','" + t10.Text + "')", conn);
            cmd.ExecuteNonQuery();
            search();
            Response.Write("<script>alert('Record Save......')</script>");
            int a = int.Parse(HiddenField1.Value.ToString()) + 1;
            cmd = new MySqlCommand("update keygen set custid='" + a + "'", conn);
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //To Delete the record
        try
        {
            connect();
            cmd = new MySqlCommand("delete from customers where customer_id='" + t1.Text + "'", conn);
            cmd.ExecuteNonQuery();
            search();
            Response.Write("<script>alert('Record Deleted......')</script>");
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Generate roomid from keygen
        try
        {
            connect();
            MySqlDataAdapter adp = new MySqlDataAdapter("select custid from keygen", conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            foreach (DataRow r in dt.Rows)
            {
                HiddenField1.Value = r["custid"].ToString();

            }
            t1.Text = HiddenField1.Value.ToString();
            t2.Text = "";
            t3.Text = "";
            t4.Text = "";
            t5.Text = "";
            t6.Text = "";
            t7.Text = "";
            t8.Text = "";
            t9.Text = "";
            t10.Text = "";

        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        //All Search
        search();
    }
    public void search()
    {
        try
        {
            connect();
            MySqlDataAdapter adp = new MySqlDataAdapter("select*from customers", conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Psearch_Click(object sender, EventArgs e)
    {
         //particular search
        try
        {
            connect();
            MySqlDataAdapter adp = new MySqlDataAdapter("select*from customers where customer_id ='" + t1.Text + "'", conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            foreach (DataRow r in dt.Rows)
            {
                t2.Text = r["first_name"].ToString();
                t3.Text = r["last_name"].ToString();
                t4.Text = r["address"].ToString();
                t5.Text = r["postal_code"].ToString();
                t6.Text = r["city"].ToString();
                t7.Text = r["country"].ToString();
                t8.Text = r["Email"].ToString();
                t9.Text = r["phone"].ToString();
                t10.Text = r["reg_time"].ToString();
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //TO update the record
        try
        {
            connect();
            cmd = new MySqlCommand("update customers set first_name='" + t2.Text + "',last_name='" + t3.Text + "',address='" + t4.Text + "',postal_code='" + t5.Text + "',city='" + t6.Text + "',country='" + t7.Text + "',email='" + t8.Text + "',phone='" + t9.Text + "',reg_time='" + t10.Text + "' where customer_id=" + t1.Text + "", conn);
            cmd.ExecuteNonQuery();
            search();
            Response.Write("<script>alert('Record Update......')</script>");
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
}


    


    

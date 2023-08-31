using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
public partial class payments : System.Web.UI.Page
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
        try
        {
            connect();
            //Booking id is foregin key
            int bid = 0;
            MySqlDataAdapter adp = new MySqlDataAdapter("select * from bookings", conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            foreach (DataRow r in dt.Rows)
            {
                if (t1.Text == r["booking_id"].ToString())
                {
                    bid = 1;
                    break;
                }
            }
            //customer id is foreign key
            int cid = 0;
            adp = new MySqlDataAdapter("select customer_id from customers", conn);
            dt = new DataTable();
            adp.Fill(dt);
            foreach (DataRow r in dt.Rows)
            {
                if (t2.Text == r["customer_id"].ToString())
                {
                    cid = 1;
                    break;
                }
            }
            //To Save the record
            if (bid == 1 && cid == 1)
            {
                cmd = new MySqlCommand("insert into payments values('" + t1.Text + "','" + t2.Text + "','" + t3.Text + "','" + t4.Text + "','" + t5.Text + "','" + t6.Text + "','" + t7.Text + "')", conn);
                cmd.ExecuteNonQuery();
                search();
                Response.Write("<script>alert('Record Saved.......')</script>");
            }
            else
            {
                Response.Write("<script>alert('Either Room_id or customer_id not found......')</script>");
            }
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
            cmd = new MySqlCommand("delete from payments where booking_id='" + t1.Text + "'", conn);
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
        t1.Text = "";
        t2.Text = "";
        t3.Text = "";
        t4.Text = "";
        t5.Text = "";
        t6.Text = "";
        t7.Text = "";

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
            MySqlDataAdapter adp = new MySqlDataAdapter("select*from payments", conn);
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
    protected void Button6_Click(object sender, EventArgs e)
    {
        //particular search
        try
        {
            connect();
            MySqlDataAdapter adp = new MySqlDataAdapter("select*from payments where booking_id ='" + t1.Text + "'", conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            foreach (DataRow r in dt.Rows)
            {
                t2.Text = r["customer_id"].ToString();
                t3.Text = r["amount"].ToString();
                t4.Text = r["paid"].ToString();
                t5.Text = r["pay_time"].ToString();
                t6.Text = r["invoice"].ToString();
                t7.Text = r["cancelled"].ToString();
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
            cmd = new MySqlCommand("update payments set customer_id='" + t2.Text + "',amount='" + t3.Text + "',paid='" + t4.Text + "',pay_time='" + t5.Text + "',invoice='" + t6.Text + "',cancelled='" + t7.Text + "' where booking_id=" + t1.Text + "", conn);
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
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
public partial class bookings : System.Web.UI.Page
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
            //Room number is foregin key
            int rnum = 0;
            MySqlDataAdapter adp = new MySqlDataAdapter("select * from rooms", conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            foreach (DataRow r in dt.Rows)
            {
                if (t4.Text == r["room_number"].ToString())
                {
                    rnum = 1;
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
                if (t5.Text == r["customer_id"].ToString())
                {
                    cid = 1;
                    break;
                }
            }
            //To Save the record
            if (rnum == 1 && cid == 1)
            {
                cmd = new MySqlCommand("insert into bookings values('" + t1.Text + "','" + t2.Text + "','" + t3.Text + "','" + t4.Text + "','" + t5.Text + "','" + t6.Text + "','" + t7.Text + "','" + t8.Text + "','" + t9.Text + "','" + t10.Text + "')", conn);
                cmd.ExecuteNonQuery();
                search();
                Response.Write("<script>alert('Record Save......')</script>");
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
            cmd = new MySqlCommand("delete from bookings where booking_id='" + t1.Text + "'", conn);
            cmd.ExecuteNonQuery();
            search();
            Response.Write("<script>alert('Record Delete......')</script>");
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
        t8.Text = "";
        t9.Text = "";
        t10.Text = "";
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
            MySqlDataAdapter adp = new MySqlDataAdapter("select*from bookings", conn);
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
            MySqlDataAdapter adp = new MySqlDataAdapter("select*from bookings where booking_id ='" + t1.Text + "'", conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            foreach (DataRow r in dt.Rows)
            {
                t2.Text = r["arrival"].ToString();
                t3.Text = r["checkout"].ToString();
                t4.Text = r["room_number"].ToString();
                t5.Text = r["customer_id"].ToString();
                t6.Text = r["breakfast"].ToString();
                t7.Text = r["nights"].ToString();
                t8.Text = r["comment"].ToString();
                t9.Text = r["book_type"].ToString();
                t10.Text = r["book_time"].ToString();
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
            cmd = new MySqlCommand("update bookings set arrival='" + t2.Text + "',checkout='" + t3.Text + "',room_number='" + t4.Text + "',customer_id='" + t5.Text + "',breakfast='" + t6.Text + "',nights='" + t7.Text + "',comment='" + t8.Text + "',book_type='" + t9.Text + "',book_time='" + t10.Text + "' where customer_id=" + t1.Text + "", conn);
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
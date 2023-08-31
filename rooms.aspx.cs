using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
public partial class rooms : System.Web.UI.Page
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
            cmd = new MySqlCommand("insert into rooms values('" + t1.Text + "','" + t2.Text + "','" + t3.Text + "','" + t4.Text + "','" + t5.Text + "')", conn);
            cmd.ExecuteNonQuery();
            search();
            Response.Write("<script>alert('Record Save......')</script>");
            int a = int.Parse(HiddenField1.Value.ToString()) + 1;
            cmd = new MySqlCommand("update keygen set roomnum='" + a + "'", conn);
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
            cmd = new MySqlCommand("delete from rooms where room_number='" + t1.Text + "'", conn);
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
        //Generate roomid from keygen
        try
        {
            connect();
            MySqlDataAdapter adp = new MySqlDataAdapter("select roomnum from keygen", conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            foreach (DataRow r in dt.Rows)
            {
                HiddenField1.Value = r["roomnum"].ToString();

            }
            t1.Text = HiddenField1.Value.ToString();
            t2.Text = "";
            t3.Text = "";
            t4.Text = "";
            t5.Text = "";

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
            MySqlDataAdapter adp = new MySqlDataAdapter("select * from rooms", conn);
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
            MySqlDataAdapter adp = new MySqlDataAdapter("select*from rooms where room_number='" + t1.Text + "'", conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            foreach (DataRow r in dt.Rows)
            {
                t2.Text = r["room_type"].ToString();
                t3.Text = r["priceper_night"].ToString();
                t4.Text = r["max_persons"].ToString();
                t5.Text = r["locked"].ToString();
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
            cmd = new MySqlCommand("update rooms set room_type='" + t2.Text + "',priceper_night=" + t3.Text + ",max_persons=" + t4.Text + ",locked='" + t5.Text + "' where room_number=" + t1.Text + "", conn);
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
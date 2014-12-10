using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using MySql.Data.MySqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {/*
        string MyConnectionString = "Server=localhost;Database=eats;Uid=root;Pwd=123;";
        MySqlConnection conn = new MySqlConnection(MyConnectionString);
        conn.Open();
        MySqlCommand mycn = new MySqlCommand("select * from users", conn);
        MySqlDataReader msdr = mycn.ExecuteReader();
        if (msdr.Read())
        {
            GridView1.DataSource = msdr;
            GridView1.DataBind();
            Response.Write("成功,两秒后自动返回！");
        }
        else Response.Write("失败,两秒后自动返回！");
        msdr.Close();
        conn.Close();
      * */
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string MyConnectionString = "Server=localhost;Database=eats;Uid=root;Pwd=123;";
        MySqlConnection conn = new MySqlConnection(MyConnectionString);
        conn.Open();
        MySqlCommand mycn = new MySqlCommand("select * from users", conn);
        MySqlDataReader msdr = mycn.ExecuteReader();
        if (msdr.Read())
        {
            GridView1.DataSource = msdr;
            GridView1.DataBind();
            Response.Write("成功,两秒后自动返回！");
        }
        else Response.Write("失败,两秒后自动返回！");
        msdr.Close();
        conn.Close();
    }
}
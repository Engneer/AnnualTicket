using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Data;

public partial class checktourists : System.Web.UI.Page
{
    string MyConnectionString = "Server=localhost;Database=eats;Uid=root;Pwd=123;Charset=utf8";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            MySqlConnection conn = new MySqlConnection(MyConnectionString);
            conn.Open();
            String sql = "select * from userinfo";
            MySqlCommand mysqlcom = conn.CreateCommand();
            mysqlcom.CommandText = sql;
            MySqlDataAdapter mysqladapter = new MySqlDataAdapter(mysqlcom);
            DataSet ds = new DataSet();
            mysqladapter.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            conn.Close();
        }
    }
  
}
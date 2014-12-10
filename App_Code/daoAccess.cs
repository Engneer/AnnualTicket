using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data;
using MySql.Data.MySqlClient;

/// <summary>
/// daoAccess 的摘要说明
/// </summary>
public class daoAccess
{
    private string MyConnectionString = "Server=localhost;Database=eats;Uid=root;Pwd=123;";
    private bool isconnect;
    private MySqlConnection conn;
	public daoAccess()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public MySqlConnection getConnection()
    {
         conn = new MySqlConnection(MyConnectionString);
         return conn;
    }
    public bool testConnection() {
        bool tmp;
        if (conn != null)
        {
            tmp= true;
        }
        else {
            tmp= false;
        }
        conn.Close();
        return tmp;
    }
   

}
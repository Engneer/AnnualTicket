﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

using MySql.Data;
using MySql.Data.MySqlClient;

public partial class addTourists : System.Web.UI.Page
{
    string MyConnectionString = "Server=localhost;Database=eats;Uid=root;Pwd=123;Charset=utf8";
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack) {
            MySqlConnection conn = new MySqlConnection(MyConnectionString);
            string squeryString = "select id,levelname from levelinfo";
            MySqlDataAdapter ad = new MySqlDataAdapter(squeryString, conn);
            DataSet ds = new DataSet();
            conn.Open();
            ad.Fill(ds, "touristsType");
            usertype.DataSource = ds.Tables["touristsType"].DefaultView;
            usertype.SelectedIndex = -1;
            usertype.DataValueField = ds.Tables["touristsType"].Columns[0].ColumnName;
            usertype.DataTextField = ds.Tables["touristsType"].Columns[1].ColumnName;
            usertype.DataBind();
            conn.Close();



            ds.Dispose();
        }


    }
    protected void checkButton_Click(object sender, EventArgs e)
    {
        Response.Write("<script Language='JavaScript'>alert(\"test1\");</script>");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ss = (string)Session["ImageHeadUrl"];
        userinfo user = new userinfo();
        user.UserNumber = usernum.Text;
        user.UserName = username.Text;
        if (usersex1.Checked)
        {
            user.UserSex = usersex1.Text;
        } if (usersex2.Checked)
        {
            user.UserSex = usersex2.Text;
        }
        user.UserIdentify = useridentify.Text;
        user.UserPhone = userphone.Text;
        user.UserLevel = int.Parse(this.usertype.SelectedValue);
        user.UserIsupdate = 0;
        user.UserHandleTime = DateTime.Now;
        user.UserImageUrl = (string)Session["ImageHeadUrl"];
        
        MySqlConnection conn = new MySqlConnection(MyConnectionString);
        String sqlInsert = "insert into userinfo(number,name,sex,identify,level,phone,handletime,imageurl,isupdate) values('"
            + user.UserNumber + "','" + user.UserName + "','" + user.UserSex + "','" + user.UserIdentify + "','" + user.UserLevel + "','" + user.UserPhone + "','" + user.UserHandleTime + "','" + user.UserImageUrl + "','" + user.UserIsupdate + "')";
        MySqlCommand InsCom = new MySqlCommand(sqlInsert, conn);
        conn.Open();
        InsCom.ExecuteNonQuery();
        conn.Close();
        //Response.Write("<script Language='JavaScript'>alert('" + user.UserImageUrl + "')</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("<script Language='JavaScript'>alert("+usertype.SelectedValue+");</script>");
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;


public partial class systemUserManager: System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            dbBind();
    }
    protected void search_Click(object sender, EventArgs e)
    {
        string MyConnectionString = "Server=localhost;Database=eats;Uid=root;Pwd=123;";
        MySqlConnection conn = new MySqlConnection(MyConnectionString);
        MySqlCommand commend = new MySqlCommand("select id,name,level from users", conn);
        conn.Open();

        if (conn.State == System.Data.ConnectionState.Open)
        {
            MySqlDataAdapter msda = new MySqlDataAdapter("select id,name,level from users", conn);
            DataSet ds = new DataSet();
            msda.Fill(ds);
            conn.Close();
            GridView1.DataSource = ds;
            GridView1.DataKeyNames = new string[] { "id" };
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script language=javascript>alert('数据库没有打开');</script>");
        }
    }
    protected void dbBind()
    {
        string MyConnectionString = "Server=localhost;Database=eats;Uid=root;Pwd=123;";
        MySqlConnection conn = new MySqlConnection(MyConnectionString);
        MySqlCommand commend = new MySqlCommand("select id,name,level from users", conn);
        conn.Open();

        if (conn.State == System.Data.ConnectionState.Open)
        {
            MySqlDataAdapter msda = new MySqlDataAdapter("select id,name,level from users", conn);
            DataSet ds = new DataSet();
            msda.Fill(ds);
            conn.Close();
            GridView1.DataSource = ds;
            GridView1.DataKeyNames = new string[] { "id" };
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script language=javascript>alert('数据库没有打开');</script>");
        }
    }
    //该控件如果点击分页按钮，默认会触发PageIndexChanging方法
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;//通过点击页面的分页数字。传到后台的固定取值方法。
        dbBind();
    }

    //当点击编辑按钮，默认执行事件中的RowEditing方法
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        //当选择编辑按钮，页面传入的ID值的取值方式固定写法。
        this.GridView1.EditIndex = e.NewEditIndex;
        this.dbBind();
    }
    //当点击取消按钮，默认执行事件中的RowCancelingEdit方法
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        this.GridView1.EditIndex = -1;//当点击取消按钮，只要将EditIndex设置为-1；
        this.dbBind();
    }
    //更新按钮
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        // MySqlConnection con = new MySql.Data.MySqlClient.MySqlConnection("Database='test';Data Source='localhost';User Id='root';Password='root';charset='utf8'");
        //取值你要更新列的值。我的列的顺序为:删除，选择，ID,USERNAME,FLAG.
        //我要更新的是username,flag，列是从0开始，所以选择的cell为第3列，和第4列。
        //要取得你要更新列的指定写法。
        string MyConnectionString = "Server=localhost;Database=eats;Uid=root;Pwd=123;";
        MySqlConnection conn = new MySqlConnection(MyConnectionString);

        string newname = ((TextBox)(this.GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text.Trim();
        string newlevel = ((TextBox)(this.GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.Trim();
        string id = this.GridView1.DataKeys[e.RowIndex].Value.ToString();
        string sql = "update users set name='" + newname + "',level='" + newlevel + "' where id=" + Convert.ToInt32(id);
        MySqlCommand command = new MySqlCommand(sql, conn);
        conn.Open();
        command.ExecuteNonQuery();
        conn.Close();
        this.GridView1.EditIndex = -1;
        this.dbBind();
    }

    //我们在GridView的列表中，选择旁边的按钮，然后选择"编辑列"，然后选择CommandField选择“删除”，就会出现删除的列，当点击删除的时候，会指定执行RowDeleting
    //方法，你双击事件中的该方法，然后开始写代码。
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = this.GridView1.DataKeys[e.RowIndex].Value.ToString();//指定写法，来得到页面传来的删除的ID值
        //要选择GridView1.DataKeys[e.RowIndex].Value的时候，在绑定数据源的时候，一定要申明你绑定的值：this.GridView1.DataKeyNames = new string[] { "ID"};
        string MyConnectionString = "Server=localhost;Database=eats;Uid=root;Pwd=123;";
        MySqlConnection conn = new MySqlConnection(MyConnectionString);
        string sql = "delete from users where id=" + Convert.ToInt32(id);

        conn.Open();
        MySqlCommand commend = new MySqlCommand(sql, conn);
        commend.ExecuteNonQuery();
        conn.Close();
        this.dbBind();
    }
}

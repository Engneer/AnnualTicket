using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;

public partial class dataAnalysis : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            InitChart();
        }
    }
    private void InitChart()
    {
        Curve curveImg = new Curve(); //定义一个画图类实例
        curveImg.Title = "2008年销售情况统计表";
        curveImg.Width = 900;
        curveImg.Height = 500;
        curveImg.TextColor = Color.Red;

        string imgPath = "~/uploads/thumbs/" + "MyCurve.jpg";
        string savePath = Server.MapPath(imgPath);
        ChartHelper.CreateChartByCurve(curveImg, imgPath, ImageFormat.Jpeg);
        this.Image1.ImageUrl = imgPath;
    }
}
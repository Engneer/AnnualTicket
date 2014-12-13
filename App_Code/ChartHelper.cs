using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
using System.Drawing.Imaging;
using System.Data;
/// <summary>
/// ChartHelper 的摘要说明
/// </summary>
public class ChartHelper
{
    /// <summary>
    /// 创建一个Pie图--圆饼图
    /// </summary>
    /// <param name="pieImg">Pie类的实例(设置标题、宽度、高度等)</param>
    /// <param name="imgPath">生成Pie图的图片路径(相对路径)</param>
    /// <param name="imgFormat">生成Pie图的图片格式(如：ImageFormat.Jpeg)</param>
    public static void CreateChartByCurve(Curve curveImg, string imgPath, ImageFormat imgFormat)
    {
        try
        {
            if (curveImg == null)
            {
                curveImg.Title = "Curve图统计表示例";
                curveImg.Width = 900;
                curveImg.Height = 500;
                curveImg.TextColor = Color.Red;
            }
            Bitmap bmp = curveImg.CreateImage();
            string savePath = HttpContext.Current.Server.MapPath(imgPath);
            bmp.Save(savePath, imgFormat);
        }
        catch (Exception ee)
        {
            throw ee;
        }
    }
}
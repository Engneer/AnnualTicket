using System;
using System.IO;
using System.Net;
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

public partial class upload : System.Web.UI.Page
{

    protected void Page_PreInit(object sender, EventArgs e) 
    {
        string strFile = DateTime.Now.ToString("dd_yymmss") + ".jpg";
        FileStream log = new FileStream(Server.MapPath("~/uploads/original/" + strFile), FileMode.OpenOrCreate);
        byte[] buffer = new byte[1024];
        int c;
        while ((c = Request.InputStream.Read(buffer, 0, buffer.Length)) > 0)
        {
            log.Write(buffer, 0, c);
        }
        //Write jpg filename to be picked up by regex and displayed on flash html page.
        log.Close();
        //WebClient myWebClient = new WebClient();
        // myWebClient.Headers["Content-type"]="application/json";
        Response.Write("{\"status\":1,\"message\":\"Success!\",\"filename\":\"" + strFile + "\"}");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
       // string strFile = DateTime.Now.ToString("dd_MMM_yymmss") + ".jpg";
       // FileStream log = new FileStream(Server.MapPath("~/uploads/original/" + strFile), FileMode.OpenOrCreate);
       // byte[] buffer = new byte[1024];
       // int c;
       // while ((c = Request.InputStream.Read(buffer, 0, buffer.Length)) > 0)
       // {
       //     log.Write(buffer, 0, c);
       // }
       // //Write jpg filename to be picked up by regex and displayed on flash html page.
       // log.Close();
       // //WebClient myWebClient = new WebClient();
       //// myWebClient.Headers["Content-type"]="application/json";
       // Response.Write("{\"status\":1,\"message\":\"Success!\",\"filename\":\""  + strFile + "\"}");
        //  String jsoncontent="{\"files\":[\"";
       // DirectoryInfo dir = new DirectoryInfo(Server.MapPath("~/uploads/original/"));
      //  FileInfo[] fi = dir.GetFiles("*");
       //for (int i = 0; i < (fi.Length - 1); i++)
       // {
       //     // foreach (FileInfo dChild in dir.GetFiles("*"))
       //     //  {//如果用GetFiles("*.txt"),那么全部txt文件会被显示
       //    // Response.Write(dChild.Name + "<BR>");//打印文件名
       //     //Response.Write(dChild.FullName + "<BR>");//打印路径和文件名
       //    //Response.Write(fi[i].Name + "<BR>");//打印文件名
       //    jsoncontent = jsoncontent + fi[i].Name + "\",\"";
       //     //  }
       // }
       //WebClient myWebClient = new WebClient();
       //jsoncontent = jsoncontent + fi[fi.Length - 1].Name + "\"],\"nextStart\":\""+"864b63948303c18301969055943fc646.jpg"+"\"}";
       //// jsoncontent=jsoncontent+
       // //myWebClient.Header.Add('Content-type: application/json');
       // myWebClient.Headers.Add("Content-type", "application/json");
       // Response.Write(jsoncontent);
       //// Response.Write(fi.get);
    
    }
    
}

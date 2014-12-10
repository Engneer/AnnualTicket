using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// userinof 的摘要说明
/// </summary>
/// 
[Serializable]
public class userinfo
{
    
    private string number;
    private string name;
    private string sex;
    private string identify;
    private int level;
    private string phone;
    private DateTime handletime;
    private string imageurl;
    private int isupdate;
	public userinfo()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
        
	}
       
        public string UserNumber
        {
            get{return number;}
            set {number =value;}
        }
        public string UserName
        {
            get {return name;}
            set {name = value;}
        }
        public string UserSex
        {
            get {return sex;}
            set {sex=value;}
        }
        public string UserIdentify
        {
            get {return identify;}
            set {identify=value;}
        }
        public int UserLevel
        {
            get {return level;}
            set { level = value; }
        }
         public string UserPhone
        {
            get {return phone;}
            set {phone=value;}
        }
         public DateTime UserHandleTime
        {
            get {return handletime;}
            set {handletime=value;}
        }
         public string  UserImageUrl
        {
            get {return imageurl;}
            set {imageurl=value;}
        }
         public int UserIsupdate
        {
            get {return isupdate;}
            set {isupdate=value;}
        }
}
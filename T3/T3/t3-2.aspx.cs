using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace T3
{
    public partial class t3_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void butOk_Click1(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                //获取文件名
                string fileName = FileUpload1.FileName;
                //获取上传文件的文件后缀名
                string fileFix = fileName.Substring(fileName.LastIndexOf('.') + 1).ToLower();
                if (fileFix != "png" && fileFix != "jpg" && fileFix != "jpeg" && fileFix != "pic")
                {
                    this.ibiMessage.Text = "这玩意不是图片！！！";
                }
                else
                {
                    FileUpload1.SaveAs(Server.MapPath(".") + "//Img//" + fileName);
                    this.ImageUser.ImageUrl = "~/img/" + fileName;
                    this.ImageButton1.ImageUrl = "/Img/" + fileName;
                    this.ibiMessage.Text = "真棒，你上传成功了！！！";
                }
            }
        }

        protected void ImageUser_Click(object sender, ImageClickEventArgs e)
        {
            //判断有没有文件
            if (ImageUser.ImageUrl=="")
            {
                ibiMessage.Text = "没有可下载的的头像，请先上传";
            }
            else
            {
                Response.ContentType = "application/x-zip-compressed";
                string imgName = ImageUser.ImageUrl.Substring(ImageUser.ImageUrl.LastIndexOf('/') + 1).ToLower();
                Response.AddHeader("Content-Disposition", "attachmennt;filename=" + imgName);
                string filename = Server.MapPath(ImageUser.ImageUrl);
                Response.TransmitFile(filename);
                ibiMessage.Text = "你获得了一张头像";
            }
        }
    }
}
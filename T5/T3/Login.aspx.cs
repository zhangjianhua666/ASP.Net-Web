using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace T3
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //判断是否保存了密码
                if (Request.Cookies["UserName"]!=null&& Request.Cookies["UserPwd"] != null)
                {
                    //用户名编码，现取出要进行解码
                    txtUser.Text = Server.UrlDecode(Request.Cookies["UserName"].Value);
                    //对密码赋值
                    txtPwd.Attributes.Add("value",Request.Cookies["UserPwd"].Value);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtUser.Text!=""||txtPwd.Text!="")
            {
                if (txtUser.Text=="admin")
                {
                    Response.Write("<script>alert('不允许使用管理员账号！请重新注册账号！');window.location.href='Regist.aspx'</script>");
                }
                else
                {
                    string enUser = Server.UrlEncode(txtUser.Text);
                    Response.Redirect("t3-2.aspx?user="+Server.UrlEncode(enUser));
                }
            }
            if (cbRem.Checked)
            {
                //定义保存用户名和密码的cookie对象
                HttpCookie cName = new HttpCookie("UserName", Server.UrlEncode(this.txtUser.Text));
                HttpCookie cPwd = new HttpCookie("UserPwd", this.txtPwd.Text);
                //设置保存时间
                cName.Expires = DateTime.Now.AddDays(1);
                cPwd.Expires = DateTime.Now.AddDays(1);
                //加入到cookie集合中
                Response.Cookies.Add(cName);
                Response.Cookies.Add(cPwd);
            }
        }
    }
}
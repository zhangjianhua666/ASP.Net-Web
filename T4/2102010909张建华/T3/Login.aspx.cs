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
                    Response.Redirect("t3-2.aspx");
                }
            }
        }
    }
}
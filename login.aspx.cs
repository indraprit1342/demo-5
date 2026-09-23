using System;

namespace AcademicLeave
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["Username"] != null)
                {
                    txtUsername.Text =
                        Request.Cookies["Username"].Value;
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == "Meet" &&
                txtPassword.Text == "1234")
            {
                Session["Username"] = txtUsername.Text;

                if (chkRemember.Checked)
                {
                    Response.Cookies["Username"].Value =
                        txtUsername.Text;

                    Response.Cookies["Username"].Expires =
                        DateTime.Now.AddDays(7);
                }

                Response.Redirect("Home.aspx");
            }
            else
            {
                lblMessage.Text =
                    "Invalid Username or Password";
            }
        }
    }
}


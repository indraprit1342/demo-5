using System;

namespace Practical_5
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                lblWelcome.Text =
                    "Welcome, " + Session["Username"].ToString();

                lblStatus.Text = "No leave applied yet.";
            }
        }

        protected void AcademicCalendar_SelectionChanged(
            object sender, EventArgs e)
        {
            txtLeaveDate.Text =
                AcademicCalendar.SelectedDate.ToShortDateString();

            lblDate.Text =
                "Selected Date: " +
                AcademicCalendar.SelectedDate.ToShortDateString();
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            if (txtLeaveDate.Text == "" ||
                txtReason.Text == "")
            {
                lblMessage.Text =
                    "Please select date and enter reason.";
                return;
            }

            Session["LeaveType"] = ddlLeaveType.SelectedValue;

            Session["LeaveDate"] =
                txtLeaveDate.Text;

            Session["Reason"] =
                txtReason.Text;

            Session["LeaveStatus"] =
                "Pending";

            lblMessage.Text =
                "Leave applied successfully.";

            // Display status 
            lblStatus.Text =
                "Leave Type: " +
                Session["LeaveType"] +
                "<br/>Leave Date: " +
                Session["LeaveDate"] +
                "<br/>Reason: " +
                Session["Reason"] +
                "<br/>Status: " +
                Session["LeaveStatus"];
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();

            Response.Redirect("Login.aspx");
        }
    }
}

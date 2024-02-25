using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kodelab___Quiz_Night_Assessment__.NET_Framework_
{
    public partial class Results : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadValues();
        }

        public void loadValues() {
            QuizCategorylbl.Text = Session["QuestionCategory"].ToString();
            Correctlbl.Text = Session["correct"].ToString();
            Incorrectlbl.Text = Session["incorrect"].ToString();
        }

        protected void Homebtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kodelab___Quiz_Night_Assessment__.NET_Framework_
{

    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["correct"] = 0;
            Session["incorrect"] = 0;
        }

        protected void GoTButton_Click(object sender, EventArgs e)
        {
            Session["QuestionTable"] = "GoTQuestionTable";
            Session["QuestionCategory"] = "Game of Thrones";
            Session["QuestionNumber"] = 1;
            Response.Redirect("Question.aspx");
        }

        protected void BBButton_Click(object sender, EventArgs e)
        {
            Session["QuestionTable"] = "BBQuestionTable";
            Session["QuestionCategory"] = "Breaking Bad";
            Session["QuestionNumber"] = 1;
            Response.Redirect("Question.aspx");
        }

        protected void HPButton_Click(object sender, EventArgs e)
        {
            Session["QuestionTable"] = "HPQuestionTable";
            Session["QuestionCategory"] = "Harry Potter";
            Session["QuestionNumber"] = 1;
            Response.Redirect("Question.aspx");
        }
    }
}
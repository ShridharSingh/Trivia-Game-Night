using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kodelab___Quiz_Night_Assessment__.NET_Framework_
{
    public partial class Question : System.Web.UI.Page
    {

        //SQL Connection String
        string strcon = ConfigurationManager.ConnectionStrings["QuizNightConnectionString"].ConnectionString;


        //User Answer
        public string user_answer;
        public string correct_answer;

        //checking buttons
        private bool button1Clicked, button2Clicked, button3Clicked, button4Clicked;

        //Question Number
        int total_no_of_questions;

        //Scoring
        int num_correct = 0, num_incorrect = 0;
      
        protected void Page_Load(object sender, EventArgs e)
        {
            populateFields();
            getTotalQuestions();
            loadImages();

            if (Session["QuestionTable"] == "BBQuestionTable") 
            {
                Answer4.Visible = false;
            }
            
        }

        public void populateFields()
        {

            try
            {
                String sql = "Select * from " + Session["QuestionTable"].ToString() + " where QNum = '" + Session["QuestionNumber"].ToString() + "'";
                using (SqlConnection conn = new SqlConnection(strcon))
                {

                    conn.Open();
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Label1.Text = dr.GetValue(2).ToString();
                            Label3.Text = dr.GetValue(0).ToString();
                            Answer1.Text = dr.GetValue(3).ToString();
                            Answer2.Text = dr.GetValue(4).ToString();
                            Answer3.Text = dr.GetValue(5).ToString();
                            Answer4.Text = dr.GetValue(6).ToString();
                            correct_answer = dr.GetValue(7).ToString();
                        }
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }


        public void getTotalQuestions()
        {
            try
            {
                String sql = "Select QNum from " + Session["QuestionTable"].ToString() + " where QuestionCategory = '"+ Session["QuestionCategory"].ToString() +"'";
                using (SqlConnection conn = new SqlConnection(strcon))
                {

                    conn.Open();
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            total_no_of_questions = dr.GetInt32(0);
                        }
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }

        public void loadNewQuestion() 
        {
            if (Session["QuestionNumber"].Equals(total_no_of_questions))
            {
                Response.Redirect("Results.aspx");
            }
            else {
                incrementNumbers();
                populateFields();
            }
        }

        public void incrementNumbers() {
            int numbers = int.Parse(Label3.Text);
            numbers++;
            Label3.Text = numbers.ToString();
            Session["QuestionNumber"] = numbers;
        }


        public void checkAnswer() 
        {
            if (user_answer == correct_answer)
            {
                num_correct = int.Parse(Correctlbl.Text);
                num_correct++;
                Session["correct"] = num_correct;
                Correctlbl.Text = num_correct.ToString();
            }
            else {
                num_incorrect = int.Parse(Incorrectlbl.Text);
                num_incorrect++;
                Session["incorrect"] = num_incorrect;
                Incorrectlbl.Text = num_incorrect.ToString();
            }
            loadNewQuestion();
        }

        public void loadImages() {

            if (Session["QuestionCategory"] == "Game of Thrones")
            {
                Image1.ImageUrl = "images/GoT-Logo.jpg";
            }
            else if (Session["QuestionCategory"] == "Breaking Bad")
            {
                Image1.ImageUrl = "images/BB-Logo.png";
            }
            else if (Session["QuestionCategory"] == "Harry Potter")
            {
                Image1.ImageUrl = "images/HP-Logo.png";
            }
        }

        protected void Answer1_Click(object sender, EventArgs e)
        {
            user_answer =  Answer1.Text.ToString();
            button1Clicked = true;
            checkAnswer();
       
        }

        protected void Answer2_Click(object sender, EventArgs e)
        {
            user_answer = Answer2.Text.ToString();
            button2Clicked = true;
            checkAnswer();

        }

        protected void Answer3_Click(object sender, EventArgs e)
        {
            user_answer = Answer3.Text.ToString();
            button3Clicked = true;
            checkAnswer();
        }

        protected void Answer4_Click(object sender, EventArgs e)
        {
            user_answer = Answer4.Text.ToString();
            button4Clicked = true;
            checkAnswer();

        }
    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//using statements required for EF DB access
using Template2.Models;
using System.Web.ModelBinding;

namespace Template2
{
    public partial class StudentDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            //redirect back to Students page
            Response.Redirect("~/Students.aspx");
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {

            //use EF to connect to the server
            using(DefaultConnection db = new DefaultConnection())
            {
                //use the Student model to createa new student object and 
                //save a new record
                Student newStudent = new Student();

                //add data to the new Student record
                newStudent.LastName = LastNameTextBox.Text;
                newStudent.FirstMidName = FirstNameTextBox.Text;
                newStudent.EnrollmentDate = Convert.ToDateTime(EnrollmentDateTextBox.Text);

                //use LINQ to ADO.net to add / insert my new Student into the DB
                db.Students.Add(newStudent);

                //save our changes
                db.SaveChanges();

                //redirect back to the updated Students page
                Response.Redirect("~/Students.aspx");
            }
        }
    }
}
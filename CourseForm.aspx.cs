using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourseManager
{
    public partial class CourseForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlDataSource1.Insert();
            courseId.Text = string.Empty;
            courseName.Text = string.Empty;
            textbookName.Text = string.Empty;
            duration.Text = string.Empty;
            Label1.Text = "Course Added Successfully";
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
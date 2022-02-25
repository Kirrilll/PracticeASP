using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticeASP
{
    public partial class WelcomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void endBtn_Click(object sender, EventArgs e)
        {
            string str = "TextBox: " + TextBox1.Text;
            str += "\n ListBox: " + ListBox1.Text;
            str += "\n DropDown: " + DropDownList1.SelectedValue;
            str += "\n ChekedBoxGroup: " + RadioButtonList.SelectedValue;

            Conclusion.Text = str;
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
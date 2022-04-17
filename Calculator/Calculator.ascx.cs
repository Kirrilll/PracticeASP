using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculator
{
    public partial class WebUserControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
            {
                Path = "~/scripts/jquery-1.7.2.min.js",

            });
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxValue2_TextChanged(object sender, EventArgs e)
        {

        }



        private float Increment() => float.Parse(TextBoxValue1.Text) + float.Parse(TextBoxValue2.Text);
        private float Decriment() => float.Parse(TextBoxValue1.Text) - float.Parse(TextBoxValue2.Text);
        private float Division() => float.Parse(TextBoxValue1.Text) / float.Parse(TextBoxValue2.Text);
        private float Multiply() => float.Parse(TextBoxValue1.Text) * float.Parse(TextBoxValue2.Text);

        private bool IsValid()
        {
            float value1Out;
            float value2Out;
            return RequiredFieldValidatorValue1.IsValid && RequiredFieldValidatorValue2.IsValid && float.TryParse(TextBoxValue1.Text, out value1Out) && float.TryParse(TextBoxValue2.Text, out value2Out);
        }

        protected void ButtonIncrement_Click(object sender, EventArgs e)
        {
            LabelSign.Text = "+";
        }

        protected void ButtonDecriment_Click(object sender, EventArgs e)
        {
            LabelSign.Text = "-";
        }

        protected void ButtonDivision_Click(object sender, EventArgs e)
        {
            LabelSign.Text = "/";
        }

        protected void ButtonMiltiply_Click(object sender, EventArgs e)
        {
            LabelSign.Text = "*";
        }

        protected void ButtonResult_Click(object sender, EventArgs e)
        {
            if (IsValid())
            {
                switch (LabelSign.Text)
                {
                    case "+":
                        LabelResult.Text = "= " + Increment().ToString();
                        break;
                    case "-":
                        LabelResult.Text = "= " + Decriment().ToString();
                        break;
                    case "/":
                        LabelResult.Text = "= " + Division().ToString();
                        break;
                    case "*":
                        LabelResult.Text = "= " + Multiply().ToString();
                        break;
                }
            }
        }
    }
}
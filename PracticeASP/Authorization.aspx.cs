using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticeASP
{
    public partial class Authorization : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Info.Text = "";
        }

        protected void Submit(object sender, EventArgs e)
        {
            Dictionary<string, string> dictionary = new Dictionary<string, string>();
            dictionary.Add("vasya", "123456F");
            dictionary.Add("kolya", "987654");
            dictionary.Add("ivan", "789");

            string loginStr = login.Text.ToLower();
            string passwordStr = password.Text;


            if (dictionary.ContainsKey(loginStr))
            {
                if (dictionary[loginStr] == passwordStr)
                {
                    Session.Add("login", loginStr);
                    Response.Redirect("WelcomePage.aspx");
                    return;
                }
            }
            Info.Text = "Неверный логин или пароль";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculator
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           ServiceAsmx service = new ServiceAsmx();
            GridViewCustomers.DataSource = service.GetCustomers();
            GridViewCustomers.DataBind();
        }

        protected void GridViewCustomers_SelectedIndexChanged(object sender, EventArgs e)
        {
            ServiceAsmx service = new ServiceAsmx();
            string id = GridViewCustomers.SelectedRow.Cells[1].Text;
            GridViewOrders.DataSource = service.GetOrders(int.Parse(id));
            GridViewOrders.DataBind();
        }
    }
}
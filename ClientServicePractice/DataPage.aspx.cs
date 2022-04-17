using ClientServicePractice.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientServicePractice
{
    public partial class DataPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ServiceReference.Service1Client client = new ServiceReference.Service1Client();
            GridViewCostumers.DataSource = client.GetCustomers();
            GridViewCostumers.DataBind();
        }

        protected void GridViewCostumers_SelectedIndexChanged(object sender, EventArgs e)
        {
            ServiceReference.Service1Client client = new ServiceReference.Service1Client();
            string id = GridViewCostumers.SelectedRow.Cells[1].Text;
            GridViewOrders.DataSource = client.GetOrders(int.Parse(id));
            GridViewOrders.DataBind();
        }
    }
}
using Service.Models;
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
            if(Cache["customers"] == null)
            {
                ServiceAsmx service = new ServiceAsmx();
                Cache["customers"] =  service.GetCustomers();
            }
            GridViewCustomers.DataSource = (List<Customer>)Cache["customers"];
            GridViewCustomers.DataBind();
        }

        protected void GridViewCustomers_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            string id = GridViewCustomers.SelectedRow.Cells[1].Text;

            if(Cache[id]  == null)
            {
                ServiceAsmx service = new ServiceAsmx();
                Cache[id] = service.GetOrders(int.Parse(id));
                LabelFetchInformation.Text = "Взято из БД";
            }
            else
            {
                LabelFetchInformation.Text = "Взято из кэша";
            }
            GridViewOrders.DataSource = (List<Order>)Cache[id];
            GridViewOrders.DataBind();
        }
    }
}
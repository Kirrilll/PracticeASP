using Service.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Calculator
{
    /// <summary>
    /// Сводное описание для ServiceAsmx
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Чтобы разрешить вызывать веб-службу из скрипта с помощью ASP.NET AJAX, раскомментируйте следующую строку. 
    // [System.Web.Script.Services.ScriptService]
    public class ServiceAsmx : System.Web.Services.WebService
    {
        [WebMethod]
        public List<Customer> GetCustomers()
        {
            List<Customer> customers = new List<Customer>();
            string connectionStr = System.Configuration.ConfigurationManager.ConnectionStrings["TradeCompanyDatabase"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionStr))
            {
                SqlCommand command = new SqlCommand("Select * from Customer", con);
                con.Open();
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    Customer customer = new Customer();
                    customer.Id = (int)dataReader["Id"];
                    customer.Name = dataReader["Name"].ToString();
                    customer.Surname = dataReader["Surname"].ToString();
                    customer.YearOfBirth = (int)dataReader["YearofBirth"];
                    customers.Add(customer);
                }
            }
            return customers;
        }

        [WebMethod]
        public List<Order> GetOrders(int customerId)
        {
            List<Order> orders = new List<Order>();
            string connectionStr = System.Configuration.ConfigurationManager.ConnectionStrings["TradeCompanyDatabase"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionStr))
            {
                SqlCommand command = new SqlCommand("Select * from [Order] where id_customer = @customerId", con);
                command.Parameters.Add(new SqlParameter("@customerId", customerId));
                con.Open();
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    Order order = new Order();
                    order.Id = (int)dataReader["Id"];
                    order.id_customer = (int)dataReader["id_customer"];
                    order.id_product = (int)dataReader["id_product"];
                    order.description = dataReader["description"].ToString();
                    orders.Add(order);
                }
            }
            return orders;
        }
    }
}

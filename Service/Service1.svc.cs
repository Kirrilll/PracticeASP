using Service.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data.SqlClient;

namespace Service
{
    // ПРИМЕЧАНИЕ. Команду "Переименовать" в меню "Рефакторинг" можно использовать для одновременного изменения имени класса "Service1" в коде, SVC-файле и файле конфигурации.
    // ПРИМЕЧАНИЕ. Чтобы запустить клиент проверки WCF для тестирования службы, выберите элементы Service1.svc или Service1.svc.cs в обозревателе решений и начните отладку.
    public class Service1 : IService1
    {
     
        
        public List<Customer> GetCustomers()
        {
            List<Customer> customers = new List<Customer>();
            string connectionStr = System.Configuration.ConfigurationManager.ConnectionStrings["TradeCompanyDatabase"].ConnectionString;
            using(SqlConnection con = new SqlConnection(connectionStr))
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

        public List<Product> GetProducts()
        {
            throw new NotImplementedException();
        }
    }
}

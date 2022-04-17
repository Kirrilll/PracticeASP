using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;

namespace Service.Models
{
    [DataContract]
    public class Order
    {
        [DataMember]
        public int Id
        { get; set; }

        [DataMember]
        public int id_customer
        { get; set; }

        [DataMember]
        public int id_product
        { get; set; }

        [DataMember]
        public string description 
        { get; set; }
    }
}
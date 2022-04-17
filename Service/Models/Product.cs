using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;

namespace Service.Models
{
    [DataContract]
    public class Product
    {
        [DataMember]
        public int Id
        { get; set; }

        [DataMember]
        public String Title
        { get; set; }

        [DataMember]
        public float Price
        { get; set; }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;

namespace Service.Models
{
    [DataContract]
    public class Customer
    {
        [DataMember]
        public int Id
        {get; set;}

        [DataMember]
        public String Name
        { get; set; }

        [DataMember]
        public String Surname
        { get; set; }

        [DataMember]
        public int YearOfBirth
        { get; set; }

    }
}
using PartyInvites.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PartyInvites.Entities
{
    public class Guest
    {
        public Guest() { }

        public Guest(GuestResponse guestResponce)
        {
            Name = guestResponce.Name;
            Phone = guestResponce.Phone;
            IsAttend = (bool)guestResponce.IsAttend;
            Email = guestResponce.Email;
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string Phone { get; set; }
        public bool IsAttend { get; set; }
        public string Email { get; set; }
    }
}
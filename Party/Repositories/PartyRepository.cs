using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using PartyInvites.Entities;

namespace PartyInvites
{
    public class PartyRepository: DbContext
    {
        public DbSet<Guest> Guest { get; set; }
    }
}
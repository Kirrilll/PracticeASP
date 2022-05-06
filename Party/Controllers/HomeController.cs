using PartyInvites.Entities;
using PartyInvites.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PartyInvites.Controllers
{
    public class HomeController : Controller
    {
        PartyRepository _repository = new PartyRepository();
        // GET: Home
        public ViewResult Index()
        {
            ViewBag.Greeting = DateTime.Now.Hour > 12 ? "Добрый вечер" : "Добрый день";
            return View();
        }

        [HttpGet]
        public ViewResult Form()
        {
            return View();
        }

        [HttpGet]
        public ViewResult Guests()
        {
            return View("Guests", _repository.Guest.ToList());
        }

        [HttpPost]
        public ViewResult Form(GuestResponse guest)
        {
            if (ModelState.IsValid)
            {
                var currGuest = _repository.Guest.FirstOrDefault<Guest>((g) => g.Phone.Equals(guest.Phone));
                if (currGuest == null)
                { 
                    _repository.Guest.Add(new Guest(guest)); 
                }
                else
                {
                    currGuest.Name = guest.Name;
                    currGuest.IsAttend = guest.IsAttend ?? false;
                    currGuest.Email = guest.Email;
                    _repository.Entry(currGuest).State = EntityState.Modified;
                }
              
                _repository.SaveChanges();
                return View("Feedback", guest);
            }
            else
            {
                //Обнаружена ошибка проверки достоверности
                return View();
            }
            
           

        }

    }
}
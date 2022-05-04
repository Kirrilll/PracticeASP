using PartyInvites.Entities;
using PartyInvites.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PartyInvites.Controllers
{
    public class HomeController : Controller
    {
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


        [HttpPost]
        public ViewResult Form(GuestResponse guest)
        {
            if (ModelState.IsValid)
            {
                PartyRepository repository = new PartyRepository();
                repository.Guest.Add(new Guest(guest));
                repository.SaveChanges();
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
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace PartyInvites.Models
{
    public class GuestResponse
    {
        [Required(ErrorMessage = "Пожалуйста, введите своё имя")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Пожалуйста, введите свой email")]
        [RegularExpression(".+\\@.+\\..+", ErrorMessage = "Вы ввели некорректный email")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Пожалуйста, введите телефон")]
        [RegularExpression("^\\+?[78][-\\(]?\\d{3}\\)?-?\\d{3}-?\\d{2}-?\\d{2}$", ErrorMessage = "Вы ввели некорректный номер телефона")]
        public string Phone { get; set; }
        public bool? IsAttend { get; set; }
    }
}
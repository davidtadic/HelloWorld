using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HelloWorld.Api.Models
{
    public class UserModel
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public bool Admin { get; set; }
        public Common.Enums.UserImage Image { get; set; }
        public DateTime DateCreated { get; set; }
    }
}
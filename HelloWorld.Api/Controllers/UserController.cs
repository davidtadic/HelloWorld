using HelloWorld.Data.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;

namespace HelloWorld.Api.Controllers
{
    public class UserController : BaseController
    {
        [HttpGet]
        public List<User> GetAllUsers()
        {
            List<User> users = UserManager.GetAllUsers();
            return users;
        }

        [HttpGet]
        public Category GetCategory(int id)
        {
           Category category = UserManager.GetCategory(id);
            return category;
        }

        [HttpPost]
        public void InsertNewCategory(Category model)
        {
            UserManager.InsertNewCategory(model);
        }

        [HttpDelete]
        public void DeleteCategory(int id)
        {
           UserManager.DeleteCategory(id);
        }

        [HttpPut]
        public void UpdateCategory(Category model)
        {
            UserManager.UpdateCategory(model);
        }
    }
}
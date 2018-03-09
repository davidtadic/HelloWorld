using AutoMapper;
using HelloWorld.Api.Helpers;
using HelloWorld.Api.Mailer;
using HelloWorld.Api.Models;
using HelloWorld.Api.Models.User;
using HelloWorld.Common.Exceptions;
using HelloWorld.Data.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Http;

namespace HelloWorld.Api.Controllers
{
    public class UserController : BaseController
    {
        [AllowAnonymous]
        [ValidateModel]
        [HttpPost]
        public string Login(UserLoginModel model)
        {
            User user = UserManager.Login(model.Username, model.Password);
            return CreateLoginToken(user);
        }

        [AllowAnonymous]
        //[ValidateModel]
        [HttpPost]
        public UserModel Register(UserModel model)
        {
            User user = UserManager.Register(Mapper.Map<User>(model));
            UserModel userModel = Mapper.Map<UserModel>(user);
            return userModel;
        }

        [TokenAuthorize]
        [HttpPost]
        public string UpdateUserProfile(UserModel user)
        {
            User userDb = UserManager.UpdateUserProfile(Mapper.Map<User>(user));
            return CreateLoginToken(userDb);
        }

        [TokenAuthorize]
        [HttpPost]
        public bool SendFeedback(MailModel model)
        {
            model.FirstName = Token.FirstName;
            model.LastName = Token.LastName;
            model.Email = Token.Email;
            model.Username = Token.Username;
            UserMailer mailer = new UserMailer();
            mailer.Contact(model).Send();

            return true;
        }

        [NonAction]
        private string CreateLoginToken(User user)
        {
            TokenContext userModel = Mapper.Map<TokenContext>(user);
            userModel.ExpirationDate = DateTime.UtcNow.AddDays(2);

            string secretKey = WebConfigurationManager.AppSettings["JwtSecret"];
            string token = JWT.JsonWebToken.Encode(userModel, secretKey, JWT.JwtHashAlgorithm.HS256);
            return token;
        }

        [HttpGet]
        public List<User> GetAllUsers()
        {
            List<User> users = UserManager.GetAllUsers();
            return users;
        }
    }
}
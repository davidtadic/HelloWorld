using HelloWorld.Api.Models.User;
using Mvc.Mailer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HelloWorld.Api.Mailer
{
    public class UserMailer : MailerBase
    {
        public UserMailer()
        {
            MasterName = "_Layout";
        }

        public MvcMailMessage Contact(MailModel model)
        {
            ViewBag.Message = model;
            return Populate(x =>
            {
                x.Subject = "User's feedback - Hello World";
                x.ViewName = "Contact";
                x.To.Add("david.tadic@hotmail.com");
            });
        }
    }
}
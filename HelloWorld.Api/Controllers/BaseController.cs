using HelloWorld.Api.Models;
using HelloWorld.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Http.Controllers;

namespace HelloWorld.Api.Controllers
{
    public class BaseController : ApiController
    {
        internal TokenContext Token { get; set; }

        private UserManager userManager;

        protected UserManager UserManager => userManager ?? (userManager = new UserManager());
        protected override void Initialize(HttpControllerContext controllerContext)
        {
            base.Initialize(controllerContext);
        }
    }
}
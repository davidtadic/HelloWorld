using AutoMapper;
using HelloWorld.Api.Controllers;
using HelloWorld.Api.Models;
using HelloWorld.Common.Exceptions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Http;
using System.Web.Http.Controllers;
using System.Web.Http.Filters;

namespace HelloWorld.Api.Helpers
{
    public class TokenAuthorizeAttribute : ActionFilterAttribute
    {
        public string Roles { get; set; }

        public override void OnActionExecuting(HttpActionContext actionContext)
        {
            // Skip validation if AllowAnonymous attribute is set
            if (!SkipValidation(actionContext))
            {
                // Check for authorization header
                var authorizationHeader = actionContext.Request.Headers.FirstOrDefault(h => h.Key == "Authorization");
                if (authorizationHeader.Key == null)
                {
                    throw new AuthenticationException("No Authorization header present");
                }

                // Get token from Authorization header
                string tokenString = authorizationHeader.Value.FirstOrDefault();
                if (string.IsNullOrWhiteSpace(tokenString))
                {
                    throw new AuthenticationException("Authorization header cannot be empty");
                }

                // Validate JWT token
                var secretKey = WebConfigurationManager.AppSettings["JwtSecret"];
                TokenContext tokenContext;

                try
                {
                    tokenContext = JWT.JsonWebToken.DecodeToObject<TokenContext>(tokenString, secretKey);
                }
                catch (JWT.SignatureVerificationException)
                {
                    throw new AuthenticationException("Invalid token!");
                }

                if (tokenContext == null)
                {
                    throw new AuthenticationException("Invalid token!");
                }

                if (tokenContext.ExpirationDate < DateTime.UtcNow)
                {
                    throw new AuthenticationException("Token expired! Please, login again");
                }

                //// Validate roles
                //if (Roles != null && !Roles.Split(',').ToList().Contains(tokenContext.User.Role.ToString()))
                //{
                //    throw new ForbiddenException("You do not have permission to access this resource!");
                //}

                //// Add current user to base controller
                var controller = actionContext.ControllerContext.Controller as BaseController;
                controller.Token = tokenContext;
            }

            base.OnActionExecuting(actionContext);
        }

        private bool SkipValidation(HttpActionContext actionContext)
        {
            return actionContext.ActionDescriptor.GetCustomAttributes<AllowAnonymousAttribute>().Any()
                   || actionContext.ControllerContext.ControllerDescriptor.GetCustomAttributes<AllowAnonymousAttribute>().Any();
        }
    }
}
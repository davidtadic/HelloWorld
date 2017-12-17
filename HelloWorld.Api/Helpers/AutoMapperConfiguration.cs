using AutoMapper;
using HelloWorld.Api.Models;
using HelloWorld.Data.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HelloWorld.Api.Helpers
{
    public class AutoMapperConfigurationProfile : Profile
    {
        public AutoMapperConfigurationProfile()
        {
            CreateMap<User, UserModel>().ReverseMap();

        }
    }
}
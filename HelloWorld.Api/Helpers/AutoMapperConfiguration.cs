using AutoMapper;
using HelloWorld.Api.Models;
using HelloWorld.Api.Models.Game;
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
            CreateMap<User, TokenContext>().ReverseMap();
            CreateMap<Question, QuestionModel>()
                .ForMember(dest => dest.ImageThumbnail, opt => opt.MapFrom(src => src.Image.Thumbnail))
                .ReverseMap();
            CreateMap<Practise, PractiseModel>()
                .ForMember(dest => dest.DatePlayed, opt => opt.MapFrom(src => src.DatePlayed.ToShortDateString()))
                .ReverseMap();

        }
    }
}
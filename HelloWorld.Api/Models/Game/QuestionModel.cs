using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HelloWorld.Api.Models.Game
{
    public class QuestionModel
    {
        public int Id { get; set; }
        public string QuestionName { get; set; }
        public string CorrectAnswer { get; set; }
        public string WrongAnswer1 { get; set; }
        public string WrongAnswer2 { get; set; }
        public string WrongAnswer3 { get; set; }
        public HelloWorld.Common.Enums.Category Category { get; set; }
        public string ImageThumbnail { get; set; }
        public HelloWorld.Common.Enums.QuestionLevel LevelQuestion { get; set; }
    }
}
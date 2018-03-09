using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HelloWorld.Api.Models.Game
{
    public class PractiseModel
    {
        public int Id { get; set; }
        public HelloWorld.Common.Enums.Category Category { get; set; }
        public int UserId { get; set; }
        public int Points { get; set; }
        public string DatePlayed { get; set; }
        public HelloWorld.Common.Enums.QuestionLevel Level { get; set; }
    }
}
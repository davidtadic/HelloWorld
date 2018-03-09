using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HelloWorld.Api.Models.Game
{
    public class PractiseRequestModel
    {
        public Common.Enums.Category Category { get; set; }
        public Common.Enums.QuestionLevel Level { get; set; }
    }
}
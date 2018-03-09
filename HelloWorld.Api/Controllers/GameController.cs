using AutoMapper;
using HelloWorld.Api.Helpers;
using HelloWorld.Api.Models.Game;
using HelloWorld.Common.Enums;
using HelloWorld.Data.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;

namespace HelloWorld.Api.Controllers
{
    public class GameController : BaseController
    {
        [TokenAuthorize]
        [HttpPost]
        public List<QuestionModel> GetQuestionsForPractise(PractiseRequestModel request)
        {
            List<QuestionModel> questions = new List<QuestionModel>();
            questions = Mapper.Map<List<QuestionModel>>(GameManager.GetQuestionsForPractise(request.Category, request.Level));
            return questions;
        }

        [TokenAuthorize]
        [HttpPost]
        public void InsertTrainingInfo(PractiseModel model)
        {
            model.UserId = Token.Id;
            GameManager.InsertTrainingInfo(Mapper.Map<Practise>(model));
        }

        [TokenAuthorize]
        [HttpPost]
        public List<PractiseModel> GetPractiseRecords()
        {
            return Mapper.Map<List<PractiseModel>>(GameManager.GetPractiseRecords(Token.Id));
        }
    }
}
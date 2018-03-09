using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HelloWorld.Common.Enums;
using HelloWorld.Data.Model;
using HelloWorld.Data.UnitOfWork;

namespace HelloWorld.Core.Managers
{
    public class GameManager
    {
        public List<Question> GetQuestionsForPractise(Category category, QuestionLevel level)
        {
            using (UnitOfWork uow = new UnitOfWork())
            {
                List<Question> questions = new List<Question>();
                List<int> questionIds = uow.QuestionRepository.Find(x => x.Category == category && x.LevelQuestion == level).ToList().Select(s => s.Id).ToList();

                Random random = new Random();
                IEnumerable<int> shuffledIds = questionIds.OrderBy(x => random.Next()).Take(6);

                foreach (int id in shuffledIds)
                {
                    questions.Add(uow.QuestionRepository.Find(x => x.Id == id, includeProperties: "Image").FirstOrDefault());
                }

                return questions;
            }
        }

        public void InsertTrainingInfo(Practise client)
        {
            using (UnitOfWork uow = new UnitOfWork())
            {
                Practise practiseDb = new Practise();
                practiseDb.UserId = client.UserId;
                practiseDb.Category = client.Category;
                practiseDb.Level = client.Level;
                practiseDb.Points = client.Points;
                practiseDb.DatePlayed = DateTime.UtcNow;

                uow.PractiseRepository.Insert(practiseDb);
                uow.Save();
            }
        }

        public List<Practise> GetPractiseRecords(int userId)
        {
            using (UnitOfWork uow = new UnitOfWork())
            {
                List<Practise> practiseList = uow.PractiseRepository.Find(x => x.UserId == userId).ToList();
                int take = practiseList.Count() > 7 ? 7 : practiseList.Count();
                practiseList = practiseList.Take(take).OrderByDescending(o => o.Points).ToList();
                return practiseList;
            }
        }
    }
}

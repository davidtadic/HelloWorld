using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HelloWorld.Data.Model;
using HelloWorld.Data.UnitOfWork;

namespace HelloWorld.Core
{
    public class UserManager
    {
        public List<User> GetAllUsers()
        {
            using (UnitOfWork uow = new UnitOfWork())
            {
                List<User> users = uow.UserRepository.GetAll();
                return users;
            }
        }

        public Category GetCategory(int id)
        {
            using (UnitOfWork uow = new UnitOfWork())
            {
               Category category = uow.CategoryRepository.GetById(id);
                return category;
            }
        }

        public void InsertNewCategory(Category model)
        {
            using (UnitOfWork uow = new UnitOfWork())
            {
                Category categoryDb = new Category();
                categoryDb.Name = model.Name;
                categoryDb.Description = model.Description;
                categoryDb.DateCreated = DateTime.UtcNow;

                uow.CategoryRepository.Insert(categoryDb);
                uow.Save();
            }
        }

        public void UpdateCategory(Category model)
        {
            using (UnitOfWork uow = new UnitOfWork())
            {
                Category category = uow.CategoryRepository.GetById(model.Id);
                category.Name = model.Name;
                category.Description = model.Name;

                uow.CategoryRepository.Update(category);
                uow.Save();
            }
        }

        public void DeleteCategory(int id)
        {
            using (UnitOfWork uow = new UnitOfWork())
            {
                Category category = uow.CategoryRepository.GetById(id);

                uow.CategoryRepository.Delete(category);
                uow.Save();

            }
        }


    }
}

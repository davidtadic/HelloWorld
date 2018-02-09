using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HelloWorld.Data.Model;
using HelloWorld.Data.UnitOfWork;
using HelloWorld.Common.Exceptions;

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

        public User Login(string username, string password)
        {
            using (UnitOfWork uow = new UnitOfWork())
            {
                List<User> users = uow.UserRepository.Find(u => username.ToLower().Trim() == u.Username.ToLower().Trim());

                if (users.Count == 0)
                {
                    throw new ValidationException("Wrong username or password!");
                }

                User user = users.FirstOrDefault();

                if (!PasswordHelper.ValidatePassword(password, user.Password))
                {
                    throw new ValidationException("Wrong username or password!");
                }

                return user;
            }
        }

        public User Register(User clientModel)
        {
            using (UnitOfWork uow = new UnitOfWork())
            {
                if (!string.IsNullOrEmpty(clientModel.Username) && !string.IsNullOrEmpty(clientModel.Password))
                {
                    List<User> existingUsers = uow.UserRepository.Find(u => u.Username == clientModel.Username || u.Email == clientModel.Email);
                    if (existingUsers.Any())
                    {
                        throw new ValidationException("Account is already taken!");
                    }
                }

                User userDb = new User();
                userDb.FirstName = clientModel.FirstName;
                userDb.LastName = clientModel.LastName;
                userDb.Username = clientModel.Username;
                userDb.Email = clientModel.Email;
                userDb.Password = PasswordHelper.CreateHash(clientModel.Password);
                userDb.Admin = false;
                userDb.Image= clientModel.Image;
                userDb.DateCreated = DateTime.UtcNow;

                uow.UserRepository.Insert(userDb);
                uow.Save();

                return userDb;
            }
        }

        public User UpdateUserProfile(User client)
        {
            using (UnitOfWork uow = new UnitOfWork())
            {
                User db = uow.UserRepository.Find(x => x.Username == client.Username).FirstOrDefault();
                ValidationHelper.ValidateNotNull(db);

                db.FirstName = client.FirstName;
                db.LastName = client.LastName;
                db.Email = client.Email;
                db.Password = PasswordHelper.CreateHash(client.Password);
                db.Image = client.Image;

                uow.UserRepository.Update(db);
                uow.Save();

                return db;
            }
        }
    }
}

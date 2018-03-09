using HelloWorld.Data.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using HelloWorld.Data.Repository;

namespace HelloWorld.Data.UnitOfWork
{
    public class UnitOfWork : IDisposable
    {
        #region Fields

        /// <summary>
        /// Data context
        /// </summary>
        private HelloWorldEntities context;

        private GenericRepository<Game> gameRepository;
        private GenericRepository<GameQuestions> gameQuestionsRepository;
        private GenericRepository<Image> imageRepository;
        private GenericRepository<Question> questionRepository;
        private GenericRepository<User> userRepository;
        private GenericRepository<Practise> practiseRepository;

        #endregion Fields

        #region Properties

        /// <summary>
        /// Data context
        /// </summary>
        public HelloWorldEntities DataContext
        {
            get
            {
                return context ?? (context = new HelloWorldEntities());
            }
        }

        #region Repository

        public GenericRepository<Game> GameRepository
        {
            get
            {
                return gameRepository ?? (gameRepository = new GenericRepository<Game>(DataContext));
            }
        }

        public GenericRepository<GameQuestions> GameQuestionsRepository
        {
            get
            {
                return gameQuestionsRepository ?? (gameQuestionsRepository = new GenericRepository<GameQuestions>(DataContext));
            }
        }

        public GenericRepository<Image> ImageRepository
        {
            get
            {
                return imageRepository ?? (imageRepository = new GenericRepository<Image>(DataContext));
            }
        }

        public GenericRepository<Question> QuestionRepository
        {
            get
            {
                return questionRepository ?? (questionRepository = new GenericRepository<Question>(DataContext));
            }
        }

        public GenericRepository<User> UserRepository
        {
            get
            {
                return userRepository ?? (userRepository = new GenericRepository<User>(DataContext));
            }
        }

        public GenericRepository<Practise> PractiseRepository
        {
            get
            {
                return practiseRepository ?? (practiseRepository = new GenericRepository<Practise>(DataContext));
            }
        }

        #endregion Repository

        #endregion Properties

        #region Methods

        /// <summary>
        /// Save changes for unit of work async
        /// </summary>
        public async Task SaveAsync()
        {
            context.ChangeTracker.DetectChanges();
            await context.SaveChangesAsync();
        }

        /// <summary>
        /// Save changes for unit of work
        /// </summary>
        public void Save()
        {
            context.ChangeTracker.DetectChanges();
            context.SaveChanges();
        }

        #endregion Methods

        #region IDisposable Members

        private bool disposed = false;

        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    if (context != null)
                        context.Dispose();
                }
            }
            this.disposed = true;
        }

        /// <summary>
        /// Dispose objects
        /// </summary>
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        #endregion IDisposable Members
    }
}

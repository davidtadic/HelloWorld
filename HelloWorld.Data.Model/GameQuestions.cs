//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HelloWorld.Data.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class GameQuestions
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public GameQuestions()
        {
            this.Game = new HashSet<Game>();
        }
    
        public int Id { get; set; }
        public int QuestionId1 { get; set; }
        public int QuestionId2 { get; set; }
        public int QuestionId3 { get; set; }
        public int QuestionId4 { get; set; }
        public int QuestionId5 { get; set; }
        public int QuestionId6 { get; set; }
        public System.DateTime DateCreated { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Game> Game { get; set; }
        public virtual Question Question { get; set; }
        public virtual Question Question1 { get; set; }
        public virtual Question Question2 { get; set; }
        public virtual Question Question3 { get; set; }
        public virtual Question Question4 { get; set; }
        public virtual Question Question5 { get; set; }
    }
}

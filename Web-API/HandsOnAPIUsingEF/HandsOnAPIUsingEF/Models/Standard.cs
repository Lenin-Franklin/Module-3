using System;
using System.Collections.Generic;

#nullable disable

namespace HandsOnAPIUsingEF.Models
{
    public partial class Standard
    {
        public Standard()
        {
            Students = new HashSet<Student>();
        }

        public string StandId { get; set; }
        public string StandName { get; set; }
        public string Timings { get; set; }

        public virtual ICollection<Student> Students { get; set; }
    }
}

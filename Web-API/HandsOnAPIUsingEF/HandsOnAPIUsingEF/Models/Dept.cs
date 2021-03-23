﻿using System;
using System.Collections.Generic;

#nullable disable

namespace HandsOnAPIUsingEF.Models
{
    public partial class Dept
    {
        public Dept()
        {
            Employees = new HashSet<Employee>();
        }

        public string DeptId { get; set; }
        public string DeptName { get; set; }

        public virtual ICollection<Employee> Employees { get; set; }
    }
}

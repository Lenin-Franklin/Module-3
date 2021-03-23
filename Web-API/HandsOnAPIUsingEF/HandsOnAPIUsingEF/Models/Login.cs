﻿using System;
using System.Collections.Generic;

#nullable disable

namespace HandsOnAPIUsingEF.Models
{
    public partial class Login
    {
        public int? Eid { get; set; }
        public string Uname { get; set; }
        public string Pwd { get; set; }

        public virtual Employee EidNavigation { get; set; }
    }
}

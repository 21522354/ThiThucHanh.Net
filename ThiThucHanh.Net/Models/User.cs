﻿using System;
using System.Collections.Generic;

namespace ThiThucHanh.Net.Models;

public partial class User
{
    public int UserId { get; set; }

    public string? Username { get; set; }

    public string? Password { get; set; }
}

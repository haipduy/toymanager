﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
namespace MiTTLibrary
{
    interface ICRUD
    {
        DataTable readAll();
        bool update(DataTable dataTable);
    }
}

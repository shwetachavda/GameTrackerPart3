//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GameTrackerFinal.Model
{
    using System;
    using System.Collections.Generic;

    public partial class User
    {
        public int userID { get; set; }
        public int GameID { get; set; }
        public int ID { get; set; }

        public virtual User_info User_info { get; set; }
    }
}

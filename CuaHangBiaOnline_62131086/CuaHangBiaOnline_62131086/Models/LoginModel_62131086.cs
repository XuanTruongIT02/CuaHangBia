using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace CuaHangBiaOnline_62131086.Models
{
    public class LoginModel_62131086
    {
        [Key]
        [Display(Name = "Email")]
        public string userMail { get; set; }
        [Display(Name = "Mật khẩu")]
        public string password { get; set; }
    }
}
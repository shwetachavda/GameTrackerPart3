using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;

//requird for OWIN Startup
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security.Cookies;


[assembly: OwinStartup(typeof(GameTrackerFinal.Startup))]

namespace GameTrackerFinal
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
         
        }
    }
}

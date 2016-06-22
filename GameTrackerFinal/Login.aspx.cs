using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// using statements required for EF DB access
using GameTrackerFinal.Model;
using System.Web.ModelBinding;

// required for Identity and OWIN Security
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;


namespace GameTrackerFinal
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            // create new userStore and userManager objects
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);

            // search for and create a new user object
            var user = userManager.Find(UserNameTextBox.Text, PasswordTextBox.Text);


            // if a match is found for the user
            if (user != null)
            {
                // authenticate and login our new user
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                // Sign the user
                authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = false }, userIdentity);

                // Redirect to Main Menu
                Response.Redirect("~/Game.aspx");
            }
            else
            {
                // throw an error to the AlertFlash div
                StatusLabel.Text = "Invalid Username or Password";
                AlertFlash.Visible = true;
            }
        }

        /*
        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
        */
        /*protected void SaveButton_Click(object sender, EventArgs e)
        {
            using (DefaultConnection db = new DefaultConnection())
            {
                string query = (from User_info in db.User_info
                                where User_info.userName == UserNameTextBox.Text && User_info.password == PasswordTextBox.Text
                                select User_info.userName).FirstOrDefault();
                if (query != null)
                {
                    Response.Redirect("~/Game.aspx");
                }
                else
                    Response.Write("Invalid User");

            }
        }*/
    }
}
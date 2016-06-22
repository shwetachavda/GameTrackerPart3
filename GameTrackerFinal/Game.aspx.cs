using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GameTrackerFinal.Model;
using System.Globalization;
using System.Web.ModelBinding;
namespace GameTrackerFinal
{
    public partial class Game : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                this.GetGames();
            }
        }
        /**
               * <summary>
               * This method gets the game data from the DB
               * </summary>
               * 
               * @method GetGames
               * @returns {void}
               */
        protected void GetGames()
        {
            using (GameConnection db = new GameConnection())
            {
                DateTime firstDay = DateTime
                         .Today
                         .AddDays(((int)(DateTime.Today.DayOfWeek) * -1) + 1);
                DateTime lastDay = firstDay.AddDays(6);
                var game = (from allgames in db.Game_info
                            where allgames.weeks >= firstDay && allgames.weeks <= lastDay
                            select allgames);

                WeeklyGamesGridView.DataSource = game.AsQueryable().ToList();
                WeeklyGamesGridView.DataBind();
            }
        }

        protected void WeekDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
     
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            using (GameConnection db = new GameConnection())
            {
                DateTime current = DateTime.Today;
                DateTime previousDatefirstDay = current.AddDays(-7);
                DateTime previousDatelastDay = current.AddDays(-1);
                DateTime nextDatefirstDay = current.AddDays(+7);
                DateTime nextDatelastDay = current.AddDays(+13);

                if (Calendar1.SelectedDate < current)
                {
                    
                    var game = (from allgames in db.Game_info
                                where allgames.weeks >= previousDatefirstDay && allgames.weeks <= previousDatelastDay
                                select allgames);

                    WeeklyGamesGridView.DataSource = game.AsQueryable().ToList();
                    WeeklyGamesGridView.DataBind();
                }
                if (Calendar1.SelectedDate > current)
                {
                   
                    var game = (from allgames in db.Game_info
                                where allgames.weeks >= nextDatefirstDay && allgames.weeks <= nextDatelastDay
                                select allgames);

                    WeeklyGamesGridView.DataSource = game.AsQueryable().ToList();
                    WeeklyGamesGridView.DataBind();
                }
                if (Calendar1.SelectedDate == current)
                {
                    GetGames();
                }
               
            }      
        }
        private static int WeekOfYear(DateTime date)
        {
            var day = (int)CultureInfo.CurrentCulture.Calendar.GetDayOfWeek(date);
            return CultureInfo.CurrentCulture.Calendar.GetWeekOfYear(date.AddDays(4 - (day == 0 ? 7 : day)), CalendarWeekRule.FirstFourDayWeek, DayOfWeek.Monday);
        }

        protected void WeeklyGamesGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            WeekTextBox.Text = Convert.ToString(WeekOfYear(Calendar1.SelectedDate));
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// using statements required for EF DB access
using GameTrackerFinal.Model;
using System.Web.ModelBinding;
namespace GameTrackerFinal
{
    public partial class AddGame : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((!IsPostBack) && (Request.QueryString.Count > 0))
            {
                this.GetGame();
            }
        }

        protected void GetGame()
        {
            int gameID = Convert.ToInt32(Request.QueryString["gameID"]);

            //connect to EF to DB
            using (GameConnection db = new GameConnection())
            {
                // populate a game object instance with the GameID from the URL Parameter
                Game_info updatedGame = (from Game_info in db.Game_info
                                         where Game_info.gameID == gameID
                                         select Game_info).FirstOrDefault();

                // map the game properties to the form controls
                if (updatedGame != null)
                {
                    GameTextBox.Text = updatedGame.gameType;
                    TeamName1TextBox.Text = updatedGame.team1Name;
                    TeamName2TextBox.Text = updatedGame.team2Name;
                    TeamScore1TextBox.Text = updatedGame.team1Score.ToString();
                    TeamScore2TextBox.Text = updatedGame.team2Score.ToString();
                    WeekTextBox.Text = updatedGame.weeks.ToString();
                    WinnerTextBox.Text = updatedGame.gameWinner;
                }
            }

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Game.aspx");
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            // Use EF to connect to the server
            using (GameConnection db = new GameConnection())
            {
                // use the Game model to create a new game object and
                // save a new record
                Game_info newGame = new Game_info();

                int gameID = 0;

                if (Request.QueryString.Count > 0) // our URL has a GameID in it
                {
                    // get the id from the URL
                    gameID = Convert.ToInt32(Request.QueryString["gameID"]);

                    // get the current game from EF DB
                    newGame = (from Game_info in db.Game_info
                               where Game_info.gameID == gameID
                               select Game_info).FirstOrDefault();
                }

                // add form data to the new game record
                newGame.gameType = GameTextBox.Text;
                newGame.team1Name = TeamName1TextBox.Text;
                newGame.team2Name = TeamName2TextBox.Text;
                newGame.team1Score = Convert.ToInt32(TeamScore1TextBox.Text);
                newGame.team2Score = Convert.ToInt32(TeamScore2TextBox.Text);
                newGame.weeks = Convert.ToDateTime(WeekTextBox.Text);
                newGame.gameWinner = WinnerTextBox.Text;

                // use LINQ to ADO.NET to add / insert new game into the database

                if (gameID == 0)
                {
                    db.Game_info.Add(newGame);
                }


                // save our changes - also updates and inserts
                db.SaveChanges();

                // Redirect back to the updated games page
                Response.Redirect("~/GameDetails.aspx");
            }
        }
    }
}
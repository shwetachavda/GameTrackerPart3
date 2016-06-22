using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// using statements that are required to connect to EF DB
using GameTrackerFinal.Model;
//using System.Web.ModelBinding;
using System.Linq.Dynamic;
using System.Globalization;

namespace GameTrackerFinal
{
    public partial class GameDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if loading the page for the first time, populate the game grid
            if (!IsPostBack)
            {
                Session["SortColumn"] = "gameID"; // default sort column
                Session["SortDirection"] = "ASC";
                // Get the game data
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
            // connect to EF
            using (GameConnection db = new GameConnection())
            {
                string SortString = Session["SortColumn"].ToString() + " " + Session["SortDirection"].ToString();

                // query the Games Table using EF and LINQ
                var Games = (from allGames in db.Game_info
                             select allGames);

                // bind the result to the GridView
                GamesGridView.DataSource = Games.AsQueryable().OrderBy(SortString).ToList();
                GamesGridView.DataBind();
            }
        }

        /**
         * <summary>
         * This event handler allows pagination to occur for the Students page
         * </summary>
         * 
         * @method GamessGridView_PageIndexChanging
         * @param {object} sender
         * @param {GridViewPageEventArgs} e
         * @returns {void}
         */
        protected void GamesGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            // Set the new page number
            GamesGridView.PageIndex = e.NewPageIndex;

            // refresh the grid
            this.GetGames();
        }

        protected void PageSizeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Set the new Page size
            GamesGridView.PageSize = Convert.ToInt32(PageSizeDropDownList.SelectedValue);

            // refresh the grid
            this.GetGames();
        }

        protected void GamesGridView_Sorting(object sender, GridViewSortEventArgs e)
        {
            // get the column to sorty by
            Session["SortColumn"] = e.SortExpression;

            // Refresh the Grid
            this.GetGames();

            // toggle the direction
            Session["SortDirection"] = Session["SortDirection"].ToString() == "ASC" ? "DESC" : "ASC";
        }

        protected void GamesGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (IsPostBack)
            {
                if (e.Row.RowType == DataControlRowType.Header) // if header row has been clicked
                {
                    LinkButton linkbutton = new LinkButton();

                    for (int index = 0; index < GamesGridView.Columns.Count - 1; index++)
                    {
                        if (GamesGridView.Columns[index].SortExpression == Session["SortColumn"].ToString())
                        {
                            if (Session["SortDirection"].ToString() == "ASC")
                            {
                                linkbutton.Text = " <i class='fa fa-caret-up fa-lg'></i>";
                            }
                            else
                            {
                                linkbutton.Text = " <i class='fa fa-caret-down fa-lg'></i>";
                            }

                            e.Row.Cells[index].Controls.Add(linkbutton);
                        }
                    }
                }
            }
        }

        
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Data.Entity;

namespace WebApplication3
{
    public partial class NewRecipe : System.Web.UI.Page
    {
        String recipeName;
        String[] recipeIngredients; // do you wwant to save these as arrays or just as one long string for all the ingredients
        String[] recipeInstructions;
        //RecipeEntities dbcon = new RecipeEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // add data to the dbcon
                //dbcon.Addresses.OrderBy(item => item.LastName).Load();

                // add data to the gridView
                //GridView1.DataSource = dbcon.Recipes.local;
                //GridView1.DataBind();
            }
        }

        protected void btnRecipePage_Click(object sender, EventArgs e)
        {
            Response.Redirect("RecipePage.aspx");
        }

        protected void name_TextChanged(object sender, EventArgs e)
        {
            recipeName = name.ToString(); // might just need to set in the save
            // might want to give user the chance to upload a picture too
        }

        protected void btnSave_TextChanged(object sender, EventArgs e)
        {
            if(name == null)
            {
                //nullName = "Enter a recipe name"; // figure out how to fill label with error message
            }
            else
            {
                recipeName = name.ToString();
            }

            // dbcon.Addresses.Where(item => item.LastName.StartsWith(TextBox1.Text)).Load();
            //dbcon.Addresses.Where(item => item.LastName.Trim().Equals(TextBox1.Text.Trim())).Load();
            // gridView
            //GridView1.DataSource = dbcon.Addresses.Local;
            //GridView1.DataBind();

        }

        protected void addIngredient_Click(object sender, EventArgs e)
        {

        }
    }
}

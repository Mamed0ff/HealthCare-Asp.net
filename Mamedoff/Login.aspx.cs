using System;
using System.Collections.Generic;
using Newtonsoft.Json;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mamedoff
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string username = usernameTextBox.Text;
            string password = passwordTextBox.Text;

            if (ValidateUser(username, password))
            {
                Response.Redirect("WebForm1.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Invalid username or password. Please try again.');", true);
            }
        }

        private bool ValidateUser(string username, string password)
        {
            string jsonFilePath = Server.MapPath("~/myUsers.json");
            string json = System.IO.File.ReadAllText(jsonFilePath);
            List<Users> users = JsonConvert.DeserializeObject<List<Users>>(json);

            foreach (Users user in users)
            {
                if (user.Username == username && user.Password == password)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Login successful!');", true);
                    return true;
                }
            }

            return false;
        }
    }
}
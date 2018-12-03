using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

namespace ConnectToDB
{
    public partial class WebGridView : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"data source = DESKTOP-F8MV33J\SQLEXPRESS; integrated security = true; database = Northwind");
        SqlCommand cmd = null;
        SqlDataReader rdr = null;
        string sqlsel = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewNorthwind.DataBind();
            LabelMessage.Text = "No error message";
        }

        public void ShowMyData()
        {
            try
            {
                conn.Open();

                cmd = new SqlCommand(sqlsel, conn);

                rdr = cmd.ExecuteReader();
                GridViewNorthwind.DataSource = rdr;
                GridViewNorthwind.DataBind();
            }
            catch (Exception ex)
            {
                LabelMessage.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }
        }

        protected void ButtonShow_Click(object sender, EventArgs e)
        {
            sqlsel = "select top 10 * from products";
            ShowMyData();
        }
    }
}
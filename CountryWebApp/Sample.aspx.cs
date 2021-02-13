using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CountryWebApp
{
    public partial class Sample : System.Web.UI.Page
    {
        private SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ToString());
        public void Country()
        {
            cn.Open();
            using(SqlCommand cmd=new SqlCommand("select CountryName,CountryId from Country",cn))
            {
                using(SqlDataReader dr=cmd.ExecuteReader(CommandBehavior.CloseConnection))
                {
                    DropDownCountry.DataSource = dr;
                    DropDownCountry.Items.Clear();
                    DropDownCountry.Items.Add("Please Select Country");
                    DropDownCountry.DataTextField = "CountryName";
                    DropDownCountry.DataValueField = "CountryId";
                    DropDownCountry.DataBind();
                   
                }
            }
        }
        public void State()
        {
            cn.Open();
            //Response.Write(DropDownCountry.SelectedValue);
          using (SqlCommand cmd=new SqlCommand("select StateName,stateid from Statetable where CountryId='"+DropDownCountry.SelectedValue + "'",cn))
            {
                using(SqlDataReader dr=cmd.ExecuteReader(CommandBehavior.CloseConnection))
                {
                    DropDownState.DataSource = dr;
                    DropDownState.Items.Clear();
                    DropDownState.Items.Add("Please Select State");
                    DropDownState.DataTextField = "StateName";
                    DropDownState.DataValueField = "StateId";
                    DropDownState.DataBind();
                }
            }
        }
        public void City()
        {
            cn.Open();
           using (SqlCommand cmd = new SqlCommand("select cityname,cityid from CityTable where stateId='" + DropDownState.SelectedValue + "'", cn))
            {
                using (SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection))
                {
                    DropDownCity.DataSource = dr;
                    DropDownCity.Items.Clear();
                    DropDownCity.Items.Add("Please Select City");
                    DropDownCity.DataTextField = "CityName";
                    DropDownCity.DataValueField = "CityName";
                   DropDownCity.DataBind();
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Country();
                


                
            }
           

        }

        protected void DropDownCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblCountry.Text = DropDownCountry.SelectedValue;


            State();
            
        }

        protected void DropDownState_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblstate.Text = DropDownState.SelectedValue;
            City();
           

            
        }

        protected void DropDownCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblCity.Text = DropDownCity.SelectedValue;
        }
    }
}
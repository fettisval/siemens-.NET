using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace UTCNLibrary
{
    public partial class usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // sign up button
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkMemberExist())
            {
                Response.Write("<script>alert('This user already exists.');</script>");
            }
            else
            {
                signUpNewUser();
            }
        }

        // user defined functions
        bool checkMemberExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_tbl WHERE user_id='" + TextBox15.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void signUpNewUser()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tbl (nume, dob, telefon, email, judet, oras, cod_postal, adresa, user_id, parola, account_status) values (@nume, @dob, @telefon, @email, @judet, @oras, @cod_postal, @adresa, @user_id, @parola, @account_status) ", con);

                cmd.Parameters.AddWithValue("@nume", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@telefon", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@judet", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@oras", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@cod_postal", TextBox13.Text.Trim());
                cmd.Parameters.AddWithValue("@adresa", TextBox14.Text.Trim());
                cmd.Parameters.AddWithValue("@user_id", TextBox15.Text.Trim());
                cmd.Parameters.AddWithValue("@parola", TextBox16.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Register has been succesfull.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
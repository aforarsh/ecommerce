using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecommerce
{
    public partial class UpdateProduct : System.Web.UI.Page
    {
        string str = "Data Source=DESKTOP-GNG1HEH\\SQLEXPRESS;Initial Catalog=ecommerce; Integrated Security=True;";
        int ProductId;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    if (Session["admin"] == null)
            //    {
            //        Response.Redirect("Login.aspx");
            //    }
            //}
            ShowProduct();
        }

        public void ShowProduct()
        {
            SqlConnection conn = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM tb_product1", conn);

            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            ShowProduct();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            DropDownList1.SelectedValue = "Select Category";
            ShowProduct();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            int index = e.NewEditIndex;
            GridViewRow row = (GridViewRow)GridView1.Rows[index];
            Label Product_ID = (Label)row.FindControl("Label1");
            ProductId = int.Parse(Product_ID.Text.ToString());
            SqlConnection con = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM tb_product1 WHERE Product_ID='" + Product_ID.Text + "' ", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int index = ProductId;
            GridViewRow row = (GridViewRow)GridView1.Rows[index];

            FileUpload fu = (FileUpload)row.FindControl("FileUpload1");
            if(fu.HasFile)
            {
                Label Product_ID = (Label)row.FindControl("Label1");
                TextBox Product_Name = (TextBox)row.FindControl("TextBox1");
                TextBox Product_Desc = (TextBox)row.FindControl("TextBox2");
                TextBox Product_Price = (TextBox)row.FindControl("TextBox3");
                TextBox Product_Qty = (TextBox)row.FindControl("TextBox4");
                string Product_Category = ((DropDownList)GridView1.Rows[e.RowIndex].Cells[6].FindControl("DropDownList2")).Text;

                fu.SaveAs(Server.MapPath("~/Images/") + Path.GetFileName(fu.FileName));
                String Product_Image = "Images/" + Path.GetFileName(fu.FileName);
                
                SqlConnection con = new SqlConnection(str);
                con.Open();
                SqlCommand cmd = new SqlCommand("UPDATE tb_product1 SET Product_Name=@1, Product_Desc=@2, Product_Image=@3, Product_Price=@4, Product_Qty=@5, Product_Category=@6 WHERE Product_ID=@7 ", con);
                cmd.Parameters.AddWithValue("@1", Product_Name.Text);
                cmd.Parameters.AddWithValue("@2", Product_Desc.Text);
                cmd.Parameters.AddWithValue("@3", Product_Image);
                cmd.Parameters.AddWithValue("@4", Product_Price.Text);
                cmd.Parameters.AddWithValue("@5", Product_Qty.Text);
                cmd.Parameters.AddWithValue("@6", Product_Category);
                cmd.Parameters.AddWithValue("@7", Product_ID.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.EditIndex = -1;
                Response.Write("<script>alert('Product Updated Successful');</script>");
                ShowProduct();
                DropDownList1.SelectedValue = "Select Category";  
            }
            else 
            {
                Response.Write("<script>alert('Please Select Product Image');</script>");
            }
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Category_Name = DropDownList1.SelectedValue.ToString();
            if (Category_Name == "SELECT tb_category")
            {
                ShowProduct();
            }
            else
            {
                SqlConnection con = new SqlConnection(str);
                SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM tb_product1 WHERE Product_Category='" + Category_Name + "' ", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            
        }
    }
}
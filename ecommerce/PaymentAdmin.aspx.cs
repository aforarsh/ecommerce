﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecommerce
{
    public partial class PaymentAdmin : System.Web.UI.Page
    {
        string str = "Data Source=DESKTOP-GNG1HEH\\SQLEXPRESS;Initial Catalog=ecommerce; Integrated Security=True;";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //if (Session["admin"] == null)
                //{
                //   Response.Redirect("Login.aspx");
                //}
                TextBox1.Visible = false;
                Calendar1.Visible = false;
                Button2.Visible = false;

                DataSet year = new DataSet();

                DataSet month = new DataSet();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Response.Write("<script>alert('Please Select Data')</script>");
            }
            else
            {
                SqlConnection con = new SqlConnection(str);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter("SELECT Order_ID AS Order_ID, Total_Price AS Total_Price, receipt AS receipt, Tracking_No AS Tracking_No FROM tb_Order WHERE Payment_Date='" + TextBox1.Text + "' AND Payment_Status='Not Paid'", con);
                DataSet ds = new DataSet();
                sda.Fill(ds, "tb_Order");
                if (ds.Tables[0].Rows.Count == 0)
                {
                    Response.Write("<script>alert('No Record To Display')</script>");
                }
                else
                {
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    GridView1.Columns[0].Visible = true;
                    //GridView1.Columns[2].Visible = true;
                    Button2.Visible = true;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                string Payment_ID = row.Cells[1].Text;
                RadioButton rb1 = (row.Cells[0].FindControl("RadioButton1") as RadioButton);
                RadioButton rb2 = (row.Cells[0].FindControl("RadioButton2") as RadioButton);

                string Payment_Status;
                if (rb1.Checked)
                {
                    Payment_Status = rb1.Text;
                }
                else
                {
                    Payment_Status = rb2.Text;
                }

                SqlConnection con = new SqlConnection(str);
                con.Open();
                SqlCommand cmd = new SqlCommand("UPDATE tb_Order SET Payment_Status=@a WHERE Order_ID=@b", con);
                cmd.Parameters.AddWithValue("@a", Payment_Status);
                cmd.Parameters.AddWithValue("@b", Payment_ID);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            Response.Write("<script>alert('Status Updated Successfully.')</script>");
        }

        protected void AllPayment_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("SELECT Order_ID AS Order_ID, Total_Price AS Total_Price, receipt AS receipt, Payment_Date AS Payment_Date, Payment_Status AS Payment_Status, Tracking_No AS Tracking_No FROM tb_Order", con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "tb_Order");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.Columns[0].Visible = false;
            //GridView1.Columns[2].Visible = false;
            Button2.Visible = false;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                //TextBox1.Visible = false;
                Calendar1.Visible = false;
            }
            else
            {
                TextBox1.Visible = true;
                Calendar1.Visible = true;
            }
            Button2.Visible = false;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();

            Calendar1.Visible = false;
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[3].HorizontalAlign = HorizontalAlign.Center;
            e.Row.Cells[4].HorizontalAlign = HorizontalAlign.Center;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand comm = new SqlCommand("SELECT * FROM tb_Order WHERE Order_ID= '" + int.Parse(TextBox2.Text) + "'", con);
            SqlDataReader r = comm.ExecuteReader();
            while(r.Read())
            {
                TextBox2.Text = r.GetValue(0).ToString();
                TextBox3.Text = r.GetValue(11).ToString();
            }
            con.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand comm = new SqlCommand("UPDATE tb_Order SET Tracking_No = '" + int.Parse(TextBox3.Text) + "' WHERE Order_ID= '" + int.Parse(TextBox2.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Tracking No Added Successfully.')</script>");
        }
    }
}
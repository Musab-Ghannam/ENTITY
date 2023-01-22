using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Customers
{
    public partial class customernewform : System.Web.UI.Page
    {
        detailsEntities det =new detailsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var a = from city in det.cities select city;

                DropDownList1.DataSource = a.ToList();
                DropDownList1.DataTextField = "city_name";
                DropDownList1.DataValueField = "city_id";
                DropDownList1.DataBind();




            }
            var user = (from c in det.Customers
                        join ct in det.cities on c.city_id equals ct.city_id

                        select new
                        {
                            c.customer_name,
                            c.customer_age,
                            c.email,
                            c.phone,
                            ct.city_name,
                           c.photo


                        }).ToList();
            var customerAgemin = det.Customers.Min(c => c.customer_age);
            var customerAgeavg = det.Customers.Average(c => c.customer_age);
            var customermax = det.Customers.Max(c => c.customer_age);
            var customercount = det.Customers.Count();
            GridView1.DataSource = user;
            GridView1.DataBind();

            Label7.Text = customercount.ToString();
            Label8.Text = Convert.ToInt16(customerAgeavg).ToString();
             
            Label9.Text = customermax.ToString();
            Label10.Text = customerAgemin.ToString();
            insert.Visible= false;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("/img/") + FileUpload1.FileName);
            }
            Customer cust = new Customer();
            cust.customer_name = TextBox1.Text;
            cust.customer_age = Convert.ToInt16(TextBox2.Text);
            cust.city_id = Convert.ToInt16(DropDownList1.SelectedValue);
            cust.phone = TextBox4.Text;
            cust.email = TextBox5.Text;
            cust.photo = "img/" + FileUpload1.FileName;




            det.Customers.Add(cust);
            det.SaveChanges();

           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            insert.Visible= true;
            view.Visible= false;
            //Response.Redirect("customernewform.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            insert.Visible = false;
            view.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var user = (from c in det.Customers
                        join ct in det.cities on c.city_id equals ct.city_id

                        select new
                        {
                            c.customer_name,
                            c.customer_age,
                            c.email,
                            c.phone,
                            ct.city_name,
                            c.photo


                        }).Where(c => c.customer_name.Contains(TextBox3.Text)).ToList();
            GridView1.DataSource = user;
            GridView1.DataBind();
        }
    }
}
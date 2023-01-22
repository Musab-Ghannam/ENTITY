using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Customers
{
    public partial class customers : System.Web.UI.Page
    {detailsEntities det=new detailsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack) { 
            var a=from city in det.cities select city;  

                DropDownList1.DataSource= a.ToList ();
                DropDownList1.DataTextField = "city_name";
                DropDownList1.DataValueField= "city_id";
                DropDownList1.DataBind();




            }
       

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("/img/") + FileUpload1.FileName);
            }
            Customer cust= new Customer();
            cust.customer_name = TextBox1.Text;
            cust.customer_age = Convert.ToInt16(TextBox2.Text);
            cust.city_id = Convert.ToInt16(DropDownList1.SelectedValue);
            cust.phone = TextBox4.Text;
            cust.email= TextBox5.Text;
            cust.photo = "img/"+FileUpload1.FileName;
        

           

            det.Customers.Add(cust);
            det.SaveChanges();
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
            var customerAgeSum = det.Customers.Sum(c => c.customer_age);
            var customerAgeavg = det.Customers.Average(c => c.customer_age);
            var customermax = det.Customers.Max(c => c.customer_age);
            var customercount = det.Customers.Count();
          

            Label1.Text += $" <table><tr><th>customer_name</th><th>customer_age</th><th>email</th><th>phone</th><th>city_name</th><th>photo</th></tr><tr><td>{user[0]}</td><td>{user[1]}</td><td>{user[4]}</td><td>{user[2]}</td><td>{user[3]}</td><td> <img class=\"card-img-top pict\"  src='{user[5]}' style='width:170px; height:250px'> </td></tr></table>";
            GridView1.DataSource = det.Customers.ToList();

            GridView1.DataBind();


            string table1 = "<table class='table table-striped container'> <tr><th>customerAgeSum</th><th>customerAgeavg</th><th>customermax</th><th>customercount</th><tr>";


                table1 +=
                      $"<tr><td>{customerAgeSum}</td><td>{customerAgeavg}</td><td>{customermax}</td>"
                    +
                    $"<td>{customercount}</td></tr>";




            table1 += "</table>";
            Label8.Text = table1;















            string table = "<table class='table table-striped container'> <tr><th>customer_name</th><th>customer_age</th><th>email</th><th>phone</th><th>city_name</th><th>photo</th></tr><tr>";
            foreach (var item in user)
            {
                table+=
                      $"<tr><td>{item.customer_name}</td><td>{item.customer_age}</td><td>{item.email}</td>"
                    +
                    $"<td>{item.phone}</td><td>{item.city_name}</td><td> <img class='card-img-top pict' src='{item.photo} ' style='width:170px; height:250px'></td></tr>";


            }
            table += "</table>";
            Label7.Text = table;
        }

        protected void Button2_Click(object sender, EventArgs e)
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

            string table = "<table class='table table-striped container'> <tr><th>customer_name</th><th>customer_age</th><th>email</th><th>phone</th><th>city_name</th><th>photo</th></tr><tr>";
            foreach (var item in user)
            {
                table +=
                      $"<tr><td>{item.customer_name}</td><td>{item.customer_age}</td><td>{item.email}</td>"
                    +
                    $"<td>{item.phone}</td><td>{item.city_name}</td><td> <img class='card-img-top pict' src='{item.photo} ' style='width:170px; height:250px'></td></tr>";


            }
            table += "</table>";
            Label7.Text = table;
        }
    }
}
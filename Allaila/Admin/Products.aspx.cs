﻿using Allaila.Helpers;
using System;
using System.Data;
using System.Web.UI.WebControls;

namespace Allaila.Admin
{
    public partial class Products : System.Web.UI.Page
    {
        ProductOperations obj;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.obj = new ProductOperations();
            if (!IsPostBack)
                fillData();
        }
        void fillData()
        {
            DataSet ds = obj.getProductDataSet();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string productId = e.CommandArgument.ToString();
            if (e.CommandName.Equals("cmd_delete"))
            {
                obj.deleteProduct(productId);
                fillData();
            }
            else if (e.CommandName.Equals("cmd_update"))
            {
                Response.Redirect("UpdateProduct.aspx?productId=" + productId);
            }
        }
    }
}
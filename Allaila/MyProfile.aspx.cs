﻿using Allaila.Helpers;
using System;

namespace Allaila
{
    public partial class MyProfile : System.Web.UI.Page
    {
        UserOperations userOps;
        protected void Page_Load(object sender, EventArgs e)
        {
            userOps = new UserOperations();
            if (!IsPostBack)
            {
                fillData();
            }
        }
        void fillData()
        {
            String userId = Session["userId"].ToString();
            userOps.fetchUser(userId);
            txtFirstName.Text = userOps.firstName;
            txtLastName.Text = userOps.lastName;
            txtEmail.Text = userOps.email;
            txtPhoneNo.Text = userOps.phoneNo;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String userId = Session["userId"].ToString();
            string firstName = txtFirstName.Text;
            string lastName = txtLastName.Text;
            string email = txtEmail.Text;
            string phoneNo = txtPhoneNo.Text;
            userOps.updateUser(userId, firstName, lastName, email, phoneNo, "0");
            fillData();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}
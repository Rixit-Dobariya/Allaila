﻿using Allaila.Helpers;
using System;

namespace Allaila
{
    public partial class Contact : System.Web.UI.Page
    {
        ResponseOperations obj;
        protected void Page_Load(object sender, EventArgs e)
        {
            obj = new ResponseOperations();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            obj.addResponse(txtName.Text, txtEmail.Text, txtMobile.Text, txtSubject.Text, txtMessage.Text);
            lblResponse.Text = "Record submitted successfully!";
            clearForm();
        }
        void clearForm()
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtMobile.Text = "";
            txtSubject.Text = "";
            txtMessage.Text = "";
        }
    }
}
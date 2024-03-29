﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="Allaila.MyProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <main class="bg_gray">
		
	<div class="container margin_30">
		<div class="page_header">
			<div class="breadcrumbs">
				<ul>
					<li><a href="#">Home</a></li>
					<li><a href="#">Category</a></li>
					<li>Page active</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- /page_header -->
		<div class="row justify-content-center">
			<div class="col-xl-6 col-lg-6 col-md-8">
				<div class="box_account">
					<h3>Update Profile</h3> 
					<div class="form_container">
						<div class="private box">
							<div class="row no-gutters">
								<div class="col-6 pr-1">
									<div class="form-group">
										<asp:Label ID="Label1" runat="server" Text="First name"></asp:Label>
										<asp:TextBox ID="txtFirstName" runat="server" class="form-control" placeholder="First Name*"></asp:TextBox>
										<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="registerGroup" runat="server" ControlToValidate="txtFirstName" Display="None" ErrorMessage="Please enter first name"></asp:RequiredFieldValidator>
									</div>
								</div>
								<div class="col-6 pr-1">
									<div class="form-group">
										<asp:Label ID="Label2" runat="server" Text="Last name"></asp:Label>
										<asp:TextBox ID="txtLastName" runat="server" class="form-control" placeholder="Last Name*"></asp:TextBox>
										<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="registerGroup" runat="server" ControlToValidate="txtLastName" Display="None" ErrorMessage="Please enter last name"></asp:RequiredFieldValidator>
									</div>
								</div>
								<div class="col-12">
									<div class="form-group">
										<asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
										<asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Email*"></asp:TextBox>

									</div>
								</div>
								<div class="col-12">
									<div class="form-group">
										<asp:Label ID="Label4" runat="server" Text="Phone number"></asp:Label>
										<asp:TextBox ID="txtPhoneNo" runat="server" class="form-control" placeholder="Phone number*"></asp:TextBox>
										<asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="registerGroup" runat="server" ControlToValidate="txtPhoneNo" Display="None" ErrorMessage="Please enter phone number"></asp:RequiredFieldValidator>
									</div>
								</div>
						</div>
						<hr />
						<div class="text-center">
							<asp:Button ID="Button1" runat="server" Text="Update Profile" class="btn_1 full-width" ValidationGroup="registerGroup" OnClick="Button1_Click"/>
						</div>
						<asp:Label ID="lblRegisterResponse" runat="server" Text="Label" Visible="False" ForeColor="#0000ff"></asp:Label>
						<asp:Label ID="lblRegisterError" runat="server" Text="Label" Visible="False" ForeColor="#FF3300"></asp:Label>
							<asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="registerGroup" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter proper email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="registerGroup" runat="server" ControlToValidate="txtEmail" Display="None" ErrorMessage="Please enter email address"></asp:RequiredFieldValidator>
							<asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="#FF3300" ValidationGroup="registerGroup" />
					</div>

					<!-- /form_container -->
						<center><asp:Button ID="Button2" runat="server" Text="Sign Out" class="btn_1" OnClick="Button2_Click" /></center>
				</div>
				<!-- /box_account -->
			</div>
		</div>
		<!-- /row -->
		</div>
		<!-- /container -->
	</main>
	<!--/main-->

</asp:Content>


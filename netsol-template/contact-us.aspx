﻿<%@ Page Title="" Language="C#" MasterPageFile="~/netsol-template/netsol-ecom-columns.master" AutoEventWireup="true" CodeFile="contact-us.aspx.cs" Inherits="netsol_template_contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ns_page-body-top" runat="Server">

	<style type="text/css">
<!--
td.content-body { padding: 25px 35px; } 
.page-column-left { display: none; } 
.personalization-questions p { position: absolute; top: 5px; right: 10px; } 
.content-body input { padding: 4px !important; }
.content-body input.textbox { width: 292px; margin-bottom: 2px; }
.personalization-question { margin-top: 4px; }
-->
</style>

	<h1>Contact Us</h1>
	<div style="float: left; width: 45%;">
		<p>
			We want to hear from you! Please contact us with any comments or questions at the following number or through our email form provided to the right.
		</p>
		<div style="margin-top: 20px;">
			<strong>Address:</strong><br />
			C.Claire Embroidery Co.<br />
			2269 Hill House Road<br />
			Chesterfield, Missouri 63017</div>
		<div>
			636-448-4455<br />
		</div>
	</div>
	</div>
	<div style="float: right; width: 45%;">
		<div class="contentBox" style="width: 100%;">
			<ns:form id="1" />
		</div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ns_page-body-bottom" runat="Server">
</asp:Content>


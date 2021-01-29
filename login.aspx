<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/VisitorMasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
            width: 173px;
        }
        .auto-style2 {
            width: 173px;
            height: 19px;
        }
        .auto-style3 {
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <section class="ftco-section ftco-no-pt ftco-no-pb contact-section"style="background-image: url(../dentista/images/bg_1.jpg);">
			<div class="container">
				<div class="row d-flex align-items-stretch no-gutters">
					<div class="col-md-6 p-4 p-md-5 order-md-last bg-light">
					


    <table style="width:100%; height: 125px;">
    <tr>
        <td class="auto-style1">USERNAME</td>
        <td>
            <asp:TextBox ID="txtUsername" runat="server" required></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">PASSWORD</td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" required></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style3">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="login" />
              <a href="forgotpswd.aspx">Forgot Password?</a>
           
            <br />
           
        </td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
        <tr style=" vertical-align :central initial" >
            <td class="auto-style2" style="background-color:whitesmoke">
               
                &nbsp;&nbsp;&nbsp;
               
              <a href="Registration.aspx">New Registration</a>
            </td>
        </tr>
</table>

 </div>
					<div class="col-md-6 d-flex align-items-stretch">
						<div id="map"></div>
					</div>
				</div>
			</div>
		</section>


</asp:Content>


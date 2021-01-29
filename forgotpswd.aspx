<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/VisitorMasterPage.master" AutoEventWireup="true" CodeFile="forgotpswd.aspx.cs" Inherits="Visitor_forgotpswd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section class="ftco-section ftco-no-pt ftco-no-pb contact-section"style="background-image: url(../dentista/images/bg_1.jpg);">
			<div class="container">
				<div class="row d-flex align-items-stretch no-gutters">
					<div class="col-md-6 p-4 p-md-5 order-md-last bg-light">
					


    <table style="width:100%;">
    <tr>
        <td class="auto-style1">USERNAME</td>
        <td>
            <asp:TextBox ID="txtUsername" runat="server" required></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
 
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style3">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
              
            
        </td>
        <td class="auto-style3"></td>
    </tr>
</table>

 </div>
					<div class="col-md-6 d-flex align-items-stretch">
						<div id="map"></div>
					</div>
				</div>
			</div>
		</section>
       <section class="ftco-section"style="background-image: url(../dentista/images/dept-6.jpg);">
     
			<div class="container">
				<div class="row">
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate >
                    <div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="text pt-3 text-center">
                              <h3 class="heading"><a href="#"><%#Eval("username") %></a></h3>
                                <span class="position mb-2"><a href="#"><%#Eval("password") %></a></span>
                               
							</div>
						</div>
					</div>

          </ItemTemplate>
                </asp:ListView>
        </div>
    	</div>
    </section>
  
  

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="Diseasedetails.aspx.cs" Inherits="Admin_Diseasedetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 302px;
            margin-left: 80px;
        }
        .auto-style2 {
            width: 386px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="ftco-section ftco-no-pt ftco-no-pb contact-section"style="background-image: url(../dentista/images/dept-5.jpg);" data-stellar-background-ratio="0.5">
    			<div class="container">
    				<div class="row d-flex align-items-stretch no-gutters">
    					<div class="col-md-6 p-4 p-md-5 order-md-last bg-light">
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1"><strong>ADD DISEASE DETAILS</strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>Disease Name</strong></td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtdsname" runat="server" required></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>Description</strong></td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtdescr" runat="server" required></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">
                    <br />
                    <br />
                    <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btncancel" runat="server" Text="Cancel" OnClick="btncancel_Click" />
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
                            </div>
    					<div class="col-md-6 d-flex align-items-stretch">
    						<div id="map"></div>
    					</div>
    				</div>
    			</div>
    		</section>
    <section class="ftco-section "style="background-image: url(../dentista/images/dept-5.jpg);">
    			<div class="container">
    				<div class="row">
             
                      <asp:ListView ID="ListView2" runat="server">
    
            <ItemTemplate>
    
                 <div class="col-md-4 ftco-animate fadeInUp ftco-animated">
                <div class="blog-entry">
                 
                  <div class="text bg-white p-4">
                    <h3 class="heading"style="font-weight:bold;"><a href="#"><%#Eval("dsname") %></a></h3>
                    <p class="cc-body-copy cc-body-list"><a href="#"><%#Eval("description") %></a></p>
                    <div class="d-flex align-items-center mt-4">
    	                <p class="ml-auto mb-0">
    	               
    	                </p>
                    </div>
                  </div>
                </div>
              </div>
    
            </ItemTemplate>
    
        </asp:ListView>  
               
                         </div>
           	</div>
    		</section>
</asp:Content>


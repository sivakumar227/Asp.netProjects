<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/VisitorMasterPage.master" AutoEventWireup="true" CodeFile="viewdisease.aspx.cs" Inherits="Visitor_viewdisease" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="ftco-section "style="background-image: url(../dentista/images/dept-5.jpg);">
			<div class="container">
				<div class="row">
         
                  <asp:ListView ID="ListView1" runat="server">

        <ItemTemplate>

             <div class="col-md-4 ftco-animate fadeInUp ftco-animated">
            <div class="blog-entry">
             
              <div class="text bg-white p-4">
                <h3 class="heading"><a href="#"><%#Eval("dsname") %></a></h3>
                <p class="heading"><a href="#"><%#Eval("description") %></a></p>
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


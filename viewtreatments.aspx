<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/VisitorMasterPage.master" AutoEventWireup="true" CodeFile="viewtreatments.aspx.cs" Inherits="Visitor_viewtreatments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="ftco-section "style="background-image: url(../dentista/images/dept-3.jpg);">
			<div class="container">
				<div class="row">
         
                  <asp:ListView ID="ListView1" runat="server">

        <ItemTemplate>

             <div class="col-md-4 ftco-animate fadeInUp ftco-animated">
            <div class="blog-entry">
             
              <div class="text bg-white p-4">
                <h3 class="heading"><a href="#"><%#Eval("dsname") %></a></h3>
                <p class="heading"><a href="#"><%#Eval("trtname") %></a></p>
                <p class="heading"><a href="#"><%#Eval("trttype") %></a></p>
                <p class="heading"><a href="#"><%#Eval("method") %></a></p>
                <p class="heading"><a href="#"><%#Eval("charges") %></a></p>
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


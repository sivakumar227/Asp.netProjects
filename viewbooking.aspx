<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="viewbooking.aspx.cs" Inherits="Admin_viewbooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    	<section class="ftco-section"style="background-image: url(../dentista/images/image_6.jpg);">
           <div style ="text-align :center " >
              <h5 >Enter Booking Date: </h5>
              <asp:TextBox ID="TextBox1" runat="server" placeholder="yyyy-mm-dd" ></asp:TextBox>
               <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
             </div> 
			<div class="container">
				<div class="row">
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate >
                    <div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="text pt-3 text-center">
                              <h3 class="heading"><a href="#"><%#Eval("bid") %></a></h3>
                                <span class="position mb-2"><a href="#"><%#Eval("uemail") %></a></span>
                                <span class="position mb-2"><a href="#"><%#Eval("dname") %></a></span>								
			                    <span class="position mb-2"><a href="#"><%#Eval("bdate") %></a></span>
                                <span class="position mb-2"><a href="#"><%#Eval("btime") %></a></span>
                                <span class="position mb-2"><a href="#"><%#Eval("purpose") %></a></span>
							</div>
						</div>
					</div>

          </ItemTemplate>
                </asp:ListView>
        </div>
    	</div>
    </section>
  
  
</asp:Content>


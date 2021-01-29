<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/PatientMasterPage.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="Patient_booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 89px;
        }
        .auto-style4 {
            width: 624px;
        }
        .auto-style5 {
            width: 304px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="ftco-section ftco-no-pt ftco-no-pb contact-section"style="background-image: url(../dentista/images/dept-3.jpg);">
			<div class="container">
				<div class="row d-flex align-items-stretch no-gutters">
					<div class="col-md-6 p-4 p-md-5 order-md-last bg-light">
					
    <table style="width: 62%; height: 111px;">
        <tr>
            <td class="auto-style4">User Email ID</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtemailid" runat="server" required TextMode="Email"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Doctor Name</td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="dname" DataValueField="dname"></asp:DropDownList>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [dname] FROM [doctor]"></asp:SqlDataSource>
                
            </td>
            <td class="auto-style3">
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Booking Date</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtbdate" runat="server" TextMode="Date" required></asp:TextBox>
            </td>
            <td class="auto-style3">
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Booking Time</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtbtime" runat="server" TextMode="Time" required></asp:TextBox>
            </td>
            <td class="auto-style3">
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Purpose</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtpurpose" runat="server" required></asp:TextBox>
            </td>
            <td class="auto-style3">
                <br />
            </td>
        </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>                                                               
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                       &nbsp;&nbsp;&nbsp;
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="btncancel_Click" />
           </td>
                <td>&nbsp;</td>
            </tr>
            
           
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">

                </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>

            </div>
					<div class="col-md-6 d-flex align-items-stretch">
						<div id="map"></div>
					</div>
				</div>
			</div>
		</section>

    	<section class="ftco-section">
			<div class="container">
				<div class="row">
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate >
                    <div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="text pt-3 text-center">
                              <h3 class="heading"><a href="#"><%#Eval("bid") %></a></h3>
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


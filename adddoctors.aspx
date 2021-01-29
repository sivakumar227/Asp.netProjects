<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="adddoctors.aspx.cs" Inherits="Admin_adddoctors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 265px;
    }
    .auto-style2 {
            width: 148px;
            margin-left: 80px;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section class="ftco-section ftco-no-pt ftco-no-pb contact-section" style="background-image: url(../dentista/images/image_6.jpg);">
			<div class="container">
                 <div class="img align-self-stretch" style="background-image: url(../dentista/images/image_6.jpg);">
				<div class="row d-flex align-items-stretch no-gutters">
					<div class="col-md-6 p-4 p-md-5 order-md-last bg-light">
    <table style="width:100%;">
     
        <tr>
            <td class="auto-style1">Doctor_Name</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtdname" runat="server" required></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Specialization</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtspec" runat="server" required></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style1">Consultation_StartingTime</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtctime" runat="server" TextMode="Time" required></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" Text="Cancel" OnClick="btncancel_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:GridView ID="gridviewdoctor" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="did" HeaderText="Doctor ID" />
                        <asp:BoundField DataField="dname" HeaderText="Doctor Name" />
                        <asp:BoundField DataField="spec" HeaderText="Specialization" />
                        <asp:BoundField DataField="cdate" HeaderText="Consultation Date" />
                        <asp:BoundField DataField="ctime" HeaderText="Consultation Time" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
                        </div>
					<div class="col-md-6 d-flex align-items-stretch">
						<div id="map"></div>
					</div>
				</div>
			</div>
                </div>
		</section>

      <section class="ftco-section">
			<div class="container">
				<div class="row">
         <asp:ListView ID="ListView1" runat="server">

         <ItemTemplate>
        

					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">							
							<div class="text pt-3 text-center">
                              <h3 class="heading"><a href="#"><%#Eval("did") %></a></h3>
								<span class="position mb-2"><a href="#"><%#Eval("dname") %></a></span>
                                <span class="position mb-2"><a href="#"><%#Eval("spec") %></a></span>
                               
                                <span class="position mb-2"><a href="#"><%#Eval("ctime") %></a></span>
								
							</div>
						</div>
					</div>

             </ItemTemplate>
             </asp:ListView>
				</div>
			</div>
		</section>

</asp:Content>


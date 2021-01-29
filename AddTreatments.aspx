<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="AddTreatments.aspx.cs" Inherits="Admin_AddTreatments" %>

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
       <section class="ftco-section ftco-no-pt ftco-no-pb contact-section" style="background-image: url(../dentista/images/dept-6.jpg);" data-stellar-background-ratio="0.5">
			<div class="container">
				<div class="row d-flex align-items-stretch no-gutters">
					<div class="col-md-6 p-4 p-md-5 order-md-last bg-light">
    <table style="width:100%;">
     
        <tr>
            <td class="auto-style1">Disease_Name</td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="dsname" DataValueField="dsname"></asp:DropDownList>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [dsname], [dsname] FROM [disease]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Treatment_Name</td>
            <td class="auto-style2">
                <asp:TextBox ID="txttrtname" runat="server" required></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
          <tr>
            <td class="auto-style1">Treatment_Type</td>
            <td class="auto-style2">
                <asp:TextBox ID="txttrttype" runat="server" required></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        
          <tr>
            <td class="auto-style1">Method</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtmethod" runat="server" required></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
          <tr>
            <td class="auto-style1">Charges</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtcharges" runat="server" required></asp:TextBox>
            </td>
            <td>&nbsp;</td>
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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                        <asp:BoundField DataField="trtid" HeaderText="Treatment ID" />
                        <asp:BoundField DataField="dsname" HeaderText="Disease Name" />
                        <asp:BoundField DataField="trtname" HeaderText="Treatment Name" />
                        <asp:BoundField DataField="trttype" HeaderText="Treatment Type" />
                        <asp:BoundField DataField="method" HeaderText="Method" />
                         <asp:BoundField DataField="charges" HeaderText="Charges" />
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
		</section>

      <section class="ftco-section">
			<div class="container">
				<div class="row">
         <asp:ListView ID="ListView1" runat="server">

         <ItemTemplate>
        

					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">							
							<div class="text pt-3 text-center">
                              <h3 class="heading"><a href="#"><%#Eval("trtid") %></a></h3>
								<span class="position mb-2"><a href="#"><%#Eval("dsname") %></a></span>
                                <span class="position mb-2"><a href="#"><%#Eval("trtname") %></a></span>
                               
                                <span class="position mb-2"><a href="#"><%#Eval("trttype") %></a></span>
                                <span class="position mb-2"><a href="#"><%#Eval("method") %></a></span>
								<span class="position mb-2"><a href="#"><%#Eval("charges") %></a></span>
							</div>
						</div>
					</div>

             </ItemTemplate>
             </asp:ListView>
				</div>
			</div>
		</section>

</asp:Content>


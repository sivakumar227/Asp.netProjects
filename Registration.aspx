<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/VisitorMasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 170px;
    }
        .auto-style2 {
            width: 170px;
            height: 19px;
        }
        .auto-style3 {
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="ftco-section ftco-no-pt ftco-no-pb contact-section"style="background-image: url(../dentista/images/dept-7.jpg);">
			<div class="container">
				<div class="row d-flex align-items-stretch no-gutters">
					<div class="col-md-6 p-4 p-md-5 order-md-last bg-light">
					
    
                        <br />
					
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">NAME</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" required></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegName" runat="server" ControlToValidate ="txtName" ValidationExpression="^[a-zA-Z'.\s]{1,50}" ErrorMessage="Enter a valid name"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">AGE</td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server" required></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate ="txtAge" MinimumValue ="1" MaximumValue ="100" ErrorMessage="Enter valid age" Type="Integer"></asp:RangeValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">GENDER</td>
                <td>
                    <asp:RadioButtonList ID="rbtngender" runat="server" RepeatDirection="Horizontal" required="required">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList><asp:RequiredFieldValidator Style="color:red" ControlToValidate="rbtngender" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please select gender"></asp:RequiredFieldValidator>
&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">ADDRESS</td>
                <td>
                    <asp:TextBox ID="txtAdd" runat="server" TextMode="MultiLine" pattern="[A-Z][a-z]" required></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">EMAIL/USERNAME</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" required></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">PASSWORD</td>
                <td>
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" required></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">CONFIRM PASSWORD</td>
                <td>
                    <asp:TextBox ID="txtcpwd" runat="server" TextMode="Password" required></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtcpwd" ErrorMessage="Not match "></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">PHONE NUMBER</td>
                <td>
                    <asp:TextBox ID="txtphone" runat="server" pattern="[789][0-9]{9}" min="0"  MaxLength="10" required TextMode="Phone"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
                &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btncancel" runat="server" OnClick="btncancel_Click" Text="Cancel" />
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
  </asp:Content>

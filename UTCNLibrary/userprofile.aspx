<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="UTCNLibrary.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
       });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Your profile</h4>
                           <span>Account status - </span>
                           <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Status"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Date Of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Phone</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Phone" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>State</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Alba" Value="Alba" />
                              <asp:ListItem Text="Arad" Value="Arad" />
                              <asp:ListItem Text="Arges" Value="Arges" />
                              <asp:ListItem Text="Bacau" Value="Bacau" />
                              <asp:ListItem Text="Bihor" Value="Bihor" />
                              <asp:ListItem Text="Bistrita-Nasaud" Value="Bistrita-Nasaud" />
                              <asp:ListItem Text="Botosani" Value="Botosani" />
                              <asp:ListItem Text="Brasov" Value="Brasov" />
                              <asp:ListItem Text="Braila" Value="Braila" />
                              <asp:ListItem Text="Buzau" Value="Buzau" />
                              <asp:ListItem Text="Caras-Severin" Value="Caras-Severin" />
                              <asp:ListItem Text="Calarasi" Value="Calarasi" />
                              <asp:ListItem Text="Cluj" Value="Cluj" />
                              <asp:ListItem Text="Constanta" Value="Constanta" />
                              <asp:ListItem Text="Covasna" Value="Covasna" />
                              <asp:ListItem Text="Dambovita" Value="Dambovita" />
                              <asp:ListItem Text="Dolj" Value="Dolj" />
                              <asp:ListItem Text="Galati" Value="Galati" />
                              <asp:ListItem Text="Giurgiu" Value="Giurgiu" />
                              <asp:ListItem Text="Gorj" Value="Gorj" />
                              <asp:ListItem Text="Harghita" Value="Harghita" />
                              <asp:ListItem Text="Hunedoara" Value="Hunedoara" />
                              <asp:ListItem Text="Ialomita" Value="Ialomita" />
                              <asp:ListItem Text="Iasi" Value="Iasi" />
                              <asp:ListItem Text="Ilfov" Value="Ilfov" />
                              <asp:ListItem Text="Maramures" Value="Maramures" />
                              <asp:ListItem Text="Mehedinti" Value="Mehedinti" />
                              <asp:ListItem Text="Mures" Value="Mures" />
                              <asp:ListItem Text="Neamt" Value="Neamt" />
                              <asp:ListItem Text="Olt" Value="Olt" />
                              <asp:ListItem Text="Prahova" Value="Prahova" />
                              <asp:ListItem Text="Satu Mare" Value="Satu Mare" />
                              <asp:ListItem Text="Salaj" Value="Salaj" />
                              <asp:ListItem Text="Sibiu" Value="Sibiu" />
                              <asp:ListItem Text="Suceava" Value="Suceava" />
                              <asp:ListItem Text="Teleorman" Value="Teleorman" />
                              <asp:ListItem Text="Timis" Value="Timis" />
                              <asp:ListItem Text="Tulcea" Value="Tulcea" />
                              <asp:ListItem Text="Vaslui" Value="Vaslui" />
                              <asp:ListItem Text="Valcea" Value="Valcea" />
                              <asp:ListItem Text="Vrancea" Value="Vrancea" />
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Postal Code</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Postal Code" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info">Date Log in</span>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Username</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Username" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Old Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Old Password" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>New Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                           </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/books1.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Your Books</h4>
                           <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Your books info"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound"></asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="UTCNLibrary.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
      <img src="imgs/hb.jpg" class="img-fluid"/>
   </section>
   <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2>Our Features</h2>
                  <p><b> Primary Features </b></p>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
                  <img width="150px" src="imgs/digital-inv.png"/>
                  <h4>Digital Book Inventory</h4>
                  <p class="text-justify text-center" style="font-weight: 600">  Before coming in our location check the invetory availability to save time.</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150px" src="imgs/search-online.png"/>
                  <h4>Search Books</h4>
                  <p class="text-justify text-center" style="font-weight: 600">  Wonder if we got your favourite book? You can look it up now!</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150px" src="imgs/defaulters-list.png"/>
                  <h4>Defaulters List</h4>
                  <p class="text-justify text-center" style="font-weight: 600">  Bring back the books in time if you don't want to end up on the Defaulters list</p>
               </center>
            </div>
         </div>
      </div>
   </section>
   <section>
      <img src="imgs/hb2.jpg" class="img-fluid"/>
   </section>
   <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2>Our Process</h2>
                  <p><b>We have a Simple 3 Step Process</b></p>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
                  <img width="150px" src="imgs/sign-up.png" />
                  <h4>Sign Up</h4>
                  <p class="text-justify text-center" style="font-weight: 600">  First step is to create an account to keep track of your books.</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150px" src="imgs/search-online.png"/>
                  <h4>Search Books</h4>
                  <p class="text-justify text-center" style="font-weight: 600">  The second step is to search for the book or the books you want.</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150px" src="imgs/library.png"/>
                  <h4>Visit Us</h4>
                  <p class="text-justify text-center" style="font-weight: 600">  The last step is to paid us a visit and pick up your favourite books.</p>
               </center>
            </div>
         </div>
      </div>
   </section>
</asp:Content>

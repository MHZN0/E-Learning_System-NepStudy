<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="NepStudy.Pages.Admin.EditCourse" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Contact Us - NepStudy</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            padding-top: 70px;
        }
        .form-container {
            max-width: 600px;
            margin: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm fixed-top">
        <div class="container">
            <a class="navbar-brand fw-bold text-primary" href="#">NepStudy</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto me-3">
                    <li class="nav-item"><a class="nav-link" href="Landing.aspx">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="ContactUs.aspx">Contact Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="AboutUs.aspx">About</a></li>
                </ul>
                <a href="Login.aspx"  class="btn btn-outline-primary me-2">Login</a>
                <a href="Register.aspx"  class="btn btn-primary">Sign Up</a>
            </div>
        </div>
    </nav>

        <div class="container form-container mt-5">
            <h2>Contact Us</h2>
            <p>Have questions? We'd love to hear from you. Fill out the form below and we'll get back to you shortly.</p>

            <asp:Label ID="lblMessage" runat="server" CssClass="text-success mb-3"></asp:Label>

            <div class="mb-3">
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Placeholder="Your Name" />
            </div>
            <div class="mb-3">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Placeholder="Your Email" TextMode="Email" />
            </div>
            <div class="mb-3">
                <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" Placeholder="Subject" />
            </div>
            <div class="mb-3">
                <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" Placeholder="Your Message"></asp:TextBox>
            </div>
            <asp:Button ID="btnSend" runat="server" Text="Send Message" CssClass="btn btn-primary" OnClick="btnSend_Click" />
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </form>
</body>
</html>
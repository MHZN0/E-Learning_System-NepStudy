<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseList.aspx.cs" Inherits="NepStudy.Pages.Users.CourseList" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Course List - NepStudy</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
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
                    <li class="nav-item"><a class="nav-link" href="Index.aspx">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="ContactUs.aspx">Contact Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="AboutUs.aspx">About</a></li>
                </ul>
                <a href="Login.aspx"  class="btn btn-outline-primary me-2">Login</a>
                <a href="Register.aspx"  class="btn btn-primary">Sign Up</a>
            </div>
        </div>
    </nav>


        <div class="container mt-5 pt-5">
            <h2 class="mb-4">Available Courses</h2>

            <asp:Repeater ID="rptCourses" runat="server" OnItemCommand="rptCourses_ItemCommand">
                <ItemTemplate>
                    <div class="card mb-3 shadow-sm">
                        <div class="card-body">
                            <h5 class="card-title"><%# Eval("Title") %></h5>
                            <p class="card-text"><%# Eval("Description") %></p>
                            <p class="card-text"><small class="text-muted">Instructor: <%# Eval("Instructor") %></small></p>
                            <asp:Button ID="btnView" runat="server" Text="View Details" CommandName="View" CommandArgument='<%# Eval("CourseId") %>' CssClass="btn btn-primary" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </form>
</body>
</html>

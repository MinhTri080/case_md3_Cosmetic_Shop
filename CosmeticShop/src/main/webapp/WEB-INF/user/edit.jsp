<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <title>Form Validation | Skote - Responsive Bootstrap 4 Admin Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description">
    <meta content="Themesbrand" name="author">
    <!-- App favicon -->
    <link rel="shortcut icon" href="assets\images\favicon.ico">

    <!-- Bootstrap Css -->
    <link href="assets\css\bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css">
    <!-- Icons Css -->
    <link href="assets\css\icons.min.css" rel="stylesheet" type="text/css">
    <!-- App Css-->
    <link href="assets\css\app.min.css" id="app-style" rel="stylesheet" type="text/css">

</head>

<body data-sidebar="dark">

<!-- Begin page -->
<div id="layout-wrapper">

    <jsp:include page="/WEB-INF/layout/header.jsp"></jsp:include>

    <!-- ========== Left Sidebar Start ========== -->
    <jsp:include page="/WEB-INF/layout/lefttable.jsp"></jsp:include>
    <!-- Left Sidebar End -->

    <!-- ============================================================== -->
    <!-- Start right Content here -->
    <!-- ============================================================== -->
    <div class="main-content">

        <div class="page-content">
            <div class="container-fluid">

                <!-- start page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box d-flex align-items-center justify-content-between">
                            <h4 class="mb-0 font-size-18">Edit</h4>

                        </div>
                    </div>
                </div>
                <!-- end page title -->

                <div class="row">
                    <div class="col-xl-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Edit</h4>
                                <form class="needs-validation"  method="post" >
                                    <c:if test="${user != null}">
                                        <input type="hidden" name="id" value="${id}" />
                                    </c:if>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="username">User Name</label>
                                                <input type="text" class="form-control" id="username" name="username" value="${username}">
                                                <div class="valid-feedback">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="password">PassWord</label>
                                                <input type="password" class="form-control" id="password" name="password" value="${password}">
                                                <div class="valid-feedback">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="name">You Name</label>
                                                <input type="text" class="form-control" id="name" name="name" value="${name}">
                                                <div class="invalid-feedback">
                                                    Please provide a valid name.
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="phone">Phone</label>
                                                <input type="number" class="form-control" id="phone" name="phone" value="${phone}">
                                                <div class="invalid-feedback">
                                                    Please provide a valid phone.
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="email">Email</label>
                                                <input type="text" class="form-control" id="email" name="email"  value="${email}"  >
                                                <div class="invalid-feedback">
                                                    Please provide a valid email.
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Role</label>
                                                <select class="form-control" name="role">
                                                    <c:forEach var="role" items="${applicationScope.listRole}">
                                                        <option value="${role.getId()}">${role.getRole()}</option>
                                                    </c:forEach>
                                                </select>
<%--                                                <input type="number" class="form-control" id="role" name="role" value="${role}" >--%>
                                                <div class="invalid-feedback">
                                                    Please provide a valid role.
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <div class="custom-control custom-checkbox">
                                                    <%--                                                    <input type="checkbox" class="custom-control-input" id="invalidCheck" >--%>
                                                    <%--                                                    <label class="custom-control-label" for="invalidCheck">Agree to terms and conditions</label>--%>
                                                    <%--                                                    <div class="invalid-feedback">--%>
                                                    <%--                                                        You must agree before submitting.--%>
                                                    <%--                                                    </div>--%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn btn-primary" type="submit" value="save">Edit</button>
                                    <div>
                                        ${errors}
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- end card -->
                    </div> <!-- end col -->

                    <div class="col-xl-6">
                        <div class="card">

                        </div>
                        <!-- end card -->
                    </div> <!-- end col -->
                </div>
                <!-- end row -->
                <div class="row">
                    <div class="col-xl-6">
                        <div class="card">

                        </div>
                    </div> <!-- end col -->

                    <div class="col-xl-6">
                        <div class="card">

                        </div>
                    </div> <!-- end col -->
                </div> <!-- end row -->

            </div> <!-- container-fluid -->
        </div>
        <!-- End Page-content -->


        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6">
                        <script>document.write(new Date().getFullYear())</script> © Skote.
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <!-- end main content-->

</div>

<!-- JAVASCRIPT -->
<script src="assets\libs\jquery\jquery.min.js"></script>
<script src="assets\libs\bootstrap\js\bootstrap.bundle.min.js"></script>
<script src="assets\libs\metismenu\metisMenu.min.js"></script>
<script src="assets\libs\simplebar\simplebar.min.js"></script>
<script src="assets\libs\node-waves\waves.min.js"></script>

<script src="assets\libs\parsleyjs\parsley.min.js"></script>

<script src="assets\js\pages\form-validation.init.js"></script>

<script src="assets\js\app.js"></script>

</body>
</html>

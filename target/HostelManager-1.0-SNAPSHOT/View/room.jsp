<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>MoonHostel</title>
        <link rel="icon" type="image/png" href="../assets/img/logo.png" sizes="16x16">
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet" />
    </head>

    <body class="sb-nav-fixed jumbotron">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.jsp">MoonHostel
                <img src="../assets/img/logo.png" class="rounded-circle"  alt="logo"width="40" height="36">
            </a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Profile</a></li>
                        <li><a class="dropdown-item" href="#!">Settings</a></li>

                        <li>
                            <hr class="dropdown-divider" />
                        </li>
                        <li><a class="dropdown-item" href="#!">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">

                            <a class="nav-link" href="index.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-palette"></i></div>
                                Home
                            </a>
                            <a class="nav-link collapsed" href="room.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-house"></i></div>
                                Room                                
                            </a>
                            <a class="nav-link collapsed" href="service.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-cubes"></i></div>
                                Service                                
                            </a>
                            <a class="nav-link" href="signup.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-add"></i></div>
                                New Account
                            </a>                    
                            <div class="sb-sidenav-menu-heading">About</div>
                            <a class="nav-link" href="#">
                                <div class="sb-nav-link-icon"><i class="fas fa-map"></i></div>
                                Maps
                            </a>
                            <a class="nav-link" href="#">
                                <div class="sb-nav-link-icon"><i class="fas fa-address-card"></i></div>
                                Contact
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        MoonHostel
                        <img src="../assets/img/logo.png" class="rounded-circle"  alt="regisster"width="40" height="36">
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <h1 class="mt-4 col-md-4"><i class="fa fa-house"></i> Room Manager</h1>
                <table>
                    <div class="card mb-4">
                        <div class="card-header">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>Hostel Manager                              
                            </div>
                            <div class="row " style="float:right; display: flex">
                                <a href="addNewHostel.jsp">
                                    <button type="button"  class="btn btn-success m-2"><i class="fa fa-bank"></i> Add Hostel</button>
                                </a>
                            </div>
                            <div class="row " style="float:right; display: flex">
                                <a href="#">
                                    <button type="button"  class="btn btn-danger m-2"><i class="fa fa-remove"></i>Delete Hostel</button>
                                </a>
                            </div> 

                        </div>
                    </div>
                </table>

                <main class="container-fluid">

                    <div class="room container-fluid px-4">                        

                        <ul class=" col-12 nav nav-tabs mb-4">
                            <li class="nav-item">
                                <a class="nav-link active" href="#District9" role="tab" data-toggle="tab">District 9</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#District1" role="tab" data-toggle="tab">District 1</a>
                            </li>
                        </ul>

                        <div class="breadcrumb mb-4 " style="margin-left: 90%">
                            <div class="row">
                                <a href="addNewRoom.jsp">
                                    <button type="button"  class="btn btn-success"><i class="fa fa-add"></i> Add Room</button>
                                </a>
                            </div>                             
                            <!-- comment -->
                        </div>
                        <div class="tab-content ">
                            <div role="tabpanel" class=" tab-pane fade show active" id="District9" >
                                <div class="card-body">
                                    <table id="datatablesSimple">
                                        <thead>
                                            <tr>
                                                <th>Room</th>
                                                <th>Name</th>
<<<<<<< HEAD
                                                <th>Email</th>                                                                                                
                                                <th>Start Date</th>
=======
                                                <th>Phone</th>                                                                                                
                                                <th>Start date</th>
>>>>>>> 1500ba7ce6cfbf43419f8729ff4e00e3c6f82d0f
                                                <th>Price</th>
                                                <th>Status</th>
                                                <th>Function</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>Room</th>
                                                <th>Name</th>
<<<<<<< HEAD
                                                <th>Email</th>                                                                                                
                                                <th>Start Date</th>
=======
                                                <th>Phone</th>                                                                                                
                                                <th>Start date</th>
>>>>>>> 1500ba7ce6cfbf43419f8729ff4e00e3c6f82d0f
                                                <th>Price</th>
                                                <th>Status</th>
                                                <th>Function</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <tr>                                                
                                                <td>1</td>
                                                <td>Nguyễn Nhựt Minh</td>
                                                <td>0382694825</td>
                                                <td>08/06/2022</td>
                                                <td>2,300,000 VND</td>
                                                <td class="text-success">Active</td>
                                                <td>                                                    
                                                    <a href="viewCus.jsp">
                                                        <button class="btn btn-warning" title="View"><i class="fa fa-eye"></i></button>
                                                    </a>
                                                    <button class="btn btn-primary" title="Edit"><i class="fa fa-edit"></i></button>
                                                    <button class="btn btn-danger" title="Remove"><i class="fa fa-remove"></i></button>                                                    
                                                </td>
                                            </tr>
<<<<<<< HEAD
                                            
=======
                                            <tr>
                                                <td>2</td>
                                                <td>Phan Minh Trí</td>
                                                <td>0987500668</td>
                                                <td>20/12/2021</td>
                                                <td>2,300,000 VND</td>
                                                <td class="text-success">Active</td>
                                                <td>                                                    
                                                    <button class="btn btn-warning" title="View"><i class="fa fa-eye"></i></button>
                                                    <button class="btn btn-primary" title="Edit"><i class="fa fa-edit"></i></button>
                                                    <button class="btn btn-danger" title="Remove"><i class="fa fa-remove"></i></button>                                                    
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>2,300,000 VND</td>
                                                <td class="text-danger">No Active</td>
                                                <td>   
                                                    <a href="AddNewCustomer.jsp">
                                                        <button class="btn btn-warning"><i class="fa fa-add"></i>Add Customer</button>
                                                    </a>                                               
                                                </td>
                                            </tr>
>>>>>>> 1500ba7ce6cfbf43419f8729ff4e00e3c6f82d0f

                                        </tbody>
                                    </table>
                                </div>

                            </div>
                            <div role="tabpanel" class="tab-pane fade show " id="District1" >
                                <div class="card-body">
                                    <table id="datatablesSimple1">
                                        <thead>
                                            <tr>
                                                <th>Room</th>
                                                <th>Name</th>
                                                <th>Phone</th>                                                                                                
                                                <th>Start date</th>
                                                <th>Price</th>
                                                <th>Status</th>
                                                <th>Function</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>Room</th>
                                                <th>Name</th>
                                                <th>Phone</th>                                                                                                
                                                <th>Start date</th>
                                                <th>Price</th>
                                                <th>Status</th>
                                                <th>Function</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Trần Quang Hùng</td>
                                                <td>0987123456</td>
                                                <td>20/10/2020</td>
                                                <td>2,500,000 VND</td>
                                                <td class="text-success">Active</td>
                                                <td>                                                    
                                                    <button class="btn btn-warning" title="View"><i class="fa fa-eye"></i></button>
                                                    <button class="btn btn-primary" title="Edit"><i class="fa fa-edit"></i></button>
                                                    <button class="btn btn-danger" title="Remove"><i class="fa fa-remove"></i></button>                                                    
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Hồ Bảo Anh</td>
                                                <td>0123456789</td>
                                                <td>20/01/2021</td>
                                                <td>2,500,000 VND</td>
                                                <td class="text-success">Active</td>
                                                <td> 
                                                    <button class="btn btn-warning" title="View"><i class="fa fa-eye"></i></button>
                                                    <button class="btn btn-primary" title="Edit"><i class="fa fa-edit"></i></button>
                                                    <button class="btn btn-danger" title="Remove"><i class="fa fa-remove"></i></button>                                                    
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>2,300,000 VND</td>
                                                <td class="text-danger">No Active</td>
                                                <td>   
                                                    <a href="AddNewCustomer.jsp">
                                                        <button class="btn btn-warning"><i class="fa fa-add"></i>Add Customer</button>
                                                    </a>                                               
                                                </td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>


                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto jumbotron">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted ">Copyright &copy; by MoonHostel</div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="${pageContext.request.contextPath}../js/scripts.js"></script>
        <script src="${pageContext.request.contextPath}/js/datatables-simple-demo.js"></script>
        <script src="${pageContext.request.contextPath}/assets/demo/chart-area-demo.js"></script>
        <script src="${pageContext.request.contextPath}/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>    
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>

    </body>

</html>
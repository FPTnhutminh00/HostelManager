
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>MoonHostel</title>
        <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/img/logo.png" sizes="16x16">
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />

        <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

    </head>

    <body class="sb-nav-fixed jumbotron">

        <%@include file="/View/layout/header.jsp" %>

        <div id="layoutSidenav_content">

            <form action="${pageContext.request.contextPath}/MainController" method="POST">
                <div class="card mb-4">
                    <div class="card-header">
                        <div class="card-header">
                            <h2 class="text-info"><i class="fa fa-plus"></i> Thêm Khách</h2>       

                        </div>
                        <div class="card-header">
                            <h4 style="padding-left: 20px;"><i class="fa fa-home"></i> ${Hostel}</h4>                              
                        </div>
                        <div class="card-header">
                            <h4 style="padding-left: 20px;"><i class="fa fa-person-shelter"></i> Phòng 1</h4>                              
                        </div>
                        <div class="mt-3 text-center" style="float:right; display: flex">
                            <a href="${pageContext.request.contextPath}/MainController?action=RoomPage">
                                <button class="btn btn-warning" type="button" id="cancelButton"><i class="fa fa-mail-reply"></i> Trở Lại</button>
                            </a>
                            <button class="btn btn-success" type="submit" name="action" id="sumbitButton" value="AddCustomer"><i class="fa fa-check"></i> Lưu</button>
                        </div>                      
                    </div>
                </div>


                <main class="container-fluid">

                    <div class="room container-fluid px-4">                        

                        <ul class=" col-12 nav nav-tabs mb-4">
                            <li class="nav-item">
                                <a class="nav-link active" href="#cusInfor" role="tab" data-toggle="tab">Thông Tin Khách Thuê</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#service" role="tab" data-toggle="tab">Dịch Vụ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#member" role="tab" data-toggle="tab">Thành Viên</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#contract" role="tab" data-toggle="tab">Hợp Đồng</a>
                            </li>
                        </ul>

                        <div class="tab-content ">
                            <div role="tabpanel" class=" tab-pane fade show active" id="cusInfor" >
                                <div class="card px-5 py-5">
                                    <div class="form-group row mt-2">
                                        <label  class="col-sm-2 col-form-label">Tên</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" placeholder="Enter your name" name="fullname">
                                        </div>
                                    </div>
                                    <div class="form-group row mt-2">
                                        <label  class="col-sm-2 col-form-label">Giới Tính</label>
                                        <div class="col-sm-10">
                                            <input type="radio" name="gender" id="sex"  value="Nam"/>Nam
                                            <input type="radio" name="gender" value="Nữ"/> Nữ
                                        </div>
                                    </div>
                                    <div class="form-group row mt-2">
                                        <label  class="col-sm-2 col-form-label">Ngày Sinh</label>
                                        <div class="col-sm-10">
                                            <input type="date" class="form-control" placeholder="Enter your DOB" name="dob">
                                        </div>
                                    </div>
                                    <div class="form-group row mt-2">
                                        <label  class="col-sm-2 col-form-label">CMND/CCCD</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" placeholder="Enter your CMND/CCCD" name="customerID">
                                        </div>
                                    </div>
                                    <div class="form-group row mt-2">
                                        <label  class="col-sm-2 col-form-label">Số Điện Thoại</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" placeholder="Enter your phone" name="phone">
                                        </div>
                                    </div>
                                    <div class="form-group row mt-2">
                                        <label  class="col-sm-2 col-form-label">Địa Chỉ</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" placeholder="Enter your address" name="address">
                                        </div>
                                    </div>


                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade show " id="service" >
                                <div class="card px-3 py-3">
                                    <table id="datatablesSimple">
                                        <thead>
                                            <tr>
                                                <th>Chọn</th>
                                                <th>Tên dịch vụ</th>
                                                <th>Loại dịch vụ</th>
                                                <th>Ngày cập nhật</th> 
                                                <th>Địa điểm</th>
                                                <th>Giá</th>                                     

                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>Chọn</th>
                                                <th>Tên dịch vụ</th>
                                                <th>Loại dịch vụ</th>
                                                <th>Ngày cập nhật</th> 
                                                <th>Địa điểm</th>
                                                <th>Giá</th>                                     

                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <c:forEach items="${ServiceDetailList}" var="SD">   
                                                <tr>
                                                    <td style="text-align: center"><input type="checkbox" name="chooseDetail" value="${SD.detailID}" /></td>
                                                    <td>${SD.detailname}</td>
                                                    <c:forEach items="${ServiceTypeList}" var="ST">   
                                                        <c:if test="${ST.serviceID == SD.serviceID}">
                                                            <td>${ST.service_name}</td>
                                                        </c:if>                                                
                                                    </c:forEach>

                                                    <td><fmt:formatDate pattern="dd-MM-yyyy" value="${SD.updated_date}"/></td>

                                                    <c:forEach items="${HostelList}" var="H">   
                                                        <c:if test="${H.hostelID == SD.hostelID}">
                                                            <td>${H.hostelname}</td>
                                                        </c:if>                                                
                                                    </c:forEach>

                                                    <td><input type="text" name="" class="money form-control" value="<fmt:formatNumber type="number" maxFractionDigits="0" value="${SD.unit_price}"/>" disabled="disable" style="width: 100%"/></td>                                     

                                                </tr>
                                            </c:forEach>

                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div role="tabpanel" class="tab-pane fade show " id="member" >
                                <div class="card px-3 py-3">
                                    <table  class="table table-striped table-bordered "  >
                                        <thead>
                                            <tr>
                                                <th style=" text-align: center">Tên</th>
                                                <th style=" text-align: center">Ngày Sinh</th>
                                                <th style=" text-align: center">Giới Tính</th>
                                                <th style=" text-align: center">CMND/CCCD</th>
                                                <th style=" text-align: center">Địa Chỉ</th>
                                                <th style=" text-align: center">Số Điện Thoại</th>
                                                <th style=""></th>
                                            </tr>
                                        </thead>
                                        <tbody id="tblSample">
                                            <tr>
                                                <td><input type="text" name="name" style="width: 100% ;text-align: center"></td>
                                                <td><input type="date" name="date"></td>
                                                <td style="text-align: center">
                                                    <input type="radio" name="gender" />Nam
                                                    <input type="radio" name="gender" checked /> Nữ
                                                </td>
                                                <td><input type="text" name="cmnd" style=" text-align: center"></td>
                                                <td><input type="text" name="address" style="width: 100%; text-align: center"></td>
                                                <td><input type="text" name="phone" style="width: 100%; text-align: center"></td>
                                                <td><button onclick="deleterow('tblSample')" class="btn btn-danger delete-row"><i class="fa fa-minus-circle"></i></button></td>
                                            </tr>
                                            <tr>
                                                <td><input type="text" name="name" style="width: 100% ;text-align: center"></td>
                                                <td><input type="date" name="date"></td>
                                                <td style="text-align: center">
                                                    <input type="radio" name="radio" id="sex"  />Nam
                                                    <input type="radio" name="radio" id="sex" checked /> Nữ
                                                </td>
                                                <td><input type="text" name="cmnd" style=" text-align: center"></td>
                                                <td><input type="text" name="address" style="width: 100%; text-align: center"></td>
                                                <td><input type="text" name="phone" style="width: 100%; text-align: center"></td>
                                                <td><button onclick="deleterow('tblSample')" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div>
                                        <div style="float:right">
                                            <button onclick="addRow('tblSample')" type="button" class="btn btn-success pull-right add-row"><i class="fa fa-plus-circle"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div role="tabpanel" class="tab-pane fade show " id="contract" >
                                <div class="card px-3 py-3">
                                    <div class="form-group row mt-2">
                                        
                                    </div>
                                    <div class="row mt-2">
                                        <div class="form-group row col-md-6 mt-2">
                                            <label  class="col-sm-4 col-form-label">Ngày Bắt Đầu</label>
                                            <div class="col col-sm-8">
                                                <input type="date" class="form-control" name="signed-date">
                                            </div>
                                        </div>
                                        <div class="form-group row col-md-6 mt-2">
                                            <label  class="col-sm-4 col-form-label">Ngày Hết Hạn</label>
                                            <div class="col-sm-8">
                                                <input type="date" class="form-control" name="due-date">
                                            </div>
                                        </div>
                                        <div class="form-group row col-md-8 mt-2">
                                            <label  class="col-sm-4 col-form-label"></label>
                                            <div class="col col-sm-8">
                                                <input name="contract"type="file" accept=".jpg, .png" multiple/>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </div>

                        </div>

                    </div>
                </main>
            </form>
            <footer class="py-4 bg-light mt-auto jumbotron">
                <div class="container-fluid px-4">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted ">Copyright &copy; by MoonHostel</div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="${pageContext.request.contextPath}/js/scripts.js"></script>
    <script src="${pageContext.request.contextPath}/js/datatables-simple-demo.js"></script>
    <script src="${pageContext.request.contextPath}/assets/demo/chart-area-demo.js"></script>
    <script src="${pageContext.request.contextPath}/assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>    
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <script type="text/javascript">

                                                function deleterow(tblId)
                                                {

                                                    var table = document.getElementById(tblId);
                                                    var row = table.getElementsByTagName('tr');
                                                    if (row.length > '1') {
                                                        row[row.length - 1].outerHTML = '';
                                                    }
                                                    else{
                                                        window.alert('Cần ít nhất 1 thành viên hoặc chọn xóa phòng');
                                                    }
                                                }

                                                function addRow(myTable) {
                                                    var table = document.getElementById(myTable);
                                                    var row = table.getElementsByTagName('tr');
                                                    if (row.length < '4') {
                                                        var row = row[row.length - 1].outerHTML;
                                                        table.innerHTML = table.innerHTML + row;
                                                        for (i = 0; i < row.length; i++) {
                                                            row[i].innerHTML = '';
                                                        }

                                                    } else {
                                                        window.alert('Phòng tối đa 4 người');
                                                    }


                                                }
    </script>
    <!--<script>
        const reader = new FileReader();

// Lắng nghe trạng thái đăng tải tệp
        fileUpload.addEventListener("change", (event) => {
            // Lấy thông tin tập tin được đăng tải
            const files = event.target.files;

            // Đọc thông tin tập tin đã được đăng tải
            reader.readAsDataURL(files[0])

            // Lắng nghe quá trình đọc tập tin hoàn thành
            reader.addEventListener("load", (event) => {
                // Lấy chuỗi Binary thông tin hình ảnh
                const img = event.target.result;

                // Thực hiện hành động gì đó, có thể append chuỗi giá trị này vào thẻ IMG
                console.log(img) // data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEASABIAA........
            })
        })
    </script>-->

</body>

</html>

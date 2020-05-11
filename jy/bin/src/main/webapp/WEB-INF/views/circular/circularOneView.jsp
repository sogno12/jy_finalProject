<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="main-wrapper">
	<jsp:include page="../common/navigator.jsp"/>
	
	
		<!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">


            <!-- ======***** SUJIN ******======= -->

            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Circular</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Circular</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->

           


            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-3">
                        <div class="card">
                            <div class="card-body text-center">
                                <button type="button" class="btn btn-outline-info text-left" data-toggle="modal" data-target="#Modal1" style="margin: 5px 10px;">회람열람자</button>
                                <button type="button" class="btn btn-outline-info text-left" data-toggle="modal" data-target="#Modal2" style="margin: 5px 10px;">회람미열람자</button>
                                

                                <!-- Modal1 -->
                                <div class="modal fade" id="Modal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true ">
                                    <div class="modal-dialog" role="document ">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">회람열람자</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true ">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="card">
                                                    <div class="table-responsive">
                                                        <table id="CircularModal1" class="table text-center">
                                                        <thead>
                                                            <tr>
                                                            <th scope="col">#</th>
                                                            <th scope="col">조회자</th>
                                                            <th scope="col">부서</th>
                                                            <th scope="col">조회일시</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        	<c:forEach var="cr" items="${cirReadingList}">
	                                                        	<tr>
		                                                            <th scope="row">1</th>
		                                                            <td>${cr.name}</td>
		                                                            <td>${cr.deName}</td>
		                                                            <td><fmt:formatDate value="${cr.date}" pattern="MM/dd HH:mm"/></td>
	                                                            </tr>
                                                        	</c:forEach>
                                                        </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                
                                <!-- Modal2 -->
                                <div class="modal fade" id="Modal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true ">
                                    <div class="modal-dialog" role="document ">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">회람미열람자</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true ">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="card">
                                                    <div class="table-responsive">
                                                        <table id="CircularModal2" class="table text-center">
                                                        <thead>
                                                            <tr>
                                                            <th scope="col">#</th>
                                                            <th scope="col">조회자</th>
                                                            <th scope="col">부서</th>
                                                            <th scope="col">조회일시</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
	                                                            <th scope="row">1</th>
	                                                            <td>Mark</td>
	                                                            <td>행정부</td>
	                                                            <td>미열람</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">2</th>
                                                                <td>Ted</td>
                                                                <td>기획부</td>
                                                                <td>미열람</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">3</th>
                                                                <td>Fred</td>
                                                                <td>인사부</td>
                                                                <td>미열람</td>
                                                            </tr>
                                                            
                                                        </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            
                            
                            </div>
                        </div>
                    </div>
                </div>
            


                
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <form class="form-horizontal">
                                <div class="card-body">
                                    <h4 class="card-title">회람</h4>

                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">회람분류</label>
                                        <div class="col-sm-6">
                                            <input type="text" class="form-control" id="fname" value="${cirOneInfo.type}" readonly>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">회람대상</label>
                                        <div class="col-sm-6">
                                            <input type="text" class="form-control" id="fname" value="${cirOneInfo.deName eq '' || cirOneInfo.deName eq null ? '전사원' : cirOneInfo.deName }" readonly>
                                        </div>
                                    </div>
                                        
                                    
                                    <label class="text-right col-md-3 m-t-15" style="display: inline-block;">회람 기간</label>
                                    <div class="input-group col-md-3" style="display: inline-block;">
                                        <input type="text" class="form-control" value="<fmt:formatDate value='${cirOneInfo.beginDate}' pattern='yyy-MM-dd'/>" 
                                        	 style="width: 120px; display: inline-block;" readonly>
                                        <div class="input-group-append" style="display: inline-block;">
                                            <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                        </div>
                                    </div>
                                    ~
                                    <div class="input-group col-md-3" style="display: inline-block;">
                                        <input type="text" class="form-control" value="<fmt:formatDate value='${cirOneInfo.endDate}' pattern='yyyy-MM-dd'/>" 
                                        	style="width: 120px; display: inline-block;" readonly>
                                        <div class="input-group-append" style="display: inline-block;">
                                            <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                        </div>
                                    </div>

                                    <hr>
                                    
                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">제목</label>
                                        <div class="col-sm-6">
                                            <input type="text" class="form-control" id="fname" value="${cirOneInfo.title}" style="background: #fff" readonly>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label">내용</label>
                                        <div class="col-sm-6">
                                            <textarea class="form-control" style="min-height: 200px; background: #fff;" readonly>${cirOneInfo.content}</textarea>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-3 text-right control-label">공유파일</label>
                                        <div class="col-md-6">
                                            <div class="custom-file">
                                                <a class="btn btn-outline-warning" href="#" download="#">download.file</a>
                                                
                                                
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="border-top">
                                    <div class="card-body text-right">
                                        <button type="button" class="btn btn-info" onclick="location.href = '${ pageContext.servletContext.contextPath }/listView.cir'">Check</button>
                                        
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            


        
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <jsp:include page="../common/footer.jsp"/>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
     <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="${ pageContext.servletContext.contextPath }/resources/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="${ pageContext.servletContext.contextPath }/resources/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="${ pageContext.servletContext.contextPath }/resources/js/custom.min.js"></script>
    <!-- This Page JS -->
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/js/pages/mask/mask.init.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/select2/dist/js/select2.full.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/select2/dist/js/select2.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/jquery-asColor/dist/jquery-asColor.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/jquery-asGradient/dist/jquery-asGradient.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/jquery-asColorPicker/dist/jquery-asColorPicker.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/jquery-minicolors/jquery.minicolors.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/quill/dist/quill.min.js"></script>

    <!-- Page (+sujin)-->
    <script src="${ pageContext.servletContext.contextPath }/resources//assets/extra-libs/multicheck/datatable-checkbox-init.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources//assets/extra-libs/multicheck/jquery.multicheck.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources//assets/extra-libs/DataTables/datatables.min.js"></script>
    
    
    <script>
        //***********************************//
        // For select 2
        //***********************************//
        
        /*datwpicker*/
        jQuery('.mydatepicker').datepicker();
        jQuery('.datepicker-autoclose').datepicker({
            autoclose: true,
            todayHighlight: true
        });
        var quill = new Quill('#editor', {
            theme: 'snow'
        });

        /****************************************
        *       Basic Table                   *
        ****************************************/
        $('#CircularModal1').DataTable({
            "lengthMenu": [[5, 10, 15, -1], [5, 10, 15, "All"]]
        });
        $('#CircularModal2').DataTable({
            "lengthMenu": [[5, 10, 15, -1], [5, 10, 15, "All"]]
        });


    </script>

    
	
</div>

</body>
</html>
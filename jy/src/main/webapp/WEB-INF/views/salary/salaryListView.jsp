<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div id="main-wrapper">
		
		<jsp:include page="../common/navigator.jsp"/>
		
		<div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">급여 관리</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="${ pageContext.servletContext.contextPath }/WEB-INF/views/main.jsp">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Salary</li>
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
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
				
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title"></h5>
                                	 <div class="table-responsive">
	                                    <table id="zero_config" class="table table-hover">
	                                        <thead>
	                                            <tr>
	                                            	<th>#</th>
	                                            	<th>사번</th>
	                                                <th>이름</th>
	                                                <th>부서</th>
	                                                <th>직급</th>
	                                                <th>급여</th>
	                                                <th>지급 날짜</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody>
	                                        	<c:forEach items="${ list }" var="sa">
		                                            <tr>
	                                        			<!-- <td><input type="hidden" value="${ sa.salaryNo }"></td> -->
	                                        			<td>${ sa.salaryNo }</td>
		                                            	<td>${ sa.empNo }</td>
		                                                <td>${ sa.memberName }</td>
		                                                <td>${ sa.departmentName }</td>
		                                                <td>${ sa.positionName }</td>
		                                                <td>${ sa.sum }</td>
		                                                <td>${ sa.payDate }</td>
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
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
	            <jsp:include page="../common/footer.jsp"/>
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            
        
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- this page js -->
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/extra-libs/multicheck/datatable-checkbox-init.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/extra-libs/multicheck/jquery.multicheck.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/extra-libs/DataTables/datatables.min.js"></script>
    <script>
        /****************************************
         *       Basic Table                   *
         ****************************************/
        $(document).ready(function() {

            var table = $('#zero_config').DataTable({order: [[6, 'desc'], [3, 'desc']]});
             
            $('#zero_config tbody').on('click', 'tr', function () {
                var data = table.row( this ).data();
                // console.log(data[0].val);
                location.href="select.sa?salaryNo=" + data[0];
            });
        });
    </script>
</body>
</html>
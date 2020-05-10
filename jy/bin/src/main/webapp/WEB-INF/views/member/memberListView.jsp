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
		<!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        	<div class="page-wrapper">
	            <!-- ============================================================== -->
	            <!-- Bread crumb and right sidebar toggle -->
	            <!-- ============================================================== -->
	            <div class="page-breadcrumb">
	                <div class="row">
	                    <div class="col-12 d-flex no-block align-items-center">
	                        <h4 class="page-title">직원 정보</h4>
	                        <div class="ml-auto text-right">
	                            <nav aria-label="breadcrumb">
	                                <ol class="breadcrumb">
	                                    <li class="breadcrumb-item"><a href="main.do">Home</a></li>
	                                    <li class="breadcrumb-item active" aria-current="page">List</li>
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
	                                    <table id="zero_config" class="table table-striped table-bordered">
	                                        <thead>
	                                            <tr>
	                                                <th>사번</th>
	                                                <th>이름</th>
	                                                <th>부서</th>
	                                                <th>직급</th>
	                                                <th>연락처</th>
	                                                <th>입사일</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody>
	                                        	<c:forEach items="${ list }" var="m">
		                                            <tr>
		                                                <td>${ m.empNo }</td>
		                                                <td>${ m.memberName }</td>
		                                                <td>${ m.departmentName }</td>
		                                                <td>${ m.positionName }</td>
		                                                <td>${ m.phone }</td>
		                                                <td>${ m.joinDate }</td>
		                                            </tr>
		                                        </c:forEach>
	                                        </tbody>
	                                    </table>
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
            	</div>
	            <!-- ============================================================== -->
	            <!-- End Container fluid  -->
	            <!-- ============================================================== -->
	         <jsp:include page="../common/footer.jsp"/>
        </div>
	</div>
	
	<!-- this page js -->
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/extra-libs/multicheck/datatable-checkbox-init.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/extra-libs/multicheck/jquery.multicheck.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/extra-libs/DataTables/datatables.min.js"></script>
    <script>
        /****************************************
         *       Basic Table                   *
         ****************************************/
        $('#zero_config').DataTable();

        $("#zero_config>tbody>tr>td").click(function(){
			location.href="select.me?empNo=" + $(this).parent().children().eq(0).text();
		});
    </script>
    
</body>
</html>
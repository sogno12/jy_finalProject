<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	th { width:45% }
</style>
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
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
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
                                    <table class="table table-bordered success">
                                        <thead>
                                            <tr>
                                                <th>사번</th>
                                                <td>${ sa.empNo }</td>
                                            </tr>
                                            <tr>
                                                <th class="info">이름</th>
                                                <td>${ sa.memberName }</td>
                                            </tr>
                                            <tr>
                                                <th class="info">부서</th>
                                                <td>${ sa.departmentName }</td>
                                            </tr>
                                            <tr>
                                                <th class="info">직급</th>
                                                <td>${ sa.positionName }</td>
                                            </tr>
                                            <tr>
                                                <th class="info">진급 날짜</th>
                                                <td>${ sa.promotionDate }</td>
                                            </tr>
                                            <tr>
                                                <th class="info">호봉 등급</th>
                                                <td>${ sa.grade }</td>
                                            </tr>
                                            <tr>
                                                <th class="info">기본 급여</th>
                                                <td>${ sa.stepSum }</td>
                                            </tr>
                                            <tr>
                                                <th class="info">직책금</th>
                                                <td>${ sa.positionSum }</td>
                                            </tr>
                                            <tr>
                                                <th class="info">실 지급액</th>
                                                <td><b>${ sa.sum }</b></td>
                                            </tr>
                                            <tr>
                                                <th class="info">지급 날짜</th>
                                                <c:choose>
	                                        		<c:when test="${ !empty sa.payDate }">
			                                                <td>${ sa.payDate }</td>
	                                        		</c:when>
	                                        		<c:otherwise>
			                                                <td></td>
	                                        		</c:otherwise>
	                                        	</c:choose>
                                            </tr>
                                        </thead>
                        
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
</body>
</html>
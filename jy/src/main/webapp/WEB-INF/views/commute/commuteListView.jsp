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
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">근태 관리</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="main.do">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Commute</li>
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
	                                    <table id="commuteTable" class="table table-hover">
	                                        <thead>
	                                            <tr>
	                                            	<th>사번</th>
	                                            	<th>부서</th>
	                                                <th>이름</th>
	                                                <th>날짜</th>
	                                                <th>출근 시간</th>
	                                                <th>퇴근 시간</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody>
	                                        	<c:forEach items="${ list }" var="co">
		                                            <tr>
		                                            	<td>${ co.empNo }</td>
		                                            	<td>${ co.departmentName }</td>
		                                                <td>${ co.memberName }</td>
		                                                <td>${ co.commuteDate }</td>
		                                                <c:choose>
		                                                	<c:when test="${ co.tardy eq 'N' }">		                                                
				                                                <td><fmt:formatDate value="${co.attendTime}" type="time"></fmt:formatDate></td>
		                                                	</c:when>
		                                                	<c:otherwise>
		                                                		<td style="color:red;"><fmt:formatDate value="${co.attendTime}" type="time"></fmt:formatDate></td>
		                                                	</c:otherwise>
		                                                </c:choose>
			                                            <td><fmt:formatDate value="${co.quittingTime}" type="time"></fmt:formatDate></td>
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
    <!-- this page js -->
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/extra-libs/multicheck/datatable-checkbox-init.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/extra-libs/multicheck/jquery.multicheck.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/extra-libs/DataTables/datatables.min.js"></script>
    <script>
        /****************************************
         *       Basic Table                   *
         ****************************************/
        $('#commuteTable').DataTable({
        	"order": [[3, 'desc'], [4, 'desc']] // asc 또는 desc
         });
    </script>
</body>
</html>
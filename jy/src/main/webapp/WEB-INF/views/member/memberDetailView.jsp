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
                                    <li class="breadcrumb-item"><a href="${ pageContext.servletContext.contextPath }/WEB-INF/views/main.jsp">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Info</li>
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
                            <form class="form-horizontal" action="updateForm.me" method="post">
                                <div class="card-body">
                                    <h5 class="card-title" style="margin-bottom: 20px;"></h5>
                                    <div class="form-group row">
                                        <label class="col-md-3 m-t-15 text-right">사번</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" style="background: #e9ecef;" name="empNo" value="${ m.empNo }">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-3 m-t-15 text-right">이름</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" style="background: #e9ecef;" name="memberName" value="${ m.memberName }">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-3 m-t-15 text-right">주민등록번호</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" style="background: #e9ecef;" name="rrn" value="${ m.rrn }">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-3 m-t-15 text-right">주소</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" style="background: #e9ecef;" name="address" value="${ m.address }">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-3 m-t-15 text-right">연락처</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" style="background: #e9ecef;" name="phone" value="${ m.phone }">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-3 m-t-15 text-right">이메일</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" style="background: #e9ecef;" name="email" value="${ m.email }">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-3 m-t-15 text-right">부서</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" style="background: #e9ecef;" name="departmentName" value="${ m.departmentName }">
                                            <input type="hidden" name="departmentNo" value="${ m.departmentNo }">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-3 m-t-15 text-right">내선번호</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" style="background: #e9ecef;" name="extension" value="${ m.extension }">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-3 m-t-15 text-right">직급</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" style="background: #e9ecef;" name="positionName" value="${ m.positionName }">
                                            <input type="hidden" name="positionNo" value="${ m.positionNo }">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-3 m-t-15 text-right">입사</label>
                                        <div class="col-md-3">
                                            <div class="input-group">
                                                <input type="text" class="form-control" style="background: #e9ecef;" name="joinDate" value="${ m.joinDate }">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-3 m-t-15 text-right">진급</label>
                                        <div class="col-md-3">
                                            <div class="input-group">
                                                <input type="text" class="form-control" style="background: #e9ecef;" name="promotionDate" value="${ m.promotionDate }">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="border-top">
                                    <div class="card-body">
                                        <button type="submit" class="btn btn-info">수정하기</button>
                                    </div>
                                </div>
                            </form>
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

</body>
</html>
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
		
		
		<!-- Page wrapper  -->
	    <!-- ============================================================== -->
	    <div class="page-wrapper">
	        <!-- ============================================================== -->
	        <!-- Bread crumb and right sidebar toggle -->
	        <!-- ============================================================== -->
	         <div class="page-breadcrumb">
	            <div class="row">
	                <div class="col-12 d-flex no-block align-items-center">
	                    <nav aria-label="breadcrumb">
	                        <ol class="breadcrumb">
	                            <li class="breadcrumb-item"><a href="main.do">Home</a></li>
	                            <li class="breadcrumb-item active" aria-current="page">List</li>
	                        </ol>
	                    </nav>
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
                <!-- Sales Cards  -->
                <!-- ============================================================== -->

                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title m-b-0">내 정보</h5>
                            </div>
                            <table class="table" >

                                  <tbody>
                                    <tr>
                                      <th scope="row" style="padding-left: 100px;">이름</th>
                                      <td style="padding-left: 100px;" >${loginUser.memberName}</td>
                                    
                                    </tr>
                                    <tr>
                                      <th scope="row" style="padding-left: 100px;">부서</th>
                                      <td style="padding-left: 100px;">${loginUser.departmentName }</td>
                                     
                                    </tr>
                                    <tr>
                                        <th scope="row" style="padding-left: 100px;">내선번호</th>
                                        <td style="padding-left: 100px;">${loginUser.extension }</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" style="padding-left: 100px;">입사일</th>
                                        <td style="padding-left: 100px;">${loginUser.joinDate }</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" style="padding-left: 100px;">휴대폰</th>
                                        <td style="padding-left: 100px;">${loginUser.phone }</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" style="padding-left: 100px;">이메일</th>
                                        <td style="padding-left: 100px;">${loginUser.email }</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" style="padding-left: 100px;" >주민등록번호</th>
                                        <td style="padding-left: 100px;">${loginUser.rrn.substring(0,6)} - ******</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" style="padding-left: 100px;">주소</th>
                                        <td style="padding-left: 100px;">${loginUser.address }</td>
                                    </tr>
                                    
                                  </tbody>
                            </table>
                        </div>
                
	        </div>
	        </div>
	        </div>
	        <!-- ============================================================== -->
	        <!-- End Container fluid  -->
	        <!-- ============================================================== -->
	    
		
		
		<jsp:include page="../common/footer.jsp"/>
		</div>
	</div>
</body>
</html>
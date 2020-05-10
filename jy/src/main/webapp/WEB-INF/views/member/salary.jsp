<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	 .clock {
	    top: 120%;
	    left: 30%;
	    transform: translateX(-50%) translateY(-50%);
	    color: black;
	    font-size: 20px;
	    font-family: Orbitron;
	    letter-spacing: 7px;
	    float:right;
	
	}
</style>
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
	            <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title m-b-0">급여 정보</h5>
                            </div>
                            <table class="table" >

                                  <tbody>
                                    <tr>
                                      <th scope="row" style="padding-left: 100px;">이름</th>
                                      <td style="padding-left: 100px;">이요한</td>
                                    
                                    </tr>
                                    <tr>
                                      <th scope="row" style="padding-left: 100px;">부서</th>
                                      <td style="padding-left: 100px;">인사과</td>
                                     
                                    </tr>
                                    <tr>
                                        <th scope="row" style="padding-left: 100px;">직급</th>
                                        <td style="padding-left: 100px;">과장</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" style="padding-left: 100px;">호봉</th>
                                        <td style="padding-left: 100px;">4호봉</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" style="padding-left: 100px;">급여</th>
                                        <td style="padding-left: 100px;">5,000,000원</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" style="padding-left: 100px;">성과금</th>
                                        <td style="padding-left: 100px;">2,000,000원</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" style="padding-left: 100px;" >최종금액</th>
                                        <td style="padding-left: 100px;">7,000,000원</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" style="padding-left: 100px;">지급 받은 날짜</th>
                                        <td style="padding-left: 100px;">02/24/2020</td>
                                    </tr>
                                  </tbody>
                            </table>
                        </div>
                        </div>
                        </div>
                
                <!-- ============================================================== -->
                <!-- Sales Cards  -->
                <!-- ============================================================== -->

               
	        </div>
	        <!-- ============================================================== -->
	        <!-- End Container fluid  -->
	        <!-- ============================================================== -->
	    
		
		
		<jsp:include page="../common/footer.jsp"/>
		</div>
	</div>
	
</body>
</html>
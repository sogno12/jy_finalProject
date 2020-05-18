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
	         <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#home" role="tab"><span class="hidden-sm-up"></span> <span class="hidden-xs-down">연차</span></a> </li>
                                <li class="nav-item"> <a class="nav-link" id="leaveList" data-toggle="tab" href="#profile" role="tab"><span class="hidden-sm-up"></span> <span class="hidden-xs-down">사용한 연차</span></a> </li>
                                
                            </ul>
                            <!-- Tab panes -->
                            <div class="tab-content tabcontent-border">
                                <div class="tab-pane active" id="home" role="tabpanel">
                                    <div class="p-20">
                                        <p>
                                            <div class="card-body">
                                                <h5 class="card-title m-b-0">나의 연차</h5>
                                            </div>
                                            <table class="table" >
                
                                                  <tbody>
                                                    <tr>
                                                      <th scope="row" style="padding-left: 100px;">이름</th>
                                                      <td style="padding-left: 100px;">${lv.name }</td>
                                                    
                                                    </tr>
                                                    <tr>
                                                      <th scope="row" style="padding-left: 100px;">부서</th>
                                                      <td style="padding-left: 100px;">${lv.department }</td>
                                                     
                                                    </tr>
                                                     <tr>
                                                        <th scope="row" style="padding-left: 100px;">년도</th>
                                                        <td style="padding-left: 100px;">${lv.leaveYear }</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row" style="padding-left: 100px;">지급된 연차</th>
                                                        <td style="padding-left: 100px;">${lv.givenDay }&nbsp;일</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row" style="padding-left: 100px;">남은 연차</th>
                                                        <td style="padding-left: 100px;">${lv.leftDay }&nbsp;일</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row" style="padding-left: 100px;">연차신청</th>
                                                        <td style="padding-left: 100px;"><a href="form.app" class="badge badge-primary" >연차 신청</button></td>
                                                    </tr>
                                                   
                                                  </tbody>
                                            </table>
                                        </p>
                                        
                                    </div>
                                </div>
                                <div class="tab-pane  p-20" id="profile" role="tabpanel">
                                	
                                    <div class="p-20" style="padding-top: 0px;padding-left: 0px;padding-bottom: 0px;padding-right: 0px;">
                 
                                        <p>
                                       <div class="card-body">
                                            <h5 class="card-title m-b-0" style="width:100px;">사용한 연차</h5>
                                        </div>
                                  
                                        <table class="table">
                                                <tr >
                                                <strong>
                                                    <th style="padding: 10px 0px 0px 50px;  width:150px;">사용한 연차기간</th>
                                                    <th style="padding: 10px 0px 0px 60px;">사용한 연차(일수)</th>
                                                    <th style="padding: 10px 200px 0px 0px;">사유</th>
                                                    <th style="padding: 10px 0px 0px 0px;">결재 날짜</th>
                                                </strong>
                                                </tr>                                     
                                            </table>
                                            <div style="height:100%;overflow:auto;">
                                             <table class="table">               
                                             <c:forEach items="${ llist }" var="l">
                                                <tr>
                                                    <td >${l.beginDate } ~ ${l.endDate }</td>
                                                    <td style="padding-right: 100px;">${l.days }일</td>
                                                    <td style="padding-right: 300px;">${l.content }</td>
                                                    <td style="padding-left: 0px;">${l.date }</td>                                                
                                                </tr>
                                                </c:forEach>
                                            </table>
                                            </div>                                                       
                                        </p>
                                    </div>
                                </div>
                                
                            </div>
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
	
	<script>
	
	</script>

</body>
</html>
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
                                                        <td style="padding-left: 100px;"><button class="badge badge-primary">연차 신청</button></td>
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
                                            <h5 class="card-title m-b-0" >사용한 연차</h5>
                                        </div>
                                        <table class="table" >
            
                                            <tbody>
                                                <tr >
                                                <strong>
                                                    <th style="padding-left: 100px;">사용한 연차기간</th>
                                                    <th style="padding-right: 100px;">사용한 연차(일수)</th>
                                                    <th style="padding-right: 300px;">사유</th>
                                                    <th>결재 날짜</th>
                                                </strong>
                                                </tr>
                                             
                                             <c:forEach items="${ llist }" var="l">
                                                <tr>
                                                    <td style="padding-left: 100px;">${l.beginDate } ~ ${l.endDate }</td>
                                                    <td style="padding-right: 100px;">${l.days }일</td>
                                                    <td style="padding-right: 300px;">${l.content }</td>
                                                    <td>${l.date }</td>
                                                 
                                                </tr>
                                                </c:forEach>
                                               
                                            </tbody>
                                            </table>
                                            
                                 <ul style="margin-left: 35%;" class="pagination">
                                   <c:choose>
                					<c:when test="${ pi.currentPage eq 1 }">
                                                <li class="paginate_button page-item previous disabled" id="zero_config_previous"><a href="#" aria-controls="zero_config" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
                                  	</c:when>
                					<c:otherwise>
                                                <li class="paginate_button page-item previous disabled" id="zero_config_previous"><a href="leave.lv?currentPage=${ pi.currentPage-1 }" aria-controls="zero_config" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
                                         </c:otherwise>
                                   </c:choose>
                                   
                                    <c:forEach begin="${ pi.startPage }" end="${ pi.endPage }" var="p"> 
                                 
                                    <c:choose>
                    				<c:when test="${ pi.currentPage ne p }">
                                                <li class="paginate_button page-item active"><a href="leave.lv?currentPage=${ p }" aria-controls="zero_config" data-dt-idx="1" tabindex="0" class="page-link">${ p }</a></li>
                                    	</c:when>
                    				<c:otherwise>
                                                <li class="paginate_button page-item "><a href="" aria-controls="zero_config" data-dt-idx="3" tabindex="0" class="page-link">${ p }</a></li>
                                    </c:otherwise>
                                    </c:choose>
                                    
                                    </c:forEach>
                                    
                                    <c:choose>
                                       	<c:when test="${ pi.currentPage eq pi.maxPage }">     										
                                                <li class="paginate_button page-item next" id="zero_config_next"><a href="" aria-controls="zero_config" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li>
                                        </c:when>
                                        <c:otherwise>
                                        	   
                                                <li class="paginate_button page-item next" id="zero_config_next"><a href="leave.lv?currentPage=${pi.currentPage + 1 }" aria-controls="zero_config" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li>
                                        </c:otherwise>
                                        </c:choose>
                                            </ul>
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
	

</body>
</html>
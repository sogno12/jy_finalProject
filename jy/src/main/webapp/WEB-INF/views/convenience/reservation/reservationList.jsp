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
	
	<jsp:include page="../../common/navigator.jsp"/>
	
	 <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Convenience</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Convenience</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid">


              <!--==============================================hajin==================================================-->

                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">회의실 예약 목록</h4>
                                <div class="table-responsive">
                                    <table class="table" style="text-align:center;">
                                        <thead class="thead-light">
                                            <tr>
                                                <th>
                                                    <label class="customcheckbox">
                                                        <input type="checkbox" id="mainCheckbox" />
                                                        <span class="checkmark"></span>
                                                    </label>
                                                </th>
                                                <th scope="col">NO</th>
                                                <th scope="col">BUSINESSROOM</th>
                                                <th scope="col">COUNT</th>
                                                <th scope="col" colspan="2">RESERVATION</th>
                                                <th scope="col">REPORTING_DATE</th>
                                                <th scope="col">STATUS_DATE</th>
                                                <th scope="col">STATUS</th>
                                            </tr>
                                        </thead>
                                        <tbody class="customtable">
                                        <c:forEach items="${ blist }" var="b">
                                        <c:if test="${loginUser.memberNo eq b.memberNo }">
                                            <tr>
                                                <th>
                                                    <label class="customcheckbox">
                                                        <input type="checkbox" class="listCheckbox" />
                                                        <span class="checkmark"></span>
                                                    </label>
                                                </th>
                                                <td>${b.meetingNo }</td>
                                                <td>${b.roomName }</td>
                                                <td>${b.count }명</td>
                                                <td colspan="2">${b.hopeDate } ${ b.timeType }</td>
                                                <td>${ b. reportingDate }</td>
                                                <td>${ b.statusDate }</td>
                                                <td>
                                               		<c:if test="${ b.status eq 'N'}">
                                         			 미승인 
                                         			</c:if>
                                         			<c:if test="${ b.status eq 'Y'}">
                                         			승인
                                         			</c:if>
                                             	</td>
                                            </tr>
                                            </c:if>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div> 
                        </div>


                        <!--============================================================================-->

                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">명함 예약 목록</h4>
                                    <div class="table-responsive">
                                        <table class="table" style="text-align:center;">
                                            <thead class="thead-light">
                                                <tr>
                                                    <th>
                                                        <label class="customcheckbox">
                                                            <input type="checkbox" id="mainCheckbox" />
                                                            <span class="checkmark"></span>
                                                        </label>
                                                    </th>
                                                    <th scope="col">NO</th>
                                                    <th scope="col">NameCardType</th>
                                                    <th scope="col">REPORTINGDATE</th>
                                                    <th scope="col">PROCESSINGDATE</th>
                                                    <th scope="col">STATUS</th>
                                                </tr>
                                            </thead>
                                            <tbody class="customtable namecardTable">
                                               <c:forEach items="${ nlist }" var="n">
                                               <c:if test="${loginUser.memberNo eq n.memberNo }">
	                                                <tr>
	                                                    <th>
	                                                        <label class="customcheckbox">
	                                                            <input type="checkbox" class="listCheckbox" />
	                                                            <span class="checkmark"></span>
	                                                        </label>
	                                                    </th>
	                                                    <td>${ n.namecardNo }</td>
	                                                    <td>
	                                                     <c:if test="${ n.contentType  eq 'namecard1'}">
	                                                    	 <img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/namecard/NAMECARD1.png" alt="namecard1" width="80px;" height="40px;"/>
	                                                    </c:if>
	                                                    <c:if test="${ n.contentType eq 'namecard2'}">
	                                                    	 <img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/namecard/NAMECARD2.png" alt="namecard2" width="80px;" height="40px;"/>
	                                                   	</c:if>
	                                                    </td>
	                                                    <td>${ n.reportingDate }</td>
	                                                    <td>${ n.processingDate }</td>
	                                                   <td>
	                                                    <c:if test="${n.status eq 'N' }">
	                                                    	미승인
	                                                    </c:if>
	                                                    <c:if test="${n.status eq 'Y' }">
	                                                    	승인
	                                                    </c:if>
	                                                    </td>
	                                                </tr>
	                                             </c:if>
	                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div> 
                            <script>
                            	$(function(){
                            		if(".namecardTable tr")
                            	});
                            </script>
                            <div id="pagingArea">
				                <ul class="pagination">
				                   <c:choose>
				                		<c:when test="${ pi.currentPage eq 1 }">
					                    	<li class="badge badge-light disabled"><a class="page-link" href="">Previous</a></li>
				                		</c:when>
				                		<c:otherwise>
				                			<li class="badge badge-light"><a class="page-link" href="reservationList.nc?currentPage=${ pi.currentPage-1 }">Previous</a></li>
				                		</c:otherwise>
				                	</c:choose>
				                    
				                    <%-- <% for(int p=startPage; p<=endPage; p++) %> --%>
				                    <c:forEach begin="${ pi.startPage }" end="${ pi.endPage }" var="p"> 
				                    	
				                    	<c:choose>
				                    		<c:when test="${ pi.currentPage ne p }">
				                    			<li class="badge badge-light"><a class="page-link" href="reservationList.nc?currentPage=${ p }">${ p }</a></li>
				                    		</c:when>
				                    		<c:otherwise>
				                    			<li class="badge badge-light disabled"><a class="page-link" href="">${ p }</a></li>
				                    		</c:otherwise>
				                    	</c:choose>
				                    	
				                    </c:forEach>
				                    
				                    <c:choose>
				                    	<c:when test="${ pi.currentPage eq pi.maxPage }">
				                    		<li class="badge badge-light disabled"><a class="page-link" href="">Next</a></li>
				                    	</c:when>
				                    	<c:otherwise>
					                    	<li class="badge badge-light"><a class="page-link" href="reservationList.nc?currentPage=${pi.currentPage+1}">Next</a></li>
				                    	</c:otherwise>
				                    </c:choose>
				                </ul>
				            </div>
                            </div>
                </div>
                
            </div>
         <jsp:include page="../../common/footer.jsp"/>
        </div>
	</div>
</body>
</html>
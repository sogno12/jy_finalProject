<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- alertifyJs -->
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>

</head>
<body>

	<c:if test="${ sessionScope.appMsg != null }">
         <script>
         	alertify.alert("${sessionScope.appMsg}");
         </script>
         <c:remove var="appMsg" scope="session"/>
    </c:if>


<div id="main-wrapper">
		<jsp:include page="../common/navigator.jsp"/>
	
	<!-- ============================================================== -->
	<!-- Page wrapper  -->
	<!-- ============================================================== -->
	<div class="page-wrapper">
	
	
            <!-- ======***** SUJIN ******======= -->

            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Table</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Table</li>
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
                <div class="row">
                    <div class="col-6">
                        <div class="card">
                            <div class="card-body" style="text-align:center;">
                                <button type="button" id="myRequestBtn" class="btn btn-outline-info text-left" style="margin: 5px 20px;">보낸결재함</button>
                                <button type="button" id="myEndRequestBtn" class="btn btn-outline-info text-left" style="margin: 5px 20px;">결재완료함</button>
                                <button type="button" id="requestedBtn" class="btn btn-outline-info text-left" style="margin: 5px 20px;">승인요청함</button>
                                <button type="button" id="endRequetedBtn" class="btn btn-outline-info text-left" style="margin: 5px 20px;">승인완료함</button>
                            </div>
                        </div>
                    </div>
                </div>
            
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                
                <div class="row" id="requestedTableForm">
                    <div class="col-md-12">
                        <div class="card">
                            <form class="form-horizontal">
                                <div class="card-body">
                                    <h4 class="card-title">승인요청함</h4>
                                    <div class="col-md-1" >
										<select class="select2 form-control custom-select" id="count" style="width: 100%; height:36px;" name="count">
											<option value="5" ${ countNum eq 5 ? "selected" : "" }>5개</option>
											<option value="10" ${ countNum eq 10 ? "selected" : "" }>10개</option>
											<option value="15" ${ countNum eq 15 ? "selected" : "" }>15개</option>
											<option value="20" ${ countNum eq 20 ? "selected" : "" }>20개</option>
										</select>
                                    </div>
                                    <div class="table-responsive">
                                        <table id="requestedTable" class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th scope="col">#</th>
                                                    <th scope="col">문서번호</th>
                                                    <th scope="col">양식명</th>
                                                    <th scope="col">문서제목</th>
                                                    <th scope="col">상신자</th>
                                                    <th scope="col">상신일자</th>
                                                    <th scope="col">결재상태</th>
                                                </tr>   
                                            </thead>
                                            <tbody>
                                                <c:choose>
                                            		<c:when test="${receiveAppBox ne null}">
		                                            	<c:forEach var="rab" items="${receiveAppBox}" >
			                                                <tr>
			                                                    <th scope="row"> # <input type="hidden" value='${ rab.categoryNo }' /> </th>
			                                                    <td>${ rab.no }</td>
			                                                    <td>${ rab.category }</td>
			                                                    <td>${ rab.title }</td>
			                                                    <td>${ rab.name }</td>
			                                                    <td>
			                                                    	<fmt:formatDate value="${rab.createDate}" pattern="yyyy-MM-dd HH:mm"/>
			                                                    </td>
			                                                    <td>${ rab.type }</td>
			                                                </tr>
		                                                </c:forEach>
	                                                </c:when>
	                                                <c:otherwise>
		                                                <tr>
	                                           				<td>조회가능한 보고서가 없습니다.</td>
	                                           			</tr>
	                                                </c:otherwise>
                                                </c:choose>
                                            
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                
                            </form>
                        </div>
                    </div>
                </div>
            
                
            </div>
	
	
	
	
	
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
	
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="${ pageContext.servletContext.contextPath }/resources/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="${ pageContext.servletContext.contextPath }/resources/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="${ pageContext.servletContext.contextPath }/resources/js/custom.min.js"></script>
    <!-- This Page JS -->
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/js/pages/mask/mask.init.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/select2/dist/js/select2.full.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/select2/dist/js/select2.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/jquery-asColor/dist/jquery-asColor.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/jquery-asGradient/dist/jquery-asGradient.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/jquery-asColorPicker/dist/jquery-asColorPicker.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/jquery-minicolors/jquery.minicolors.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/libs/quill/dist/quill.min.js"></script>

    <script>

    //***********************************//
    // For select 2
    //***********************************//
    
    /*datwpicker*/
    jQuery('.mydatepicker').datepicker();
    jQuery('.datepicker-autoclose').datepicker({
        autoclose: true,
        todayHighlight: true
    });
    var quill = new Quill('#editor', {
        theme: 'snow'
    });
    
    /*select Table*/
    $('#myRequestBtn').click(function(){
       	location.href="sendAppBox.box";
    });
    $('#myEndRequestBtn').click(function(){
    	location.href="endSentAppBox.box";
    });
    $('#requestedBtn').click(function(){
    	location.href="receiveAppBox.box";
    });
    $('#endRequetedBtn').click(function(){
    	location.href="endReceiveAppBox.box";
    });
    

     
     /* 보고서 선택 값 넘기기 */
     $(function(){
    	 $('#myRequestTable tbody tr').click(function(){
    		location.href="selectOne.app?no="+$(this).children().eq(1).text()+"&categoryNo="+$(this).children().eq(0).children().eq(0).val(); 
    	 });
    	 
    	 $('#myEndRequestTable tbody tr').click(function(){
     		location.href="selectOne.app?no="+$(this).children().eq(1).text()+"&categoryNo="+$(this).children().eq(0).children().eq(0).val(); 
     	 });
    	 
    	 $('#requestedTable tbody tr').click(function(){
     		location.href="selectOne.app?no="+$(this).children().eq(1).text()+"&categoryNo="+$(this).children().eq(0).children().eq(0).val(); 
     	 });
    	 
    	 $('#endRequetedTable tbody tr').click(function(){
     		location.href="selectOne.app?no="+$(this).children().eq(1).text()+"&categoryNo="+$(this).children().eq(0).children().eq(0).val(); 
     	 });
     })
     
     
     $(function(){
    	$("#count").on('change', function(){
    		console.log(this.value);
    		location.href="receiveAppBox.box?countNum="+$(this).val();
    	});
     })
    		
     
    </script>
</div>

</body>
</html>
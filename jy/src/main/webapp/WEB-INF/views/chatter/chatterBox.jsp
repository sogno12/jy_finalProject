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

	<c:if test="${ sessionScope.chatMsg != null }">
         <script>
         	alertify.alert("${sessionScope.chatMsg}");
         </script>
         <c:remove var="chatMsg" scope="session"/>
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
                        <h4 class="page-title">Chat</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="main.do">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Chat</li>
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
                                <div class="table-responsive">
                                	<form class="form-horizontal" method="get" action="createChatroom.do">
	                                   	<table>
	                                       <tr>
	                                       	<td><button type="button" class="btn btn-outline-info text-left" data-toggle="modal" data-target="#selectMem" style="margin: 5px 10px;">로그인한 사용자</button></td>
	                                       </tr>
	                                       <tr>
	                                       	<td><input type="text" name="receiverNo" id="receiverNo1" readonly/></td>
	                                       </tr>
	                                       <tr>
	                                       	<td><button type="submit" class="btn btn-outline-info text-left" style="margin: 5px 10px;">채팅방 개설</button></td>
	                                       </tr>
	                                    </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
              <!-- 채팅방초대 선택 모달창 -->
              <div class="modal fade" id="selectMem" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true ">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">현재 로그인한 사용자</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true ">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="card">
                                    <div class="table-responsive">
                                         <table id="" class="table text-center">
                                         <thead>
                                             <tr>
                                              <th scope="col">#</th>
                                              <th scope="col">성명</th>
                                              <th scope="col">부서</th>
                                              <th scope="col">직책</th>
                                             </tr>
                                         </thead>
                                         <tbody>
                                         	<c:forEach var="l" items="${ loginedUsers }">
                                          	<tr>
                                               <td><input type="radio" name="selectEmpNo" value="${ l.empNo }" /></td>
                                               <td>${ l.memberName }</td>
                                               <td>${ l.departmentName }</td>
                                               <td>${ l.positionName }</td>
                                              </tr>
                                         	</c:forEach>
                                         </tbody>
                                         </table>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                   <button type="button" class="btn btn-warning" id="selectBtn" data-dismiss="modal">선택완료</button>
                                   <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                               </div>
                        </div>
                    </div>
                </div>
            
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row" id="myRequestTableForm">
                    <div class="col-md-12">
                        <div class="card">
                            <form class="form-horizontal" id="chatterOne" method="post" action="chatterOne.do" target="childwin">
                               	<input type="hidden" id="chatterNo" name="chatterNo"/>
                               	<input type="hidden" id="senderNo" name="senderNo"/>
                               	<input type="hidden" id="receiverNo" name="receiverNo"/>
                            </form>
							<form>                               	
                                <div class="card-body">
                                    <h4 class="card-title">채팅</h4>
                                    <div class="table-responsive">
                                        <table id="chatterTable" class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th scope="col">#</th>
                                                    <th scope="col">채팅방번호</th>
                                                    <th scope="col">생성자</th>
                                                    <th scope="col">참여자</th>
                                                    <th scope="col">채팅방개설일</th>
                                                    <th scope="col"></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            	<c:choose>
                                            		<c:when test="${roomList ne null}">
		                                            	<c:forEach var="r" items="${roomList}" >
			                                                <tr>
			                                                    <th scope="row"> # </th>
			                                                    <td><input type="hidden" value="${ r.chatterNo }"/>${ r.chatterNo }</td>
			                                                    <td><input type="hidden" value="${ r.senderNo }"/>${ r.senderName }</td>
			                                                    <td><input type="hidden" value="${ r.receiverNo }"/>${ r.receiverName }</td>
			                                                    <td>
			                                                    	<fmt:formatDate value="${ r.createDate }" pattern="yyyy-MM-dd HH:mm"/>
			                                                    </td>
			                                                    <td>
			                                                    	<button type="button">닫기</button>
			                                                    </td>
			                                                </tr>
		                                                </c:forEach>
	                                                </c:when>
	                                                <c:otherwise>
		                                                <tr>
	                                           				<td>채팅방이 존재하지 않습니다.</td>
	                                           			</tr>
	                                                </c:otherwise>
                                                </c:choose>
                                            </tbody>
                                        </table>
                                    </div>
                                    <br>
                                    
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
   
    $('#selectBtn').click(function(){
    	var selectEmpNo = $("input[name='selectEmpNo']:checked").val();
    	$('#receiverNo1').val(selectEmpNo);
    })
    
    //*** OpenChild ***//
    
	$('#chatterTable tbody tr').on('click',function(){
		var chatterNo = $(this).children().eq(1).children().eq(0).val();
		var senderNo = $(this).children().eq(2).children().eq(0).val();
		var receiverNo = $(this).children().eq(3).children().eq(0).val();
		
		$('#chatterNo').val(chatterNo);
		$('#senderNo').val(senderNo);
		$('#receiverNo').val(receiverNo);
		
		var wintype ="width=480, height=720, resizable=no, scrollbars=yes"
		window.open("","childwin", wintype);
		$('#chatterOne').submit();
	});
    
    

     
    </script>
</div>

</body>
</html>
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

         <!-- ======***** SUJIN ******======= -->

         <!-- ============================================================== -->
         <!-- Bread crumb and right sidebar toggle -->
         <!-- ============================================================== -->
         <div class="page-breadcrumb">
             <div class="row">
                 <div class="col-12 d-flex no-block align-items-center">
                     <h4 class="page-title">Form</h4>
                     <div class="ml-auto text-right">
                         <nav aria-label="breadcrumb">
                             <ol class="breadcrumb">
                                 <li class="breadcrumb-item"><a href="main.do">Home</a></li>
                                 <li class="breadcrumb-item active" aria-current="page">Form</li>
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
			<div class="row" id="enrollPay">
				<div class="col-md-12">
					<div class="card">
						<form class="form-horizontal" method="post" action="enrollDis.app" enctype="multipart/form-data" id="enrollDisForm">
						    <div class="card-body">
						        <h4 class="card-title">결재기안서</h4>
						
						     	<div align="right">
									<table class="table-bordered text-center">
									    <tr style="height: 30px;">
									        <th style="width:90px;">작성자</th>
									        <c:forEach var="s" items="${ supervisers }">
									        	<td>${ s.deName } ${ s.poName }</td>
									      	</c:forEach>
									    </tr>
									    <tr style="height: 20px;">
									    	<td>${ loginUser.memberName }</td>
									    	<c:forEach var="s" items="${ supervisers }">
									        	<th style="width:90px;">${ s.name }</th>
									      	</c:forEach>
									    </tr>
									    <tr style="height: 50px;">
									    	<th>제출</th>
									        <c:forEach var="s" items="${ supervisers }">
									        	<th>${ s.type }</th>
									      	</c:forEach>
									    </tr>
									</table>
						          
                            	</div>
                            	<br>
                                 
                                <div class="form-group row">
                                     <label for="fname" class="col-sm-3 text-right control-label col-form-label">작성자</label>
                                     <div class="col-sm-2">
                                         <input type="text" class="form-control" id="fname" value="${ oneDis.name }" readonly>
                                     </div>
                                 
                                     <label class="text-right col-md-2 m-t-15" style="display: inline-block;">작성일자</label>
                                     <div class="input-group col-md-2" style="display: inline-block;">
                                         <input type="text" class="form-control" value="<fmt:formatDate value='${ oneDis.createDate }' pattern='yyyy/MM/dd'/>" style="width: 120px; display: inline-block;" readonly>
                                     </div>
                                
                                 </div>

                                 <div class="form-group row">
                                     <label for="fname" class="col-sm-3 text-right control-label col-form-label">부서</label>
                                     <div class="col-sm-2">
                                         <input type="text" class="form-control" id="fname" value="${ loginUser.departmentName }" readonly>
                                     </div>

                                     <label for="fname" class="col-sm-2 text-right control-label col-form-label">직급</label>
                                     <div class="col-sm-2">
                                         <input type="text" class="form-control" id="fname" value="${ loginUser.positionName }" readonly>
                                     </div>
                                 </div>

                                 <div class="form-group row">
                                     <label class="text-right col-md-3 m-t-15">기안서 분류</label>
                                     <div class="col-md-2" style="display: inline-block;">
                                         <select class="select2 form-control custom-select" style="width: 100%; height:36px;" name="disTypeNo" disabled>
                                             <option value="">Select</option>
                                             	<c:forEach var="d" items="${disType}">
                                             		<c:if test="${ d.disTypeNo eq oneDis.disTypeNo }">
                                             			<option value="${ d.disTypeNo }" selected>${ d.type }</option>
                                             		</c:if>
                                             		<c:if test="${ d.disTypeNo ne oneDis.disTypeNo }">
                                             			<option value="${ d.disTypeNo }">${ d.type }</option>
                                             		</c:if>
                                             	</c:forEach>
                                         </select>
                                     </div>

                                     <label class="text-right col-md-2 m-t-15">지급조건</label>
                                     <div class="col-md-2" style="display: inline-block;">
                                         <select class="select2 form-control custom-select" style="width: 100%; height:36px;" name="terms" disabled>
                                             <option value="">필수선택</option>
                                             <option value="현금" ${ oneDis.terms eq '현금' ? "selected" : "" }>현금</option>
                                             <option value="계좌이체" ${ oneDis.terms eq '계좌이체' ? "selected" : "" }>계좌이체</option>
                                         </select>
                                     </div>
                                 </div>
                                 <div class="form-group row">
                                     <label for="lname" class="col-sm-3 text-right control-label col-form-label">계좌번호</label>
                                     <div class="col-md-3">
                                         <select class="select2 form-control custom-select" style="width: 100%; height:36px;" name="bank" disabled>
                                             <option value="">은행명</option>
                                                 <option value="신한" ${ oneDis.bank eq '신한' ? "selected" : "" }>신한</option>
                                                 <option value="우리" ${ oneDis.bank eq '우리' ? "selected" : "" }>우리</option>
                                                 <option value="농협" ${ oneDis.bank eq '농협' ? "selected" : "" }>농협</option>
                                         </select>
                                     </div>
                                     <div class="col-sm-3">
                                         <input type="text" class="form-control" id="lname" value="${ oneDis.account }" name="account" readonly>
                                     </div>
                                 </div>
                                 <br>
                                 <div class="form-group row">
                                     <label for="lname" class="col-sm-3 text-right control-label col-form-label">합계금액</label>
                                     <div class="col-sm-3">
                                         <input type="text" class="form-control" id="lname" value="${ oneDis.payment }" name="payment" readonly>
                                     </div>
                                 </div>

                                 <hr>
                                 
                                 <div class="form-group row">
                                     <label for="fname" class="col-sm-3 text-right control-label col-form-label">제목(필수)</label>
                                     <div class="col-sm-6">
                                         <input type="text" class="form-control" id="fname" value="${ oneDis.title }" name="title" readonly>
                                     </div>
                                 </div>
                                 
                                 <!-- 결재기안서 상세내용 기입테이블 -->
                                 <div class="col-sm-12" style="margin:auto;">
                                     <label for="table" class="col-sm-3 text-left control-label col-form-label">내역</label>
                                     <div class="col-md-3 text-right" style="float: right;">
                                         <select class="select2 form-control custom-select" style="width: 100px; height:26px; font-size: 10px;">
                                             <option value="">행 갯수 선택</option>
                                             <option value="3">3</option>
                                             <option value="5">5</option>
                                             <option value="7">7</option>
                                             <option value="10">10</option>
                                         </select>
                                     </div>
                                     
                                     <table class="table tableFont" id="disContentTable" style="font-size: 90%; text-align: center;">
                                         <thead>
                                             <tr>
                                             	<th scope="col">#</th>
                                                <th scope="col">지출일</th>
                                                <th scope="col">계정과목</th>
                                                <th scope="col">지출내용</th>
                                                <th scope="col">거래처</th>
                                                <th scope="col">금액</th>
                                                <th scope="col">결제수단</th>
                                             </tr>
                                           </thead>
                                           <tbody>
                                           
                                           	<c:forEach var="c" items="${ contents }" varStatus="status">
                                           		<tr>
                                           		<td>${ status.count }</td>
                                                <td>
                                                  <input type="text" class="form-control datepicker-autoclose" value="<fmt:formatDate value='${ c.paydate }' pattern='yy/MM/dd'/>"
                                                  	style="width: 80px; height: 30px; display: inline-block; font-size: 70%;" name="paydate" readonly>
                                                </td>
                                                <td>
                                                  <select class="select2 form-control" style="width: 100%; height: 30px; font-size: 70%;" name="subjectNo" disabled>
                                                      <option>과목선택</option>
                                                      <c:forEach var="s" items="${ subject }">
                                                      	<c:if test="${ c.subjectNo eq s.subjectNo }">
                                                      		<option value="${ s.subjectNo }" selected>${ s.subject }</option>
                                                      	</c:if>
                                                      	<c:if test="${ c.subjectNo ne s.subjectNo }">
                                                      		<option value="${ s.subjectNo }">${ s.subject }</option>
                                                      	</c:if>
                                                      </c:forEach>
                                                  </select>
                                                </td>
                                                <td>
                                                  <input type="text" class="form-control" id="fname" value="${ c.content }" style="font-size: 70%; height: 30px;" name="disContent" readonly>
                                                </td>
                                                <td>
                                                  <input type="text" class="form-control" id="fname" value="${ c.client }" style="font-size: 70%; height: 30px;" name="client" readonly>
                                                </td>
                                                <td>
                                                  <input type="text" class="form-control text-right" id="fname" value="${ c.price }" style="font-size: 70%; height: 30px;" name="price" readonly>
                                                </td>
                                                <td>
                                                  <select class="select2 form-control" style="width: 110%; height: 30px; font-size: 70%;" name="methodNo" disabled>
                                                      <option>수단선택</option>
                                                      <c:forEach var="m" items="${ method }">
                                                      	<c:if test="${ c.methodNo eq m.methodNo }">
                                                      		<option value="${ m.methodNo }" selected>${ m.method }</option>
                                                      	</c:if>
                                                      	<c:if test="${ c.methodNo ne m.methodNo }">
                                                      		<option value="${ m.methodNo }">${ m.method }</option>
                                                      	</c:if>
                                                      </c:forEach>
                                                  </select>
                                                </td>
                                             	</tr>
                                           	</c:forEach>
                                           </tbody>
                                     </table>

                                 </div>
                                 <!-- 결재기안서 테이블블 종료 -->
                                 
                                 <c:if test="${ oneDis.updateName ne null }">
                                 <div class="form-group row">
                                     <label class="col-md-3 text-right control-label">File Download</label>
                                     <div class="col-md-6">
                                         <div class="custom-file">
                                             <a href="${ pageContext.servletContext.contextPath }/resources/upload_file_disbursement/${ oneDis.updateName }" download="${ oneDis.updateName }">${ oneDis.updateName }</a>
                                             <div class="invalid-feedback">Example invalid custom file feedback</div>
                                         </div>
                                     </div>
                                  </div>
                                  </c:if>

                             </div>
                             <div class="border-top">
                                    <div class="card-body text-right">
                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#Modal2">Update</button>
                                        <button type="button" class="btn btn-info" id="checkBtn">Check</button>
                                    
                                        <!-- Modal -->
                                        <div class="modal fade" id="Modal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">UPDATE</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body text-left">
                                                        <p>
                                                            - 내용은 오직 작성자만 수정이 가능합니다.
                                                        </p>
                                                         <p>
                                                           - 수정을 원하시면 반려하십시오.
                                                        </p>
                                                        <p>
                                                            - 결재는 '검토, 승인, 반려' 중 선택할 수 있습니다.
                                                        </p>

                                                    </div>
                                                    <div class="modal-footer">
                                                    	<!-- 작성자만 수정가능 & 반려 상태일때만 수정가능 -->
                                                    	<c:if test="${ loginUser.memberNo eq oneDis.createBy && oneDis.approvalNo eq 3 }">
                                                        	<button type="button" class="btn btn-warning" id="updateBtn">수정</button>
                                                        </c:if>
                                                        <!-- 결재자만 결재 가능 -->
                                                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#Modal4">결재</button>
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Modal -->
                                        <div class="modal fade" id="Modal4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">UPDATE</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body text-left">
                                                        <p>결재 내용은 바로 반영됩니다</p>
                                                        
                                                        <select class="select2 form-control custom-select" style="width: 100%; height:30px;" id="approvalSelect">
                                                            <option value="">결재선택</option>
                                                            	<c:forEach var="t" items="${ types }">
                                                            		<option value="${ t.approvalNo }">${ t.type }</option>
                                                            	</c:forEach>
                                                        </select>

                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-success" id="approvalBtn">결정</button>
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

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

    <!-- Page (+sujin)-->
    <script src="${ pageContext.servletContext.contextPath }/resources//assets/extra-libs/multicheck/datatable-checkbox-init.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources//assets/extra-libs/multicheck/jquery.multicheck.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources//assets/extra-libs/DataTables/datatables.min.js"></script>
    

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
    
    
    //* BTN 요청사항 *//
    
    $('#updateBtn').click(function(){
    	location.href="goUpdateDis.box?no="+${oneDis.disbursementNo}+"&categoryNo="+${oneDis.categoryNo}; 
    });
    
    $('#approvalBtn').click(function(){
    	var selectNo = $('#approvalSelect option:selected').val();
    	if(selectNo != ""){
	    	location.href="goApproveDis.app?no="+${oneDis.disbursementNo}+"&selectNo="+selectNo;
    	}
    });
    
    $('#checkBtn').click(function(){
    	if( ${loginUser.memberNo } == ${oneDis.createBy} && ${oneDis.approvalNo} != 2) {
    		location.href='${ pageContext.servletContext.contextPath }/sendAppBox.box';
    	}else if(  ${loginUser.memberNo} == ${oneDis.createBy} && ${oneDis.approvalNo} == 2 ){
    		location.href='${ pageContext.servletContext.contextPath }/endSentAppBox.box';
    	}else if(  ${loginUser.memberNo} != ${oneDis.createBy} && ${oneDis.approvalNo} != 2 ){
    		location.href='${ pageContext.servletContext.contextPath }/receiveAppBox.box';
    	}else {
    		location.href='${ pageContext.servletContext.contextPath }/endReceiveAppBox.box';
    	}
    });
	</script>
</div>

</body>
</html>
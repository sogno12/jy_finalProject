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
						<form class="form-horizontal" method="post" action="updateDis.app" enctype="multipart/form-data" id="updateDisForm">
						    <div class="card-body">
						        <h4 class="card-title">결재기안서 수정</h4>
						        
						        <input type="hidden" id="disbursementNo" name="disbursementNo"/>
						
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
                                         <input type="text" class="form-control" value="${ oneDis.name }" id="createBy" name="createBy" readonly>
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
                                         <select class="select2 form-control custom-select" style="width: 100%; height:36px;" name="disTypeNo" id="disType">
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
                                         <select class="select2 form-control custom-select" style="width: 100%; height:36px;" name="terms" id="terms">
                                             <option value="">필수선택</option>
                                             <option value="현금" ${ oneDis.terms eq '현금' ? "selected" : "" }>현금</option>
                                             <option value="계좌이체" ${ oneDis.terms eq '계좌이체' ? "selected" : "" }>계좌이체</option>
                                         </select>
                                     </div>
                                 </div>
                                 <div class="form-group row">
                                     <label for="lname" class="col-sm-3 text-right control-label col-form-label">계좌번호</label>
                                     <div class="col-md-3">
                                         <select class="select2 form-control custom-select" style="width: 100%; height:36px;" name="bank" id="bank">
                                             <option value="">은행명</option>
                                                 <option value="신한" ${ oneDis.bank eq '신한' ? "selected" : "" }>신한</option>
                                                 <option value="우리" ${ oneDis.bank eq '우리' ? "selected" : "" }>우리</option>
                                                 <option value="농협" ${ oneDis.bank eq '농협' ? "selected" : "" }>농협</option>
                                         </select>
                                     </div>
                                     <div class="col-sm-3">
                                         <input type="text" class="form-control" value="${ oneDis.account }" name="account" id="account">
                                     </div>
                                 </div>
                                 <br>
                                 <div class="form-group row">
                                     <label for="lname" class="col-sm-3 text-right control-label col-form-label">합계금액</label>
                                     <div class="col-sm-3">
                                         <input type="text" class="form-control" value="${ oneDis.payment }" name="payment" id="payment">
                                     </div>
                                 </div>

                                 <hr>
                                 
                                 <div class="form-group row">
                                     <label for="fname" class="col-sm-3 text-right control-label col-form-label">제목(필수)</label>
                                     <div class="col-sm-6">
                                         <input type="text" class="form-control" value="${ oneDis.title }" name="title" id="title">
                                     </div>
                                 </div>
                                 
                                 <!-- 결재기안서 상세내용 기입테이블 -->
                                 <div class="col-sm-12" style="margin:auto;">
                                     <label for="table" class="col-sm-3 text-left control-label col-form-label">내역</label>
                                     <div class="col-md-9 text-right" style="float: right;">
                                     	<label class="control-label col-form-label">행 갯수 선택 (행갯수가 바뀌면 내용은 리셋됩니다) : </label>
                                         <select class="select2 form-control custom-select" style="width: 100px; height:26px; font-size: 10px;" id="rowSelect">
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
                                                  	style="width: 80px; height: 30px; display: inline-block; font-size: 70%;" name="paydate">
                                                </td>
                                                <td>
                                                  <select class="select2 form-control" style="width: 100%; height: 30px; font-size: 70%;" name="subjectNo">
                                                      <option value="">과목선택</option>
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
                                                  <input type="text" class="form-control" id="fname" value="${ c.content }" style="font-size: 70%; height: 30px;" name="disContent">
                                                </td>
                                                <td>
                                                  <input type="text" class="form-control" id="fname" value="${ c.client }" style="font-size: 70%; height: 30px;" name="client">
                                                </td>
                                                <td>
                                                  <input type="text" class="form-control text-right" id="fname" value="${ c.price }" style="font-size: 70%; height: 30px;" name="price">
                                                </td>
                                                <td>
                                                  <select class="select2 form-control" style="width: 110%; height: 30px; font-size: 70%;" name="methodNo">
                                                      <option value="">수단선택</option>
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
                                 
                                 <div class="form-group row">
                                        <label class="col-md-3 text-right control-label">File Upload</label>
                                        <div class="col-md-6">
                                        	
                                            <div class="custom-file">
                                            		
                                                <input type="file" class="custom-file-input" id="validatedCustomFile" name="uploadFile">
                                                <label class="custom-file-label" for="validatedCustomFile">첨부파일은 한 보고서당 1개만 가능하므로 첨부파일이 교체됩니다.</label>
                                                <div class="invalid-feedback">Example invalid custom file feedback</div>
                                            </div>
                                        </div>
                                    </div>
                                 <div class="form-group row">
                                     <label class="col-md-3 text-right control-label">File Download</label>
                                     <div class="col-md-6">
                                         <div class="custom-file">
                                             <a href="${ pageContext.servletContext.contextPath }/resources/upload_file_disbursement/${ oneDis.updateName }" download="${ oneDis.updateName }">${ oneDis.updateName }</a>
                                             <div class="invalid-feedback">Example invalid custom file feedback</div>
                                         </div>
                                     </div>
                                  </div>

                             </div>
                             
                             
                             <!-- BtnS -->
                             <div class="border-top">
                                    <div class="card-body text-right">
                                    	<c:if test="${ loginUser.memberNo eq oneDis.createBy }">
                                        	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#Modal2">Update</button>
                                        	<button type="button" class="btn btn-warning" data-toggle="modal" data-target="#Modal3">Delete</button>
                                        </c:if>
                                        <button type="button" class="btn btn-info" onclick="location.href='${ pageContext.servletContext.contextPath }/appBox.box'">Check</button>
                                    
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
                                                            - 수정하시겠습니까?
                                                        </p>
                                                        

                                                    </div>
                                                    <div class="modal-footer">
                                                    	<c:if test="${ loginUser.memberNo  eq oneDis.createBy }">
                                                        	<button type="button" class="btn btn-warning" id="submitBtn">수정</button>
                                                        </c:if>
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <!-- Modal -->
                                        <div class="modal fade" id="Modal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">DELETE</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body text-left">
                                                        <p>
                                                            - 삭제하시겠습니까?
                                                        </p>

                                                    </div>
                                                    <div class="modal-footer">
                                                    	<c:if test="${ loginUser.memberNo  eq oneDis.createBy }">
                                                        	<button type="button" class="btn btn-warning" id="deleteBtn">삭제</button>
                                                        </c:if>
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
		<jsp:include page="../common/footer.jsp"/>
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
    
    
    
    /****************************************
     *       Submit Table 유효성 검사                *
     ****************************************/
    var re = /^[a-z|A-Z|0-9|가-힣|\s]{3,30}$/
    var reCon = /^[a-z|A-Z|0-9|가-힣|\s]{3,1000}$/
    var reNum = /^[0-9]{3,10}$/
    
   	function check(re, what, message){
	if(re.test(what.value)){
		return true;
	}
	alert(message);
	what.value="";
	what.focus();
	} 
    
    $('#submitBtn').click(function(){

    	var disType = document.getElementById("disType");
    	var terms = document.getElementById("terms");
    	var bank = document.getElementById("bank");
    	
    	var account = document.getElementById("account");
    	var payment = document.getElementById("payment");
    	var title = document.getElementById("title");
    	
    	var paydate = document.getElementsByName("paydate");
    	var subjectNo = document.getElementsByName("subjectNo");
    	var disContent = document.getElementsByName("disContent");
    	var client = document.getElementsByName("client");
    	var price = document.getElementsByName("price");
    	var methodNo = document.getElementsByName("methodNo");
    	
    /* 	console.log(disType.options[disType.selectedIndex].value);
    	console.log(terms.options[terms.selectedIndex].value);
    	console.log(bank.options[bank.selectedIndex].value);
    	console.log(account.value);
    	console.log(payment.value);
    	console.log(title.value); */
    	/* console.log(paydate[0].value);
    	console.log(subjectNo[0].value);
    	console.log(disContent[0].value);
    	console.log(client[0].value);
    	console.log(price[0].value);
    	console.log(methodNo[0].value); */

    	if(disType.options[disType.selectedIndex].value == 0){
    		alert("기안서 분류를 선택해주십시오");
    		return false;
    	}
    	if(terms.options[terms.selectedIndex].value == 0){
    		alert("지급조건을 선택해주십시오");
    		return false;
    	}
    	if(bank.options[bank.selectedIndex].value == 0){
    		alert("은행을 선택해주십시오");
    		return false;
    	}
    	if(!check(reNum,account,"계좌번호는 숫자만 입력해주십시오")){
    		return false;
    	}
    	if(!check(reNum,payment,"총 금액은 숫자만 입력해주십시오")){
    		return false;
    	}
    	if(!check(re,title,"제목은 3~30자 이내로 작성해주십시오")){
    		return false;
    	}

    	if(paydate[0].value == ""){
    		alert("내용은 첫줄부터 하나 이상 작성해주십시오. (지출일)");
    		return false;
    	}
    	if(subjectNo[0].value == ""){
    		alert("내용은 첫줄부터 하나 이상 작성해주십시오. (계정과목)");
    		return false;
    	}
    	if(disContent[0].value == ""){
    		alert("내용은 첫줄부터 하나 이상 작성해주십시오. (지출내용)");
    		return false;
    	}
    	if(client[0].value == ""){
    		alert("내용을 첫줄부터 하나 이상 작성해주십시오. (거래처)");
    		return false;
    	}
    	if(price[0].value == "" || !check(reNum, price[0], "금액은 숫자만 입력해주십시오")){
    		alert("내용을 첫줄부터 하나 이상 작성해주십시오. (금액)");
    		return false;
    	}
    	if(methodNo[0].value == ""){
    		alert("내용을 첫줄부터 하나 이상 작성해주십시오. (결제수단)");
    		return false;
    	}
    	
    	var disbursementNo = document.getElementById("disbursementNo");
		var createBy = document.getElementById("createBy");
		
		disbursementNo.value = ${ oneDis.disbursementNo };
		createBy.value = ${ oneDis.createBy };

    	document.getElementById('updateDisForm').submit();
    });
    
    
	/* select rowSelect Number Ajax */
    
    $(function(){
    	$("#rowSelect").on('change', function(){
    		
    		if(this.value !== ""){
    			var rowNum = $(this).find(":selected").val();
    			var data = { rowNum : rowNum };
    			
    			$.get('rowSelectNum.app', data)
    			.done(function (res){
    				// console.log(res);
    				var num = res[Object.keys(res)[1]];
    				// console.log(num);
    				
    				var row= ""
    				
    				for(var i=0; i<num; i++){
    					row += '<tr>' +
                        '<th scope="row">${ i }</th>' +
                        '<td>' +
                          '<input type="text" class="form-control datepicker-autoclose" placeholder="mm/dd/yyyy" ' +
                          	'style="width: 80px; height: 30px; display: inline-block; font-size: 70%;" name="paydate">' +
                        '</td>' +
                        '<td>' +
                          '<select class="select2 form-control" style="width: 100%; height: 30px; font-size: 70%;" name="subjectNo">' +
                              '<option value="">과목선택</option>' +
                              '<c:forEach var="s" items="${ subject }">' +
                              	'<option value="${ s.subjectNo }">${ s.subject }</option>' +
                              '</c:forEach>' +
                          '</select>' +
                        '</td>' +
                        '<td>' +
                          '<input type="text" class="form-control" id="fname" placeholder="내용작성" style="font-size: 70%; height: 30px;" name="disContent">' +
                        '</td>' +
                        '<td>' +
                          '<input type="text" class="form-control" id="fname" placeholder="거래처" style="font-size: 70%; height: 30px;" name="client">' +
                        '</td>' +
                        '<td>' +
                          '<input type="text" class="form-control text-right" id="fname" placeholder="금액: 숫자만 입력" style="font-size: 70%; height: 30px;" name="price">' +
                        '</td>' +
                        '<td>' +
                          '<select class="select2 form-control" style="width: 110%; height: 30px; font-size: 70%;" name="methodNo">' +
                              '<option value="">수단선택</option>' +
                              '<c:forEach var="m" items="${ method }">' +
                              	'<option value="${ m.methodNo }">${ m.method }</option>' +
                              '</c:forEach>' +
                          '</select>' +
                        '</td>' +
                  	'</tr>';
    				}
    				$('#disContentTable tbody').html(row);
    			
    			})
    			.fail(function(err){
    				console.log("select rowNum ajax 실패");
    			})
    		}
    		
    	})
    })
    
    /* Delete Dis */
	$('#deleteBtn').click(function(){
		var disbursementNo = document.getElementById("disbursementNo");
		var createBy = document.getElementById("createBy");
		var form = document.getElementById('updateDisForm');
		
		disbursementNo.value = ${ oneDis.disbursementNo };
		createBy.value = ${ oneDis.createBy };
		
		form.action = '${ pageContext.servletContext.contextPath }/deleteDis.app';
		form.method = 'post';
		form.submit();
	});
    
    
    
	</script>
    
</div>
</div>
</body>
</html>
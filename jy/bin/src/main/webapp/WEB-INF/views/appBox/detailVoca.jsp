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
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
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
                <div class="row" id="enrollVacation">
                    <div class="col-md-12">
                        <div class="card">
                            <form class="form-horizontal" method="post" action="" enctype="multipart/form-data" id="">
                                <div class="card-body">
                                    <h4 class="card-title">보고서</h4>

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
                                        <label class="text-right col-md-3 m-t-15">보고서 분류</label>
                                        <div class="col-md-3">
                                            <select class="select2 form-control custom-select" id="selectReason" style="width: 100%; height:36px;" name="categoryNo" disabled>
                                                <option>Select</option>
	                                                <option value="1" selected>휴가신청서</option>
	                                                <option value="2">보고서</option>
                                            </select>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">작성자</label>
                                        <div class="col-sm-2">
                                            <input type="text" class="form-control" id="fname" value="${ oneReport.name }" readonly>
                                        </div>
                                    
                                        <label class="text-right col-md-2 m-t-15" style="display: inline-block;">작성일자</label>
                                        <div class="input-group col-md-2" style="display: inline-block;">
                                        	<jsp:useBean id="now" class="java.util.Date" />
                                            <input type="text" class="form-control" value="<fmt:formatDate value='${ oneReport.createDate }' pattern='yyyy/MM/dd'/>" style="width: 120px; display: inline-block;" readonly>
                                        </div>
                                                                        
                                    </div>

                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">부서</label>
                                        <div class="col-sm-2">
                                            <input type="text" class="form-control" id="fname" value="${loginUser.departmentName }" readonly>
                                        </div>

                                        <label for="fname" class="col-sm-2 text-right control-label col-form-label">직급</label>
                                        <div class="col-sm-2">
                                            <input type="text" class="form-control" id="fname" value="${loginUser.positionName }" readonly>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="text-right col-md-3 m-t-15">사유</label>
                                        <div class="col-md-3" id="reasonList">
                                           
							    			<select class="select2 form-control custom-select" style="width: 100%; height:36px;" id="reason" name="reasonNo" disabled>
						                         <option>Select</option>
						                         <c:forEach var="r" items="${ reasons }">
						                         	<c:if test="${ r.reasonNo eq oneReport.reasonNo }">
						                         		<option value="${ r.reasonNo }" selected>${ r.reason }</option>
						                         	</c:if>
						                         	<c:if test="${ r.reasonNo ne oneReport.reasonNo }">
						                         		<option value="${ r.reasonNo }">${ r.reason }</option>
						                         	</c:if>
						                         </c:forEach>
						                     </select>
                                        </div>
                                    </div>
                                        
                                    
                                    <label class="text-right col-md-3 m-t-15" style="display: inline-block;">기간</label>
                                    <div class="input-group col-md-3" style="display: inline-block;">
                                        <input type="text" class="form-control datepicker-autoclose" value="<fmt:formatDate value='${ oneReport.beginDate }' pattern='yyyy/MM/dd'/>" style="width: 120px; display: inline-block;" name="beginDate" readonly>
                                        <div class="input-group-append" style="display: inline-block;">
                                            <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                        </div>
                                    </div>
                                    ~
                                    <div class="input-group col-md-3" style="display: inline-block;">
                                        <input type="text" class="form-control datepicker-autoclose" value="<fmt:formatDate value='${ oneReport.endDate }' pattern='yyyy/MM/dd'/>" style="width: 120px; display: inline-block;" name="endDate" readonly>
                                        <div class="input-group-append" style="display: inline-block;">
                                            <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                        </div>
                                    </div>

                                    <hr>
                                    
                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">제목(필수)</label>
                                        <div class="col-sm-6">
                                            <input type="text" class="form-control" id="fname" value="${ oneReport.title }" name="title" readonly>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label">사유</label>
                                        <div class="col-sm-6">
                                            <textarea class="form-control" style="min-height: 200px;" name="content" readonly>${ oneReport.content }</textarea>
                                        </div>
                                    </div>

                                    <c:if test="${ !empty oneReport.updateName }">
                                    <div class="form-group row">
                                        <label class="col-md-3 text-right control-label">File Download</label>
                                        <div class="col-md-6">
                                            <div class="custom-file">
                                                <a href="${ pageContext.servletContext.contextPath }/resources/upload_file_report/${ oneReport.updateName }" download="${ oneReport.updateName }">${ oneReport.updateName }</a>
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
                                                    	<c:if test="${ loginUser.memberNo eq oneReport.createBy && oneReport.approvalNo eq 3 }">
                                                        	<button type="button" class="btn btn-warning" id="updateBtn">수정</button>
                                                        </c:if>
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
    
	 
    //* BTN 요청사항 *//
    
    $('#updateBtn').click(function(){
    	location.href="goUpdateVaca.box?no="+${oneReport.reportNo}+"&categoryNo="+${oneReport.categoryNo}; 
    });
    
    $('#approvalBtn').click(function(){
    	var selectNo = $('#approvalSelect option:selected').val();
    	if(selectNo != ""){
	    	location.href="goApproveReport.app?no="+${oneReport.reportNo}+"&selectNo="+selectNo;
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
</div>
</body>
</html>
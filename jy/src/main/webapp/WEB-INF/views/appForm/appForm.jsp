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
                <div class="row">
                    <div class="col-4">
                        <div class="card">
                            <div class="card-body" style="text-align:center;">
                                <button type="button" id="enrollVacationBtn" class="btn btn-outline-info text-left" style="margin: 5px 10px;">보고서</button>
                                <button type="button" id="enrollPayBtn" class="btn btn-outline-info text-right" style="margin: 5px 10px;">결제기안서</button>
                            </div>
                        </div>
                    </div>
                </div>
            
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row" id="enrollVacation">
                    <div class="col-md-12">
                        <div class="card">
                            <form class="form-horizontal" method="post" action="enrollVa.app" enctype="multipart/form-data" id="enrollVaForm">
                                <div class="card-body">
                                    <h4 class="card-title">보고서</h4>

                                    <div align="right">
                                    	<button type="button" class="btn btn-outline-info text-left" data-toggle="modal" data-target="#superModal" style="margin: 5px 10px;">결재자선택</button>
                                        <div>
                                        	<table border="1" style="margin:11px; text-align:center;" id="superTable">
                                        		<thead>
                                        			<tr style="height: 20px;">
                                        				<th style="width:90px;">결재자</th>
                                        			</tr>
                                        		</thead>
                                        	
                                        	<!-- 모달로 결재자 선택 이후 표 변경-->
                                        		<tbody>
                                        			<tr style="height: 20px;"><td></td></tr>
                                        			<tr style="height: 20px;"><td></td></tr>
                                        			<tr style="height: 20px;"><td></td></tr>
                                        		</tbody>
                                        	</table>
                                        </div>
                                       
                                        
                                    </div>
                                    <br>
                                    
                                    
                                    <!-- 결재자 선택 모달창 -->
	                              <div class="modal fade" id="superModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true ">
	                                    <div class="modal-dialog" role="document">
	                                        <div class="modal-content">
	                                            <div class="modal-header">
	                                                <h5 class="modal-title" id="exampleModalLabel">결재자 선택</h5>
	                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                                                    <span aria-hidden="true ">&times;</span>
	                                                </button>
	                                            </div>
	                                            <div class="modal-body">
	                                                <div class="card">
	                                                    <div class="table-responsive">
		                                                        <table id="superModalTable" class="table text-center">
		                                                        <thead>
		                                                            <tr>
			                                                            <th scope="col">#</th>
			                                                            <th scope="col">성명</th>
			                                                            <th scope="col">부서</th>
			                                                            <th scope="col">직책</th>
		                                                            </tr>
		                                                        </thead>
		                                                        <tbody>
		                                                        	<c:forEach var="a" items="${ allMember }">
			                                                        	<tr>
				                                                            <td><input type="checkbox" name="checkSuper" value="${ a.memberNo }" /></td>
				                                                            <td>${ a.name }</td>
				                                                            <td>${ a.deName }</td>
				                                                            <td>${ a.poName }</td>
			                                                            </tr>
		                                                        	</c:forEach>
		                                                        </tbody>
		                                                        </table>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                            <div class="modal-footer">
                                                    <button type="button" class="btn btn-warning" id="superBtn" data-dismiss="modal">선택완료</button>
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                </div>
	                                        </div>
	                                    </div>
	                                </div>
	                                    
                                    
									<div class="form-group row">
                                        <label class="text-right col-md-3 m-t-15">보고서 분류</label>
                                        <div class="col-md-3">
                                            <select class="select2 form-control custom-select" id="selectReason" style="width: 100%; height:36px;" name="categoryNo">
                                                <option value="">Select</option>
	                                                <option value="1">휴가신청서</option>
	                                                <option value="2">보고서</option>
                                            </select>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">작성자</label>
                                        <div class="col-sm-2">
                                            <input type="text" class="form-control" id="fname" value="${loginUser.memberName}" readonly>
                                        </div>
                                    
                                        <label class="text-right col-md-2 m-t-15" style="display: inline-block;">작성일자</label>
                                        <div class="input-group col-md-2" style="display: inline-block;">
                                        	<jsp:useBean id="now" class="java.util.Date" />
                                            <input type="text" class="form-control" value="<fmt:formatDate value='${now}' pattern='yyyy/MM/dd'/>" style="width: 120px; display: inline-block;" readonly>
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
                                           
							    			<select class="select2 form-control custom-select" style="width: 100%; height:36px;" id="reason" name="reasonNo">
						                         <option value="" selected>Select</option>
						                     </select>
						                     
	                                           <!-- reasonBox - Ajax -->
                                           
                                        </div>
                                        <div class="col-md-6" id="selectHalf" style="display:none">
                                             <div class="custom-control custom-radio" style="display:none">
                                                <input type="radio" class="custom-control-input" id="customControlValidation2" name="radio-stacked" required>
                                                <label class="custom-control-label" for="customControlValidation2">오전</label>
                                            </div>
                                             <div class="custom-control custom-radio" style="display: inline-block">
                                                <input type="radio" class="custom-control-input" id="customControlValidation3" name="radio-stacked" required>
                                                <label class="custom-control-label" for="customControlValidation3">오후</label>
                                            </div>
                                        </div>
                                    </div>
                                        
                                    
                                    <label class="text-right col-md-3 m-t-15" style="display: inline-block;">(시작)날짜</label>
                                    <div class="input-group col-md-3" style="display: inline-block;">
                                        <input type="text" class="form-control datepicker-autoclose" placeholder="mm/dd/yyyy" style="width: 120px; display: inline-block;" id="beginDate1" name="beginDate" required>
                                        <div class="input-group-append" style="display: inline-block;">
                                            <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                        </div>
                                    </div>
                                    (종료날짜:선택작성)
                                    <div class="input-group col-md-3" style="display: inline-block;">
                                        <input type="text" class="form-control datepicker-autoclose" placeholder="mm/dd/yyyy" style="width: 120px; display: inline-block;" id="endDate1" name="endDate">
                                        <div class="input-group-append" style="display: inline-block;">
                                            <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                        </div>
                                    </div>

                                    <hr>
                                    
                                    <div class="form-group row">
                                        <label for="title1" class="col-sm-3 text-right control-label col-form-label">제목(필수)</label>
                                        <div class="col-sm-6">
                                            <input type="text" class="form-control" id="title1" placeholder="보고서의 제목을 입력해주세요(3~30자)" name="title" minlength="3" maxlength="30" required>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group row">
                                        <label for="content1" class="col-sm-3 text-right control-label col-form-label">사유</label>
                                        <div class="col-sm-6">
                                            <textarea class="form-control" style="min-height: 200px;" name="content" id="content1" required></textarea>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-3 text-right control-label">File Upload</label>
                                        <div class="col-md-6">
                                            <div class="custom-file">
                                                <input type="file" class="custom-file-input" id="validatedCustomFile" name="uploadFile">
                                                <label class="custom-file-label" for="validatedCustomFile">Choose file...</label>
                                                <div class="invalid-feedback">Example invalid custom file feedback</div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="border-top">
                                    <div class="card-body text-right">
                                        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#Modal02" >Submit</button>
                                        <button type="submit" class="btn btn-danger" >Cancel</button>
                                    
                                        <!-- Modal02 -->
                                        <div class="modal fade" id="Modal02" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">결재신청</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body text-left">
                                                        승인 요청을 하시겠습니까?
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-warning" id="submitBtn1">결재신청</button>
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
                
                <!--=====================================================================================-->

                <div class="row" id="enrollPay">
                    <div class="col-md-12">
                        <div class="card">
                            <form class="form-horizontal" method="post" action="enrollDis.app" enctype="multipart/form-data" id="enrollDisForm">
                                <div class="card-body">
                                    <h4 class="card-title">결재기안서</h4>


                                    <div align="right">
                                    	<button type="button" class="btn btn-outline-info text-left" data-toggle="modal" data-target="#superModal2" style="margin: 5px 10px;">결재자선택</button>
                                        <div>
                                        	<table border="1" style="margin:11px; text-align:center;" id="superTable2">
                                        		<thead>
                                        			<tr style="height: 20px;">
                                        				<th style="width:90px;">결재자</th>
                                        			</tr>
                                        		</thead>
                                        	
                                        	<!-- 모달로 결재자 선택 이후 표 변경-->
                                        		<tbody>
                                        			<tr style="height: 20px;"><td></td></tr>
                                        			<tr style="height: 20px;"><td></td></tr>
                                        			<tr style="height: 20px;"><td></td></tr>
                                        		</tbody>
                                        	</table>
                                        </div>
                                       
                                        
                                    </div>
                                    <br>
                                    
                                    
                                    <!-- 결재자 선택 모달창 -->
	                              <div class="modal fade" id="superModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true ">
	                                    <div class="modal-dialog" role="document">
	                                        <div class="modal-content">
	                                            <div class="modal-header">
	                                                <h5 class="modal-title" id="exampleModalLabel">결재자 선택</h5>
	                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                                                    <span aria-hidden="true ">&times;</span>
	                                                </button>
	                                            </div>
	                                            <div class="modal-body">
	                                                <div class="card">
	                                                    <div class="table-responsive">
		                                                        <table id="superModalTable2" class="table text-center">
		                                                        <thead>
		                                                            <tr>
			                                                            <th scope="col">#</th>
			                                                            <th scope="col">성명</th>
			                                                            <th scope="col">부서</th>
			                                                            <th scope="col">직책</th>
		                                                            </tr>
		                                                        </thead>
		                                                        <tbody>
		                                                        	<c:forEach var="a" items="${ allMember }">
			                                                        	<tr>
				                                                            <td><input type="checkbox" name="checkSuper2" value="${ a.memberNo }" /></td>
				                                                            <td>${ a.name }</td>
				                                                            <td>${ a.deName }</td>
				                                                            <td>${ a.poName }</td>
			                                                            </tr>
		                                                        	</c:forEach>
		                                                        </tbody>
		                                                        </table>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                            <div class="modal-footer">
                                                    <button type="button" class="btn btn-warning" id="superBtn2" data-dismiss="modal">선택완료</button>
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                </div>
	                                        </div>
	                                    </div>
	                                </div>
	                                    

                                    <br>
                                    
                                    
                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">작성자</label>
                                        <div class="col-sm-2">
                                            <input type="text" class="form-control" id="fname" value="${ loginUser.memberName }" readonly>
                                        </div>
                                    
                                        <label class="text-right col-md-2 m-t-15" style="display: inline-block;">작성일자</label>
                                        <div class="input-group col-md-2" style="display: inline-block;">
                                            <input type="text" class="form-control" value="<fmt:formatDate value='${now}' pattern='yyyy/MM/dd'/>" style="width: 120px; display: inline-block;" readonly>
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
                                                		<option value="${ d.disTypeNo }">${ d.type}</option>
                                                	</c:forEach>
                                            </select>
                                        </div>

                                        <label class="text-right col-md-2 m-t-15">지급조건</label>
                                        <div class="col-md-2" style="display: inline-block;">
                                            <select class="select2 form-control custom-select" style="width: 100%; height:36px;" name="terms" id="terms">
                                                <option value="">Select</option>
                                                <option value="현금">현금</option>
                                                <option value="계좌이체">계좌이체</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">계좌번호</label>
                                        <div class="col-md-3">
                                            <select class="select2 form-control custom-select" style="width: 100%; height:36px;" name="bank" id="bank">
                                                <option value="">은행명</option>
                                                    <option value="신한">신한</option>
                                                    <option value="우리">우리</option>
                                                    <option value="농협">농협</option>
                                            </select>
                                        </div>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" placeholder="계좌번호(숫자만 입력)" name="account" id="account">
                                        </div>
                                    </div>
                                    <br>
                                    <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">합계금액</label>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" placeholder="총 합계 금액(숫자만 입력)" name="payment" id="payment">
                                        </div>
                                    </div>

                                    <hr>
                                    
                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">제목(필수)</label>
                                        <div class="col-sm-6">
                                            <input type="text" class="form-control" placeholder="제목을 입력하세요(3~30자)" name="title" id="title2">
                                        </div>
                                    </div>
                                    
                                    <!-- 결재기안서 상세내용 기입테이블 -->
                                    <div class="col-sm-12" style="margin:auto;">
                                        <label for="table" class="col-sm-3 text-left control-label col-form-label">내역</label>
                                        <div class="col-md-3 text-right" style="float: right;">
                                        	<label class="control-label col-form-label">행 갯수 선택  : </label>
                                            <select class="select2 form-control custom-select" style="width: 100px; height:26px; font-size: 12px;" id="rowSelect">
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
                                              
                                              	<c:forEach var="i" begin="1" end="3">
                                              		<tr>
	                                                  <th scope="row">${ i }</th>
	                                                  <td>
	                                                    <input type="text" class="form-control datepicker-autoclose" placeholder="mm/dd/yyyy" 
	                                                    	style="width: 80px; height: 30px; display: inline-block; font-size: 70%;" name="paydate">
	                                                  </td>
	                                                  <td>
	                                                    <select class="select2 form-control" style="width: 100%; height: 30px; font-size: 70%;" name="subjectNo">
	                                                        <option value="">과목선택</option>
	                                                        <c:forEach var="s" items="${ subject }">
	                                                        	<option value="${ s.subjectNo }">${ s.subject }</option>
	                                                        </c:forEach>
	                                                    </select>
	                                                  </td>
	                                                  <td>
	                                                    <input type="text" class="form-control" id="fname" placeholder="내용작성" style="font-size: 70%; height: 30px;" name="disContent">
	                                                  </td>
	                                                  <td>
	                                                    <input type="text" class="form-control" id="fname" placeholder="거래처" style="font-size: 70%; height: 30px;" name="client">
	                                                  </td>
	                                                  <td>
	                                                    <input type="text" class="form-control text-right" id="fname" placeholder="금액: 숫자만 입력" style="font-size: 70%; height: 30px;" name="price">
	                                                  </td>
	                                                  <td>
	                                                    <select class="select2 form-control" style="width: 110%; height: 30px; font-size: 70%;" name="methodNo">
	                                                        <option value="">수단선택</option>
	                                                        <c:forEach var="m" items="${ method }">
	                                                        	<option value="${ m.methodNo }">${ m.method }</option>
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
                                                <label class="custom-file-label" for="validatedCustomFile">Choose file...</label>
                                                <div class="invalid-feedback">Example invalid custom file feedback</div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="border-top">
                                    <div class="card-body text-right">
                                        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#Modal03" >Submit</button>
                                        <button type="submit" class="btn btn-danger" >Cancel</button>
                                    
                                        <!-- Modal03 -->
                                        <div class="modal fade" id="Modal03" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">결재신청</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body text-left">
                                                        승인 요청을 하시겠습니까?
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-warning" id="submitBtn2">결재신청</button>
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

    /*select enroll Form*/
    $(document).ready(function(){
        $('#enrollVacation').hide();
        $('#enrollPay').hide();
    });
    $('#enrollPayBtn').click(function(){
        $('#enrollVacation').hide();
        $('#enrollPay').show();
    });
    $('#enrollVacationBtn').click(function(){
        $('#enrollVacation').show();
        $('#enrollPay').hide();
    });
    
    
    /* select superVisor Ajax */
    
   	$("#superBtn").click(function(){
   		var superArray = new Array();
   		$("input[name='checkSuper']:checked").each(function(){
   			superArray.push($(this).val());
   		})
   		var data = { "superArray": superArray.join(",") };
   		// console.log(data);
   		
   		$.get('superArray.app', data)
   		.done(function (res){
   			// console.log(res);
   			
   			var changeTable = '';
   			
   			for(var i in res.data){
   				changeTable += '<tr>'+
   						  '<td>'+ res.data[i].name + '</td>' +
   						  '</tr>';
   			}
   			changeTable += '<input type="hidden" name="superArray" value="'+ superArray.join(",") +'" />'
   			
   			$('#superTable tbody').html(changeTable);
   		})
   		.fail(function (err){
   			console.log('superAjax 실패');
   		})
   		
   	})
   	
   	$("#superBtn2").click(function(){
   		var superArray = new Array();
   		$("input[name='checkSuper2']:checked").each(function(){
   			superArray.push($(this).val());
   		})
   		var data = { "superArray": superArray.join(",") };
   		// console.log(data);
   		
   		$.get('superArray.app', data)
   		.done(function (res){
   			// console.log(res);
   			
   			var changeTable = '';
   			
   			for(var i in res.data){
   				changeTable += '<tr>'+
   						  '<td>'+ res.data[i].name + '</td>' +
   						  '</tr>';
   			}
   			changeTable += '<input type="hidden" name="superArray" value="'+ superArray.join(",") +'" />'
   			
   			$('#superTable2 tbody').html(changeTable);
   		})
   		.fail(function (err){
   			console.log('superAjax 실패');
   		})
   		
   	})
   
    
    
    /* select Approval reason Ajax */
    
    $(function(){
    	$("#selectReason").on('change', function(){
    		
    		if(this.value !== ""){
    			var typeNo = $(this).find(":selected").val();
    			var data = { typeNo: typeNo };
	    		
	    		$.get('reportReason.app', data)
	    		.done(function (res) {
	    			//console.log(res);
                    
    				var select= '<select class="select2 form-control custom-select" style="width: 100%; height:36px;" id="reason" name="reasonNo">' +
                    				'<option value="">Select</option>'+"<br>";
    				for(var i in res.data){
    					select += '<option value="'+ res.data[i].reasonNo +'">'+ res.data[i].reason;	
    				}
    				$("#reasonList").html(select);
	    		})
	    		.fail(function (err) {
	    			console.log("selectReason ajax 실패");	
	    		})
    		
    		}
    	});
    })

    
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
    
    $('#submitBtn1').click(function(){
    	
    	var selectReason = document.getElementById("selectReason");
    	var beginDate = document.getElementById("beginDate1");
    	var endDate = document.getElementById("endDate1");
    	var reason = document.getElementById("reason");
    	var title = document.getElementById("title1");
    	var content = document.getElementById("content1");
    	var superArray = document.getElementsByName("superArray");
    	
    	// console.log(selectReason.options[selectReason.selectedIndex].value);
    	// console.log(reason.options[reason.selectedIndex].value);
    	// console.log(beginDate.value);
    	// console.log(endDate.value);
    	// console.log(title.value);
    	// console.log(content.value);
    	// console.log(superArray.length);
    	
    	if(selectReason.options[selectReason.selectedIndex].value == 0){
    		alert("보고서 종류를 선택해주십시오");
    		return false;
    	}
    	if(reason.options[reason.selectedIndex].value == 0){
    		alert("사유를 선택해주십시오");
    		return false;
    	}
    	if( beginDate.value == ""){
    		alert("날짜는 필수 항목입니다. 지정해주십시오.");
    		return false;
    	}
    	if(endDate.value != "" && beginDate.value > endDate.value){
    		alert("종료날짜는 시작날짜보다 클 수 없습니다.");
    		endDate.value="";
    		return false;
    	}
    	if(!check(re,title,"제목은 3~30자 이내로 작성해주십시오")){
    		return false;
    	}
    	if(!check(reCon,content,"내용은 3~1000자 이내로 작성해주십시오")){
    		return false;
    	}
    	if(superArray.length == 0){
    		alert("결재요청을 받을 직원을 선택해주십시오");
    		return false;
    	}
    	
    	document.getElementById('enrollVaForm').submit();
    	
    });
  
	$('#submitBtn2').click(function(){
    	
    	var disType = document.getElementById("disType");
    	var terms = document.getElementById("terms");
    	var bank = document.getElementById("bank");
    	
    	var account = document.getElementById("account");
    	var payment = document.getElementById("payment");
    	var title = document.getElementById("title2");
    	
    	var superArray = document.getElementsByName("superArray");
    	
    	var paydate = document.getElementsByName("paydate");
    	var subjectNo = document.getElementsByName("subjectNo");
    	var disContent = document.getElementsByName("disContent");
    	var client = document.getElementsByName("client");
    	var price = document.getElementsByName("price");
    	var methodNo = document.getElementsByName("methodNo");

    	
    	/* console.log(disType.options[selectReason.selectedIndex].value);
    	console.log(terms.options[terms.selectedIndex].value);
    	console.log(bank.options[bank.selectedIndex].value);
    	console.log(account.value);
    	console.log(payment.value);
    	console.log(title.value);
    	console.log(superArray.length); */
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
    	if(superArray.length == 0){
    		alert("결재요청을 받을 직원을 선택해주십시오");
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
    	
    	
    	document.getElementById('enrollDisForm').submit();
    	
    });
    
    /****************************************
     *       Basic Table                   *
     ****************************************/
     $('#superModalTable').DataTable({
         "lengthMenu": [[5, 10, 15, -1], [5, 10, 15, "All"]]
     });
        
    </script>
    
</div>

</body>
</html>
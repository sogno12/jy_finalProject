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
	
	      <div class="page-wrapper">
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">GeneralAffairs</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">GeneralAffairs</li>
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
                                <h4 class="card-title">회의실 예약 확인</h4>
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
                                                <th colspan="2" scope="col">STATUS</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody class="customtable bTableList">
                                        <c:forEach items="${ blist }" var="b">
                                        <input type="hidden" value="${b.roomNo }" name="roomNo">
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
                                                <td>${ b.reportingDate }</td>
                                                <c:if test="${ b.status eq 'N' }">
                                                	<td>
                                               		 <button type="submit" class="submitbtn">승인하기</button>
                                               		 </td>
                                               	</c:if>
                                               	<c:if test="${ b.status eq 'Y' }">
                                               		<td>승인</td>
                                               	</c:if>
                                                <td><button onclick="selectBroom(${b.roomNo});" data-toggle="modal" data-target="#detailview">회의실 정보</button></td> 
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div> 
                        </div>

                        <div class="modal" id="detailview">
                            <div style="width:700px; height:300px; background:white; margin:auto; margin-top:100px;">
                                <div class="card">
                                    <form class="form-horizontal">
                                        <div class="card-body">
                                            <h4 class="card-title">회의실 정보</h4>
                                            <div class="form-group row">
                                                <label for="lname" class="col-sm-3 text-right control-label col-form-label">BUSINESSROOM</label>
                                                <div class="col-sm-9">
                                                    <P id="roomNo" class="col-sm-3" style="margin:5px;"></P>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="lname" class="col-sm-3 text-right control-label col-form-label">COUNT</label>
                                                <div class="col-sm-9">
                                                    <P id="count" class="col-sm-3" style="margin:5px;"></P>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="email1" class="col-sm-3 text-right control-label col-form-label">POSITION</label>
                                                <div class="col-sm-9">
                                                    <P id="position" class="col-sm-3" style="margin:5px;"></P>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="border-top">
                                            <div class="card-body text-right">
                                                <button type="button" class="btn btn-info" id="businessbtn"  data-dismiss="modal">확인</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        
                        <script>
                        	
                        	function selectBroom(roomNo){
                        		
                        		var roomNo = roomNo;
                        		// console.log(roomNo);
                        		
                        		$.ajax({
                        			url:"generalDetailList.ge",
                        			data:{roomNo:roomNo},
                        			success:function(bi){
                        				// console.log(bi);
                        				
                        				$("#roomNo").text(bi.roomName);
                        				$("#count").text(bi.roomCount + "인");
                        				$("#position").text(bi.position);
                        				
                        			}, error:function(){
                        				console.log("ajax통신실패");
                        			}
                        		});
                        		
                        		
                        	}
                        </script>

                        <!--============================================================================-->

                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">명함 예약 확인</h4>
                                    <div class="table-responsive">
                                        <table class="table">
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
                                            <tbody class="customtable">
                                                <tr>
                                                    <th>
                                                        <label class="customcheckbox">
                                                            <input type="checkbox" class="listCheckbox" />
                                                            <span class="checkmark"></span>
                                                        </label>
                                                    </th>
                                                    <td>3</td>
                                                    <td>YellowType</td>
                                                    <td>2020-03-18</td>
                                                    <td>미승인</td>
                                                    <td><button data-toggle="modal" data-target="#detailviewName">상세보기</button> <button type="submit" class="submitbtn">승인하기</button></td>
                                                </tr>
                                                <tr>
                                                    <th>
                                                        <label class="customcheckbox">
                                                            <input type="checkbox" class="listCheckbox" />
                                                            <span class="checkmark"></span>
                                                        </label>
                                                    </th>
                                                    <td>2</td>
                                                    <td>YellowType</td>
                                                    <td>2020-03-18</td>
                                                    <td>미승인</td>
                                                    <td><button data-toggle="modal" data-target="#detailviewName">상세보기</button> <button type="submit" class="submitbtn">승인하기</button></td>
                                                </tr>
                                                <tr>
                                                    <th>
                                                        <label class="customcheckbox">
                                                            <input type="checkbox" class="listCheckbox" />
                                                            <span class="checkmark"></span>
                                                        </label>
                                                    </th>
                                                    <td>1</td>
                                                    <td>YellowType</td>
                                                    <td>2020-03-18</td>
                                                    <td>2020-03-25</td>
                                                    <td style="color:red; font-weight:bold">승인</td>
                                                </tr>
                                               
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div> 
                            </div>

                            
                        <div class="modal" id="detailviewName">
                            <div style="width:700px; height:400px; background:white; margin:auto; margin-top:100px;">
                                <div class="card">
                                    <form class="form-horizontal">
                                        <div class="card-body">
                                            <h4 class="card-title">명함신청 정보</h4>
                                            <div class="form-group row">
                                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">NO</label>
                                                <div class="col-sm-9">
                                                    <p class="col-sm-3" style="margin:5px;">1</p>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label for="lname" class="col-sm-3 text-right control-label col-form-label">사번</label>
                                                <div class="col-sm-9">
                                                    <P class="col-sm-3" style="margin:5px;">12345</P>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="email1" class="col-sm-3 text-right control-label col-form-label">부서</label>
                                                <div class="col-sm-9">
                                                    <P class="col-sm-3" style="margin:5px;">기획팀</P>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="cono1" class="col-sm-3 text-right control-label col-form-label">직급</label>
                                                <div class="col-sm-9">
                                                    <P class="col-sm-3" style="margin:5px;">대리</P>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="lname" class="col-sm-3 text-right control-label col-form-label">사원명</label>
                                                <div class="col-sm-9">
                                                    <P class="col-sm-3" style="margin:5px;">홍길동</P>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="cono1" class="col-sm-3 text-right control-label col-form-label">핸드폰 번호</label>
                                                <div class="col-sm-9">
                                                    <P class="col-sm-5" style="margin:5px;">010-0000-0000</P>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="cono1" class="col-sm-3 text-right control-label col-form-label">EMAIL</label>
                                                <div class="col-sm-9">
                                                    <P class="col-sm-5" style="margin:5px;">aaa@gmail.com</P>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="cono1" class="col-sm-3 text-right control-label col-form-label">팩스 번호</label>
                                                <div class="col-sm-9">
                                                    <P class="col-sm-3" style="margin:5px;">02-000-0000</P>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="cono1" class="col-sm-3 text-right control-label col-form-label">시안</label>
                                                <div class="col-sm-9">
                                                    <P class="col-sm-3" style="margin:5px;"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/namecard/NAMECARD1.png" alt="namecard1" width="300px;" height="150px;"/></P>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="border-top">
                                            <div class="card-body text-right">
                                                <button type="button" class="btn btn-info" id="businessbtn"  data-dismiss="modal">확인</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                               

                            </div>
                        </div>
             
                </div>
            </div>
		<jsp:include page="../common/footer.jsp"/>
        </div>
	
	</div>
	
	<!-- This Page JS -->
    <script src="../../assets/libs/inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
    <script src="../../dist/js/pages/mask/mask.init.js"></script>
    <script src="../../assets/libs/select2/dist/js/select2.full.min.js"></script>
    <script src="../../assets/libs/select2/dist/js/select2.min.js"></script>
    <script src="../../assets/libs/jquery-asColor/dist/jquery-asColor.min.js"></script>
    <script src="../../assets/libs/jquery-asGradient/dist/jquery-asGradient.js"></script>
    <script src="../../assets/libs/jquery-asColorPicker/dist/jquery-asColorPicker.min.js"></script>
    <script src="../../assets/libs/jquery-minicolors/jquery.minicolors.min.js"></script>
    <script src="../../assets/libs/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="../../assets/libs/quill/dist/quill.min.js"></script>
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

        $(function(){
            $(".submitbtn").click(function(){
                confirm("승인하시겠습니까?");
            });
        });
    </script>
	

</body>
</html>
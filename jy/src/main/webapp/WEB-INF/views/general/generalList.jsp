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
                                                <th scope="col">REPORTING DATE</th>
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
                                                <td>
                                                	
                                                	<c:if test="${ b.status eq 'N' }">
                                               		 	<button onclick="broomSub(${b.meetingNo}, this);" type="submit" class="submitbtn">승인하기</button>
                                               		</c:if>
                                               		<c:if test="${ b.status eq 'Y' }">승인</c:if>
                                                </td>
                                                <td>
                                               		&nbsp;&nbsp;&nbsp;
                                                	<button onclick="selectBroom(${b.roomNo});" data-toggle="modal" data-target="#detailview">회의실 정보</button>
                                                </td> 
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div> 
                        <div id="pagingArea">
				                <ul class="pagination">
				                   <c:choose>
				                		<c:when test="${ pb.currentPage eq 1 }">
					                    	<li class="badge badge-light disabled"><a class="page-link" href="">Previous</a></li>
				                		</c:when>
				                		<c:otherwise>
				                			<li class="badge badge-light"><a class="page-link" href="generalList.ge?bcurrentPage=${ pb.currentPage-1 }&ncurrentPage=${ pn.currentPage }">Previous</a></li>
				                		</c:otherwise>
				                	</c:choose>
				                    
				                    <%-- <% for(int p=startPage; p<=endPage; p++) %> --%>
				                    <c:forEach begin="${ pb.startPage }" end="${ pb.endPage }" var="p"> 
				                    	
				                    	<c:choose>
				                    		<c:when test="${ pb.currentPage ne p }">
				                    			<li class="badge badge-light"><a class="page-link" href="generalList.ge?bcurrentPage=${ p }&ncurrentPage=${ pn.currentPage }">${ p }</a></li>
				                    		</c:when>
				                    		<c:otherwise>
				                    			<li class="badge badge-light disabled"><a class="page-link" href="">${ p }</a></li>
				                    		</c:otherwise>
				                    	</c:choose>
				                    	
				                    </c:forEach>
				                    
				                    <c:choose>
				                    	<c:when test="${ pb.currentPage eq pb.maxPage }">
				                    		<li class="badge badge-light disabled"><a class="page-link" href="">Next</a></li>
				                    	</c:when>
				                    	<c:otherwise>
					                    	<li class="badge badge-light"><a class="page-link" href="generalList.ge?currentPage=${pb.currentPage+1}&ncurrentPage=${ pn.currentPage }">Next</a></li>
				                    	</c:otherwise>
				                    </c:choose>
				                </ul>
				            </div>
                        
                        
                        
                        
                        </div>
                        
                        <script>
                        	function broomSub(meetingNo, tar){
                        		
                        	/* 	console.log(roomNo);
                        		console.log(meetingNo);
                        		console.log(count);
                        		console.log(hopeDate);
                        		console.log(time);
                        		console.log(reportingDate);  */
                        		
                        		
                        		
                        		$.ajax({
                        			url:"broomUpdate.br",
                        			data:{meetingNo:meetingNo},
                        			success:function(){
                        				
                        				confirm("승인하시겠습니까?");
                        				$(tar).parent().text("승인");
                        				
                        			},error:function(){
                        				console.log("ajax통신실패");
                        			}
                        		}); 
                        	}
                        
                        </script>

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
                                                    <th scope="col">NAMECARD TYPE</th>
                                                    <th scope="col">REPORTING DATE</th>
                                                    <th colspan="2" scope="col">STATUS</th>
                                                </tr>
                                            </thead>
                                            <tbody class="customtable">
                                            <c:forEach items="${nlist }" var="n">
                                                <tr>
                                                    <th>
                                                        <label class="customcheckbox">
                                                            <input type="checkbox" class="listCheckbox" />
                                                            <span class="checkmark"></span>
                                                        </label>
                                                    </th>
                                                    <td>${n.namecardNo }</td>
                                                    <td>
	                                                    <c:if test="${n.contentType eq 'namecard1' }">
	                                                    	<img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/namecard/NAMECARD1.png" alt="namecard1" width="90px;" height="40px;"/>
	                                                    </c:if>
	                                                    <c:if test="${n.contentType eq 'namecard2' }">
	                                                    	<img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/namecard/NAMECARD2.png" alt="namecard2" width="90px;" height="40px;"/>
	                                                    </c:if>
                                                    </td>
                                                    <td>${n.reportingDate }</td>
                                                    <td>
                                                    	<c:if test="${n.status eq 'Y' }">승인</c:if>
                                                    	<c:if test="${n.status eq 'N' }">
                                                    		<button onclick="ncSub(${n.namecardNo}, this);" type="submit" class="submitbtn">승인하기</button>
                                                    	</c:if>
                                                    </td>
                                                    <td>
                                                    	
                                                    	<button onclick="selectNcDetail(${n.namecardNo});" data-toggle="modal" data-target="#detailviewName">상세보기</button>
                                                    </td>
                                                </tr>
                                              </c:forEach> 
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div> 
                            <div id="pagingArea">
				                <ul class="pagination">
				                   <c:choose>
				                		<c:when test="${ pn.currentPage eq 1 }">
					                    	<li class="badge badge-light disabled"><a class="page-link" href="">Previous</a></li>
				                		</c:when>
				                		<c:otherwise>
				                			<li class="badge badge-light"><a class="page-link" href="generalList.ge?ncurrentPage=${ pn.currentPage-1 }&bcurrentPage=${ pb.currentPage }">Previous</a></li>
				                		</c:otherwise>
				                	</c:choose>
				                    
				                    <%-- <% for(int p=startPage; p<=endPage; p++) %> --%>
				                    <c:forEach begin="${ pn.startPage }" end="${ pn.endPage }" var="p"> 
				                    	
				                    	<c:choose>
				                    		<c:when test="${ pn.currentPage ne p }">
				                    			<li class="badge badge-light"><a class="page-link" href="generalList.ge?ncurrentPage=${ p }&bcurrentPage=${ pb.currentPage }">${ p }</a></li>
				                    		</c:when>
				                    		<c:otherwise>
				                    			<li class="badge badge-light disabled"><a class="page-link" href="">${ p }</a></li>
				                    		</c:otherwise>
				                    	</c:choose>
				                    	
				                    </c:forEach>
				                    
				                    <c:choose>
				                    	<c:when test="${ pn.currentPage eq pn.maxPage }">
				                    		<li class="badge badge-light disabled"><a class="page-link" href="">Next</a></li>
				                    	</c:when>
				                    	<c:otherwise>
					                    	<li class="badge badge-light"><a class="page-link" href="generalList.ge?ncurrentPage=${pn.currentPage+1}&bcurrentPage=${ pb.currentPage }">Next</a></li>
				                    	</c:otherwise>
				                    </c:choose>
				                </ul>
				            </div>
                            
                            
                            
                            
                            </div>
                            
                            <script>
                            
                            	function selectNcDetail(namecardNo){
                            		
                            		var namecardNo = namecardNo;
                            		 console.log(namecardNo);
                            		 
                            		$.ajax({
                            			url:"namecardDetail.na",
                            			data:{namecardNo:namecardNo},
                            			success:function(ge){
                            				
                            				$("#namecardNo").text(ge.namecardNo);
                            				$("#empNo").text(ge.empNo);
                            				$("#departmentName").text(ge.departmentName);
                            				$("#positionName").text(ge.positionName);
                            				$("#memberName").text(ge.name);
                            				$("#phone").text(ge.phone);
                            				$("#email").text(ge.email);
                            				//$("#contentType").text(ge.contentType);
                            				
                            				
                            				
                            				 var memNo="<c:out value='${ pageContext.servletContext.contextPath }'/>";
                            				
                            				var contentType = ge.contentType;
                            				contentType = contentType.toUpperCase();
                            				
                            				var contentType2 = ge.contentType;
                            				contentType2 = contentType2.toLowerCase();
                            				
                            			/* 	console.log(memNo);
                            				console.log(contentType);
                            				console.log(contentType2); */
                            				
                            				var i = 0;
                            				
                            				var i = "<P id='contentType' class='col-sm-3' style='margin:5px;'><img src='" + memNo +  "/resources/images/hajin/namecard/" + 
                            				contentType + ".png' alt='" + contentType2 + "'width='300px;' height='150px;'/></P>"
                            				
                            		
                            				$("#type").html(i);
                            						
                            			}, error:function(){
                            				console.log("ajax통신실패");
                            			}
                            			
                            		});
                            	}
                            	
                            	function ncSub(namecardNo, tar){
                            		
                            		$.ajax({
                            			url:"nameUpdate.nc",
                            			data:{namecardNo:namecardNo},
                            			success:function(){
                            				
                            				confirm("승인하시겠습니까?");
                            				$(tar).parent().text("승인");
                            				console.log("성공");
                            				
                            				
                            			},error:function(){
                            				console.log("실패");
                            			}
                            		});
                            	}
                            	
                            	
                            	
                            	
                            
                            </script>

                            
                        <div class="modal" id="detailviewName">
                            <div style="width:700px; height:400px; background:white; margin:auto; margin-top:100px;">
                                <div class="card">
                                    <form class="form-horizontal">
                                        <div class="card-body">
                                            <h4 class="card-title">명함신청 정보</h4>
                                            <div class="form-group row">
                                                <label for="fname" class="col-sm-3 text-right control-label col-form-label">NO</label>
                                                <div class="col-sm-9">
                                                    <p id="namecardNo" class="col-sm-3" style="margin:5px;"></p>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label for="lname" class="col-sm-3 text-right control-label col-form-label">사번</label>
                                                <div class="col-sm-9">
                                                    <P id="empNo" class="col-sm-3" style="margin:5px;"></P>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="email1" class="col-sm-3 text-right control-label col-form-label">부서</label>
                                                <div class="col-sm-9">
                                                    <P id="departmentName" class="col-sm-3" style="margin:5px;"></P>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="cono1" class="col-sm-3 text-right control-label col-form-label">직급</label>
                                                <div class="col-sm-9">
                                                    <P id="positionName" class="col-sm-3" style="margin:5px;"></P>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="lname" class="col-sm-3 text-right control-label col-form-label">사원명</label>
                                                <div class="col-sm-9">
                                                    <P id="memberName" class="col-sm-3" style="margin:5px;"></P>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="cono1" class="col-sm-3 text-right control-label col-form-label">핸드폰 번호</label>
                                                <div class="col-sm-9">
                                                    <P id="phone" class="col-sm-5" style="margin:5px;"></P>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="cono1" class="col-sm-3 text-right control-label col-form-label">EMAIL</label>
                                                <div class="col-sm-9">
                                                    <P id="email" class="col-sm-5" style="margin:5px;"></P>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="cono1" class="col-sm-3 text-right control-label col-form-label">시안</label>
                                                <div class="col-sm-9" id="type">
                                                    <P id="contentType" class="col-sm-3" style="margin:5px;"></P>
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

       
    </script>
	

</body>
</html>
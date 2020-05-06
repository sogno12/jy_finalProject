<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		                        <!-- Tabs -->
		                        <div class="card">
		                            <h4 class="card-title" style="font-weight:bold;">CafeTeria</h4>
		                            <hr>
		                            
		                            <!-- Tab panes -->
		                            <div class="tab-content tabcontent-border">
		                                <div class="tab-pane active" id="home" role="tabpanel">
		                                    <div class="p-20">
		                                        <div style="display:inline-block; margin-right:30px;">
		                                       <input type="checkbox"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/americano.png" width="100px;" height="100px;">
		                                       <p class="card-title">아메리카노</p>
		                                       <input type="number" class="form-control" style="width:80px;"> 
		                                       <select class="form-control" style="width:80px;">
		                                           <option>Hot</option>
		                                           <option>Ice</option>
		                                       </select>
		                                        </div>
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/cafelatte.png" width="100px;" height="100px;">
		                                            <p class="card-title">카페라떼</p>
		                                            <input type="number" class="form-control" style="width:80px;">
		                                            <select class="form-control" style="width:80px;">
		                                                <option>Hot</option>
		                                                <option>Ice</option>
		                                            </select>
		                                        </div>
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/cafemocha.png" width="100px;" height="100px;">
		                                            <p class="card-title">카페모카</p>
		                                            <input type="number" class="form-control" style="width:80px;">
		                                            <select class="form-control" style="width:80px;">
		                                                <option>Hot</option>
		                                                <option>Ice</option>
		                                            </select>
		                                        </div>
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/caramel.png" width="100px;" height="100px;">
		                                            <p class="card-title">카라멜 마끼야또</p>
		                                            <input type="number" class="form-control" style="width:80px;">
		                                            <select class="form-control" style="width:80px;">
		                                                <option>Hot</option>
		                                                <option>Ice</option>
		                                            </select>
		                                        </div>
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/cappuccino.png" width="100px;" height="100px;">
		                                            <p class="card-title">카푸치노</p>
		                                            <input type="number" class="form-control" style="width:80px;">
		                                            <select class="form-control" style="width:80px;">
		                                                <option>Hot</option>
		                                                <option>Ice</option>
		                                            </select>
		                                        </div>
		                                        <hr>
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/vanila.png" width="100px;" height="100px;">
		                                            <p class="card-title">바닐라라떼</p>
		                                            <input type="number" class="form-control" style="width:80px;">
		                                            <select class="form-control" style="width:80px;">
		                                                <option>Hot</option>
		                                                <option>Ice</option>
		                                            </select>
		                                        </div>
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/cinnamon.png" width="100px;" height="100px;">
		                                            <p class="card-title">시나몬라떼</p>
		                                            <input type="number" class="form-control" style="width:80px;">
		                                            <select class="form-control" style="width:80px;">
		                                                <option>Hot</option>
		                                                <option>Ice</option>
		                                            </select>
		                                        </div>
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/espresso.png" width="100px;" height="100px;">
		                                            <p class="card-title">에스프레소</p>
		                                            <input type="number" class="form-control" style="width:80px;">
		                                            <select class="form-control" style="width:80px;">
		                                                <option>Hot</option>
		                                                <option>Ice</option>
		                                            </select>
		                                        </div>
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/hotchocolate.png" width="100px;" height="100px;">
		                                            <p class="card-title">핫 초콜릿</p>
		                                            <input type="number" class="form-control" style="width:80px;">
		                                            <select class="form-control" style="width:80px;">
		                                                <option>Hot</option>
		                                                <option>Ice</option>
		                                            </select>
		                                        </div>
		                                        <hr>
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/blacktea.png" width="100px;" height="100px;">
		                                            <p class="card-title">블랙 티 얼그레이</p>
		                                            <input type="number" class="form-control" style="width:80px;">
		                                            <select class="form-control" style="width:80px;">
		                                                <option>Hot</option>
		                                                <option>Ice</option>
		                                            </select>
		                                        </div>
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/hearbtea.png" width="100px;" height="100px;">
		                                            <p class="card-title">허브 티 캐모마일</p>
		                                            <input type="number" class="form-control" style="width:80px;">
		                                            <select class="form-control" style="width:80px;">
		                                                <option>Hot</option>
		                                                <option>Ice</option>
		                                            </select>
		                                        </div>
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/peppermint.png" width="100px;" height="100px;">
		                                            <p class="card-title">허브 티 페퍼민트</p>
		                                            <input type="number" class="form-control" style="width:80px;">
		                                            <select class="form-control" style="width:80px;">
		                                                <option>Hot</option>
		                                                <option>Ice</option>
		                                            </select>
		                                        </div>
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/rosemary.png" width="100px;" height="100px;">
		                                            <p class="card-title">허브 티 로즈마리</p>
		                                            <input type="number" class="form-control" style="width:80px;">
		                                            <select class="form-control" style="width:80px;">
		                                                <option>Hot</option>
		                                                <option>Ice</option>
		                                            </select>
		                                        </div>
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/jasmine.png" width="100px;" height="100px;">
		                                            <p class="card-title">허브 티 쟈스민</p>
		                                            <input type="number" class="form-control" style="width:80px;">
		                                            <select class="form-control" style="width:80px;">
		                                                <option>Hot</option>
		                                                <option>Ice</option>
		                                            </select>
		                                        </div>
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/honeyed.png" width="100px;" height="100px;">
		                                            <p class="card-title">아카시아 꿀차</p>
		                                            <input type="number" class="form-control" style="width:80px;">
		                                            <select class="form-control" style="width:80px;">
		                                                <option>Hot</option>
		                                                <option>Ice</option>
		                                            </select>
		                                        </div>
		                                        <hr>
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/plain.png" width="100px;" height="100px;">
		                                            <p class="card-title">플레인 요거트 스무디</p>
		                                            <input type="number" class="form-control" style="width:80px;">
		                                        </div>
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/premium.png" width="100px;" height="100px;">
		                                            <p class="card-title">프리미엄 요거트 스무디</p>
		                                            <input type="number" class="form-control" style="width:80px;">
		                                        </div>
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/blackpremium.png" width="100px;" height="100px;">
		                                            <p class="card-title">프리미엄 스무디 블루베리</p>
		                                            <input type="number" class="form-control" style="width:80px;">
		                                        </div>
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/citronpremiun.png" width="100px;" height="100px;">
		                                            <p class="card-title">프리미엄 스무디 유자</p>
		                                            <input type="number" class="form-control" style="width:80px;">
		                                        </div>
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/strawberrysmo.png" width="100px;" height="100px;">
		                                            <p class="card-title">과일 스무디 딸기</p>
		                                            <input type="number" class="form-control" style="width:80px;">
		                                        </div>
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/mangosmo.png" width="100px;" height="100px;">
		                                            <p class="card-title">과일 스무디 망고</p>
		                                            <input type="number" class="form-control" style="width:80px;">
		                                        </div>
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/persimmonsmo.jpg" width="100px;" height="100px;">
		                                            <p class="card-title">홍시 스무디</p>
		                                            <input type="number" class="form-control" style="width:80px;">
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="tab-pane  p-20" id="profile" role="tabpanel">
		                                    <div class="p-20">
		                                      
		                                    </div>
		                                </div>
		                                <div class="tab-pane p-20" id="messages" role="tabpanel">
		                                    <div class="p-20">
		                                        
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="border-top">
		                                <div class="card-body text-right">
		                                    <button type="button" class="btn btn-info" id="cafeorder">Order</button>
		                                    <button type="submit" class="btn btn-danger">Cancel</button>
		                                </div>
		                            </div>
		                        </div>
		         
		                </div>
		            </div>
		        </div>
		    </div>

    <jsp:include page="../../common/footer.jsp"/>
</div>

</body>
</html>
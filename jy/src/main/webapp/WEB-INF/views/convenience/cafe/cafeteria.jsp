<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cabin:ital@1&display=swap" rel="stylesheet">
<style>
	.cafebtn{
	  -webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	  -moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	  -ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	  -o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	  transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	  display: block;
	  margin: 5px auto;
	  max-width: 80px;
	  text-decoration: none;
	  border-radius: 4px;
	  padding: 5px 10px;
	  color: rgba(30, 22, 54, 0.6);
	  border:0;
	  outline:none;
	}
	
	.cafebtn:hover {
		color: rgba(255, 255, 255, 0.85);
		box-shadow: rgba(30, 22, 54, 0.7) 0 0px 0px 40px inset;
	}
	
	.menubar{
		display:inline-block;
	}
	
	.orderDetailView{
		display:inline-block;
		width:500px;
		height:400px;
		padding:10px;
		background:#EEEEEE;
		border-radius:5px;
		font-family: 'Cabin', sans-serif;
		font-weight:bold;
	}
	.cafeOrder(){
		font-family: 'Cabin', sans-serif;
		font-weight:bold;
	}

</style>
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
		                            <h1 class="card-title" style="font-weight:bold; font-family: 'Pacifico', cursive; text-align:center;">-------------- CafeTeria --------------</h1>
		                            <hr>
		                            
		                            <!-- Tab panes -->
		                            <div class="tab-content tabcontent-border">
		                                <div class="tab-pane active" id="home" role="tabpanel">
		                                    <div class="p-20">
		                                    <form id="ameForm" class="menubar" action="insertAme.ca" enctype="multipart/form-data">
		                                    	<input type="hidden" value="${loginUser.memberNo }" name="memberNo">
		                                        <div style="display:inline-block; margin-right:30px;">
			                                       <input type="checkbox" name="menuName" value="Americano"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/americano.png" width="100px;" height="100px;">
			                                       <p class="card-title">아메리카노</p>
			                                       <p class="card-title">&#8361;3,000</p>
			                                       <input type="hidden" value="3,000" name="menuMoney"> 
			                                       <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp; 
			                                       <input type="number" class="form-control" style="width:80px; margin-left:20px; ;" min="0" value="0" name="count">
				                                       <select class="form-control" style="width:80px; margin-left:20px; margin-top:5px;" name="type">
			                                           <option value="Hot">Hot</option>
			                                           <option value="Ice">Ice</option>
			                                       </select>
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                     </form>
		                                     <form class="menubar" id="clForm" action="insertCl.ca" enctype="multipare/form-data">
		                                       	<input type="hidden" value="${loginUser.memberNo }" name="memberNo">
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox" name="menuName" value="Cafelatte"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/cafelatte.png" width="100px;" height="100px;">
		                                            <p class="card-title">카페라떼</p>
		                                            <p class="card-title">&#8361;3,500</p>
		                                            <input type="hidden" value="3,500" name="menuMoney">
		                                            <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp; 
			                                       <input type="number" class="form-control" style="width:80px; margin-left:20px; ;" min="0" value="0" name="count">
				                                       <select name="type" class="form-control" style="width:80px; margin-left:20px; margin-top:5px;">
			                                           <option value="Hot">Hot</option>
			                                           <option value="Ice">Ice</option>
			                                       </select>
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                     </form>  
		                                     <form class="menubar" id="cmForm" action="insertCm.ca" enctype="multipart/form-data">  
		                                     <input type="hidden" value="${loginUser.memberNo }" name="memberNo"> 
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox" name="menuName" value="CafeMocha"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/cafemocha.png" width="100px;" height="100px;">
		                                            <p class="card-title">카페모카</p>
		                                            <p class="card-title">&#8361;3,500</p>
		                                            <input type="hidden" value="3,500" name="menuMoney">
		                                            <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp;
			                                        <input type="number" class="form-control" style="width:80px; margin-left:20px; ;" min="0" value="0" name="count">
				                                       <select class="form-control" style="width:80px; margin-left:20px; margin-top:5px;" name="type">
			                                           <option value="Hot">Hot</option>
			                                           <option value="Ice">Ice</option>
			                                       </select>
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                        </form> 
		                                        <form class="menubar" id="cameForm" action="insertCame.ca" enctype="multipart/form-data">
		                                        <input type="hidden" value="${loginUser.memberNo }" name="memberNo"> 
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox" name="menuName" value="Caramel Macchiato"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/caramel.png" width="100px;" height="100px;">
		                                            <p class="card-title">카라멜 마끼야또</p>
		                                            <p class="card-title">&#8361;3,500</p>
		                                            <input type="hidden" value="3,500" name="menuMoney">
		                                            <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp; <input type="number" class="form-control" style="width:80px; margin-left:20px; ;" min="0" value="0" name="count">
				                                       <select class="form-control" style="width:80px; margin-left:20px; margin-top:5px;" name="type">
			                                           <option value="Hot">Hot</option>
			                                           <option value="Ice">Ice</option>
			                                       </select>
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                        </form>
		                                        <form class="menubar" id="chForm" action="insertCh.ca" enctype="multipart/form-data">
		                                        <input type="hidden" value="${loginUser.memberNo }" name="memberNo"> 
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox" name="menuName" value="Cappuccino"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/cappuccino.png" width="100px;" height="100px;">
		                                            <p class="card-title">카푸치노</p>
		                                            <p class="card-title">&#8361;3,500</p>
		                                            <input type="hidden" value="3,500" name="menuMoney">
		                                            <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp; <input type="number" class="form-control" style="width:80px; margin-left:20px; ;" min="0" value="0" name="count">
				                                       <select class="form-control" style="width:80px; margin-left:20px; margin-top:5px;" name="type">
			                                           <option value="Hot">Hot</option>
			                                           <option value="Ice">Ice</option>
			                                       </select>
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                        </form>
		                                        <hr>
		                                        <form class="menubar" id="vnForm" action="insertVn.ca" enctype="multipart/form-data">
		                                        <input type="hidden" value="${loginUser.memberNo }" name="memberNo"> 
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox" name="menuName" value="Vanilla Latte"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/vanila.png" width="100px;" height="100px;">
		                                            <p class="card-title">바닐라라떼</p>
		                                            <p class="card-title">&#8361;3,500</p>
		                                            <input type="hidden" value="3,500" name="menuMoney">
		                                            <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp; <input type="number" class="form-control" style="width:80px; margin-left:20px; ;" min="0" value="0" name="count">
				                                       <select class="form-control" style="width:80px; margin-left:20px; margin-top:5px;" name="type">
			                                           <option value="Hot">Hot</option>
			                                           <option value="Ice">Ice</option>
			                                       </select>
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                        </form>
		                                        <form class="menubar" id="cnlForm" action="insertCnl.ca" enctype="multipart/form-data">
		                                        <input type="hidden" value="${loginUser.memberNo }" name="memberNo"> 
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox" name="menuName" value="Cinnamon Latte"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/cinnamon.png" width="100px;" height="100px;">
		                                            <p class="card-title">시나몬라떼</p>
		                                            <p class="card-title">&#8361;3,500</p>
		                                            <input type="hidden" value="3,500" name="menuMoney">
		                                            <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp; <input type="number" class="form-control" style="width:80px; margin-left:20px; ;" min="0" value="0" name="count">
				                                       <select class="form-control" style="width:80px; margin-left:20px; margin-top:5px;" name="type">
			                                           <option value="Hot">Hot</option>
			                                           <option value="Ice">Ice</option>
			                                       </select>
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                        </form>
		                                        <form class="menubar" id="esForm" action="insertEs.ca" enctype="multipart/form-data">
		                                        <input type="hidden" value="${loginUser.memberNo }" name="memberNo"> 
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox" name="menuName" value="Espresso"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/espresso.png" width="100px;" height="100px;">
		                                            <p class="card-title">에스프레소</p>
		                                            <p class="card-title">&#8361;3,000</p>
		                                            <input type="hidden" value="3,000" name="menuMoney">
		                                            <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp; <input type="number" class="form-control" style="width:80px; margin-left:20px; ;" min="0" value="0" name="count">
				                                       <select class="form-control" style="width:80px; margin-left:20px; margin-top:5px;" name="type">
			                                           <option value="Hot">Hot</option>
			                                           <option value="Ice">Ice</option>
			                                       </select>
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                        </form>
		                                        <form class="menubar" id="hcForm" action="insertHc.ca" enctype="multipart/form-data">
		                                        <input type="hidden" value="${loginUser.memberNo }" name="memberNo"> 
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox" name="menuName" value="HotChocolate"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/hotchocolate.png" width="100px;" height="100px;">
		                                            <p class="card-title">핫 초콜릿</p>
		                                            <p class="card-title">&#8361;3,500</p>
		                                            <input type="hidden" value="3,500" name="menuMoney">
		                                            <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp; <input type="number" class="form-control" style="width:80px; margin-left:20px; ;" min="0" value="0" name="count">
				                                       <select class="form-control" style="width:80px; margin-left:20px; margin-top:5px;" name="type">
			                                           <option value="Hot">Hot</option>
			                                           <option value="Ice">Ice</option>
			                                       </select>
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                        </form>
		                                        <hr>
		                                         <form class="menubar" id="herBForm" action="insertHerb.ca" enctype="multipart/form-data">
		                                        <input type="hidden" value="${loginUser.memberNo }" name="memberNo"> 
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox" name="menuName" value="BlackTea EarlGrey" ><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/blacktea.png" width="100px;" height="100px;">
		                                            <p class="card-title">블랙 티 얼그레이</p>
		                                            <p class="card-title">&#8361;3,500</p>
		                                            <input type="hidden" value="3,500" name="menuMoney">
		                                            <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp; <input type="number" class="form-control" style="width:80px; margin-left:20px; ;" min="0" value="0" name="count">
				                                       <select class="form-control" style="width:80px; margin-left:20px; margin-top:5px;" name="type">
			                                           <option value="Hot">Hot</option>
			                                           <option value="Ice">Ice</option>
			                                       </select>
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                        </form>
		                                        <form class="menubar" id="herCForm" action="insertHerc.ca" enctype="multipart/form-data">
		                                        <input type="hidden" value="${loginUser.memberNo }" name="memberNo"> 
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox" name="menuName" value="HearbTea Chamomile"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/hearbtea.png" width="100px;" height="100px;">
		                                            <p class="card-title">허브 티 캐모마일</p>
		                                            <p class="card-title">&#8361;3,500</p>
		                                            <input type="hidden" value="3,500" name="menuMoney">
		                                           <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp; <input name="count" type="number" class="form-control" style="width:80px; margin-left:20px; ;" min="0" value="0">
				                                       <select name="type" class="form-control" style="width:80px; margin-left:20px; margin-top:5px;">
			                                           <option value="Hot">Hot</option>
			                                           <option value="Ice">Ice</option>
			                                       </select>
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                        </form>
		                                        <form class="menubar" id="herPForm" action="insertHerp.ca" enctype="multipart/form-data">
		                                        <input type="hidden" value="${loginUser.memberNo }" name="memberNo"> 
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox" name="menuName" value="HearbTea Peppermint"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/peppermint.png" width="100px;" height="100px;">
		                                            <p class="card-title">허브 티 페퍼민트</p>
		                                            <p class="card-title">&#8361;3,500</p>
		                                            <input type="hidden" value="3,500" name="menuMoney">
		                                            <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp; <input name="count" type="number" class="form-control" style="width:80px; margin-left:20px; ;" min="0" value="0">
				                                       <select name="type" class="form-control" style="width:80px; margin-left:20px; margin-top:5px;">
			                                           <option value="Hot">Hot</option>
			                                           <option value="Ice">Ice</option>
			                                       </select>
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                        </form>
		                                        <form class="menubar" id="herRForm" action="insertHerr.ca" enctype="multipart/form-data">
		                                        <input type="hidden" value="${loginUser.memberNo }" name="memberNo"> 
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox" name="menuName" value="HearbTea Rosemary"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/rosemary.png" width="100px;" height="100px;">
		                                            <p class="card-title">허브 티 로즈마리</p>
		                                            <p class="card-title">&#8361;3,500</p>
		                                            <input type="hidden" value="3,500" name="menuMoney">
		                                            <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp; <input name="count" type="number" class="form-control" style="width:80px; margin-left:20px; ;" min="0" value="0">
				                                       <select name="type" class="form-control" style="width:80px; margin-left:20px; margin-top:5px;">
			                                           <option value="Hot">Hot</option>
			                                           <option value="Ice">Ice</option>
			                                       </select>
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                        </form>
		                                        <form class="menubar" id="herJForm" action="insertHerj.ca" enctype="multipart/form-data">
		                                        <input type="hidden" value="${loginUser.memberNo }" name="memberNo">
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox" name="menuName" value="HearbTea Jasmin"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/jasmine.png" width="100px;" height="100px;">
		                                            <p class="card-title">허브 티 쟈스민</p>
		                                            <p class="card-title">&#8361;3,500</p>
		                                            <input type="hidden" value="3,500" name="menuMoney">
		                                           <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp; <input name="count" type="number" class="form-control" style="width:80px; margin-left:20px; ;" min="0" value="0">
				                                       <select name="type" class="form-control" style="width:80px; margin-left:20px; margin-top:5px;">
			                                           <option value="Hot">Hot</option>
			                                           <option value="Ice">Ice</option>
			                                       </select>
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                        </form>
		                                        <form class="menubar" id="herAForm" action="insertHera.ca" enctype="multipart/form-data">
		                                        <input type="hidden" value="${loginUser.memberNo }" name="memberNo">
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox" name="menuName" value="Honeyed AcaciaTea"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/honeyed.png" width="100px;" height="100px;">
		                                            <p class="card-title">아카시아 꿀차</p>
		                                            <p class="card-title">&#8361;3,500</p>
		                                            <input type="hidden" value="3,500" name="menuMoney">
		                                            <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp; <input name="count" type="number" class="form-control" style="width:80px; margin-left:20px; ;" min="0" value="0">
				                                       <select name="type" class="form-control" style="width:80px; margin-left:20px; margin-top:5px;">
			                                           <option value="Hot">Hot</option>
			                                           <option value="Ice">Ice</option>
			                                       </select>
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                        </form>
		                                        <hr>
		                                        <form class="menubar" id="ySmForm" action="insertySm.ca" enctype="multipart/form-data">
		                                        <input type="hidden" value="${loginUser.memberNo }" name="memberNo">
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox" name="menuName" value="Plain Yogurt Smoothie"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/plain.png" width="100px;" height="100px;">
		                                            <p class="card-title">플레인 요거트 스무디</p>
		                                            <p class="card-title">&#8361;4,000</p>
		                                            <input type="hidden" value="4,000" name="menuMoney">
		                                            <input type="hidden" value="Ice" name="type">
		                                            <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp;<input name="count" type="number" class="form-control" style="width:80px; margin-left:31px; ;" min="0" value="0">
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                        </form>
		                                        <form class="menubar" id="ypSmForm" action="insertypSm.ca" enctype="multipart/form-data">
		                                        <input type="hidden" value="${loginUser.memberNo }" name="memberNo">
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox" name="menuName" value="Premium Yogurt"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/premium.png" width="100px;" height="100px;">
		                                            <p class="card-title">프리미엄 요거트 스무디</p>
		                                            <p class="card-title">&#8361;4,500</p>
		                                            <input type="hidden" value="4,500" name="menuMoney">
		                                            <input type="hidden" value="Ice" name="type">
		                                            <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp;<input name="count" type="number" class="form-control" style="width:80px; margin-left:31px; ;" min="0" value="0">
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                        </form>
		                                        <form class="menubar" id="ypbSmForm" action="insertypbSm.ca" enctype="multipart/form-data">
		                                        <input type="hidden" value="${loginUser.memberNo }" name="memberNo">
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox" name="menuName" value="Premium Smoothie Blueberry"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/blackpremium.png" width="100px;" height="100px;">
		                                            <p class="card-title">프리미엄 스무디 블루베리</p>
		                                            <p class="card-title">&#8361;4,500</p>
		                                            <input type="hidden" value="4,500" name="menuMoney">
		                                            <input type="hidden" value="Ice" name="type">
		                                            <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp;<input name="count" type="number" class="form-control" style="width:80px; margin-left:31px; ;" min="0" value="0">
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                        </form>
		                                        <form class="menubar" id="ypcSmForm" action="insertypcSm.ca" enctype="multipart/form-data">
		                                        <input type="hidden" value="${loginUser.memberNo }" name="memberNo">
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox" name="menuName" value="Premium Smoothie Citron"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/citronpremiun.png" width="100px;" height="100px;">
		                                            <p class="card-title">프리미엄 스무디 유자</p>
		                                            <p class="card-title">&#8361;4,500</p>
		                                            <input type="hidden" value="4,500" name="menuMoney">
		                                            <input type="hidden" value="Ice" name="type">
		                                           <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp;<input name="count" type="number" class="form-control" style="width:80px; margin-left:31px; ;" min="0" value="0">
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                        </form>
		                                        <form class="menubar" id="ypsSmForm" action="insertypsSm.ca" enctype="multipart/form-data">
		                                        <input type="hidden" value="${loginUser.memberNo }" name="memberNo">
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox" name="menuName" value="Smoothie Strawberry"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/strawberrysmo.png" width="100px;" height="100px;">
		                                            <p class="card-title">과일 스무디 딸기</p>
		                                            <p class="card-title">&#8361;4,500</p>
		                                            <input type="hidden" value="4,500" name="menuMoney">
		                                            <input type="hidden" value="Ice" name="type">
		                                           <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp;<input name="count" type="number" class="form-control" style="width:80px; margin-left:31px; ;" min="0" value="0">
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                        </form>
		                                        <form class="menubar" id="ypmSmForm" action="insertypmSm.ca" enctype="multipart/form-data">
		                                        <input type="hidden" value="${loginUser.memberNo }" name="memberNo">
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox" name="menuName" value="Smoothie Mango"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/mangosmo.png" width="100px;" height="100px;">
		                                            <p class="card-title">과일 스무디 망고</p>
		                                            <p class="card-title">&#8361;4,500</p>
		                                            <input type="hidden" value="4,500" name="menuMoney">
		                                            <input type="hidden" value="Ice" name="type">
		                                           <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp;<input name="count" type="number" class="form-control" style="width:80px; margin-left:31px; ;" min="0" value="0">
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                        </form>
		                                        <form class="menubar" id="yppsSmForm" action="insertyppsSm.ca" enctype="multipart/form-data">
		                                        <input type="hidden" value="${loginUser.memberNo }" name="memberNo">
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox" name="menuName" value="Persimmon Smoothie"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/persimmonsmo.jpg" width="100px;" height="100px;">
		                                            <p class="card-title">홍시 스무디</p>
		                                            <p class="card-title">&#8361;4,500</p>
		                                            <input type="hidden" value="4,500" name="menuMoney">
		                                            <input type="hidden" value="Ice" name="type">
		                                            <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp;<input name="count" type="number" class="form-control" style="width:80px; margin-left:31px; ;" min="0" value="0">
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                        </form>
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
		                                    <button onclick="orderDetail(${loginUser.memberNo});" type="button" class="btn btn-info" id="cafeorder" data-toggle="modal" data-target="#detailview">Order</button>
		                                    <button type="submit" class="btn btn-danger">Cancel</button>
		                                </div>
		                            </div>
		                        </div>
		                        <!-- alertifyJs -->
								<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
								<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
								<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
		                        <script>
		                        var Allmoney;
		                        
		                        var memberNo=${loginUser.memberNo};
	                        	console.log("memberNo" + memberNo);
	                        	
	                        	
	                        	
	                        	 function submitOrder(moneysss){
	                        		 console.log(moneysss);
	                        		 
			                        IMP.init('imp58841732');  // 가맹점 식별 코드

			                        IMP.request_pay({
			                           pg : 'inicis', // 결제방식
			                            pay_method : 'card',	// 결제 수단
			                            merchant_uid : 'merchant_' + new Date().getTime(),
			                           name : 'cafeteria',	// order 테이블에 들어갈 주문명 혹은 주문 번호
			                            amount : moneysss,	// 결제 금액
			                            buyer_email : '${loginUser.email}',	// 구매자 email
			                           buyer_name :  '${loginUser.memberName}',	// 구매자 이름
			                            buyer_tel :  '${loginUser.phone}',	// 구매자 전화번호
			                            buyer_addr :  '서울시 강남구',	// 구매자 주소
			                            buyer_postcode :  '234-303',	// 구매자 우편번호
			                            m_redirect_url : '/khx/payEnd.action'
			                        }, function(rsp) {
			                     	if ( rsp.success ) { // 성공시
			                     		
			                     		alertify.alert("결제가 완료되었습니다.");
			                     		
			                     		var msg = '결제가 완료되었습니다.';
			                     		msg += '고유ID : ' + rsp.imp_uid;
			                     		msg += '상점 거래ID : ' + rsp.merchant_uid;
			                     		msg += '결제 금액 : ' + rsp.paid_amount;
			                     		msg += '카드 승인번호 : ' + rsp.apply_num;
			                     		
			                     		location.href="insertCafe.ca?memberNo=" + memberNo;
			                     		
			                     	} else { // 실패시
			                     		var msg = '결제에 실패하였습니다.';
			                     		msg += '에러내용 : ' + rsp.error_msg;
			                     	}
			                     })
			                    }
		                        
		                        	function orderDetail(memberNo){
		                       
		                        		var memberNo = memberNo;
		                        		console.log(memberNo);
		                        		
		                        		$.ajax({
		                        			url:"selectCafe.ca",
		                        			data:{memberNo:memberNo},
		                        			success:function(list){
		                        				console.log("성공");
		                        				
		                        				var value="";
		                        				var money;
		                        				var Allmoney = 0;
		                        				$.each(list, function(i, ca){
		                        					
		                        					money = ca.menuMoney.replace(/[^0-9]/g,"");
		                        					Allmoney = Allmoney + (money * ca.count);
		                        					
		                        					
		                        					value += "<tr style='height:40px;'>" +
		                        							"<td style='width:50px'></td>" +
		                        							"<td><i class='mdi mdi-checkbox-marked-outline'></i></td> &nbsp;&nbsp;&nbsp;&nbsp;" + 
		                                       				"<td id='a1' style='width:150px;'>" + ca.menuName + "</td>" +
		                                       				"<td id='a2' style='width:50px;'>" + ca.count + "잔" + "</td>" +
		                                       				"<td id='a3' style='width:50px;'>" + ca.type + "</td>" +
		                                       				"<td id='a4' style='width:50px;'>" + money * ca.count + "</td>" +
		                                       				"</tr>"
		                                       	
	                                       				
		                        				});
		                        				
                                   				value += "<input type='hidden' id='allmoney' value='" + Allmoney +"'>";
		                        				$(".orderDetailView").html(value);
		                        				
		                        				
		                        			},error:function(){
		                        				console.log("ajax통신실패!");
		                        			}
		                        		
		                        		});
		                        	}
		                        	
		                        	
				                        
		                        	
		                        </script>
		                        
		                         <div class="modal" id="detailview">
		                            <div style="width:600px; height:500px; background:white; margin:auto; margin-top:100px;">
		                                <div class="card">
		                                 <form class="form-horizontal">
	                                        <div class="card-body" style="text-align:center;">
	                                           <h4 class="card-title"><i class="mdi mdi-check-all">주문 정보</i></h4>
	                                       		<table class="orderDetailView" style="text-align:center;">
	                                       			
	                                       		</table>
	                                       		<hr>
	                                       		<button onclick="submitOrder($('#allmoney').val());" type="button" class="btn btn-info">결제 하기</button>
	                                        </div>
	                                      </form>
		                                </div>
		                             </div>
		                          </div>
		                        
		                     
				         
		                </div>
		            </div>
		        </div>
   			 <jsp:include page="../../common/footer.jsp"/>
		    </div>

</div>

</body>
</html>
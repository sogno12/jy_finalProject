<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		                            <h4 class="card-title" style="font-weight:bold;">CafeTeria</h4>
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
		                                            <input type="checkbox" name="menuName" value="CaramelMacchiato"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/caramel.png" width="100px;" height="100px;">
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
		                                            <input type="checkbox" name="menuName" value="VanillaLatte"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/vanila.png" width="100px;" height="100px;">
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
		                                            <input type="checkbox" name="menuName" value="CinnamonLatte"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/cinnamon.png" width="100px;" height="100px;">
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
		                                            <input type="checkbox" name="menuName" value="BlackTeaEarlGrey" ><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/blacktea.png" width="100px;" height="100px;">
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
		                                            <input type="checkbox" name="menuName" value="HearbTeaChamomile"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/hearbtea.png" width="100px;" height="100px;">
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
		                                            <input type="checkbox" name="menuName" value="HearbTeaPeppermint"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/peppermint.png" width="100px;" height="100px;">
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
		                                            <input type="checkbox" name="menuName" value="HearbTeaRosemary"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/rosemary.png" width="100px;" height="100px;">
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
		                                            <input type="checkbox" name="menuName" value="HearbTeaJasmin"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/jasmine.png" width="100px;" height="100px;">
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
		                                            <input type="checkbox" name="menuName" value="HoneyedAcaciaTea"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/honeyed.png" width="100px;" height="100px;">
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
		                                            <input type="checkbox" name="menuName" value="PlainYogurtSmoothie"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/plain.png" width="100px;" height="100px;">
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
		                                            <input type="checkbox" name="menuName" value="PremiumYogurt"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/premium.png" width="100px;" height="100px;">
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
		                                            <input type="checkbox" name="menuName" value="PremiumSmoothieBlueberry"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/blackpremium.png" width="100px;" height="100px;">
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
		                                            <input type="checkbox" name="menuName" value="PremiumSmoothieCitron"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/citronpremiun.png" width="100px;" height="100px;">
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
		                                            <input type="checkbox" name="menuName" value="SmoothieStrawberry"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/strawberrysmo.png" width="100px;" height="100px;">
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
		                                            <input type="checkbox" name="menuName" value="SmoothieMango"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/mangosmo.png" width="100px;" height="100px;">
		                                            <p class="card-title">과일 스무디 망고</p>
		                                            <p class="card-title">&#8361;4,500</p>
		                                            <input type="hidden" value="4,500" name="menuMoney">
		                                            <input type="hidden" value="Ice" name="type">
		                                           <div id="budiv">
			                                       &nbsp;&nbsp;&nbsp;&nbsp;<input type="number" class="form-control" style="width:80px; margin-left:31px; ;" min="0" value="0">
			                                       <button type="submit" class="cafebtn"><i class="mdi mdi-basket"></i>담기</button>
			                                       </div>
		                                        </div>
		                                        </form>
		                                        <form class="menubar" id="yppsSmForm" action="insertyppsSm.ca" enctype="multipart/form-data">
		                                        <input type="hidden" value="${loginUser.memberNo }" name="memberNo">
		                                        <div style="display:inline-block; margin-right:30px;">
		                                            <input type="checkbox" name="menuName" value="PersimmonSmoothie"><img src="${ pageContext.servletContext.contextPath }/resources/images/hajin/cafe/persimmonsmo.jpg" width="100px;" height="100px;">
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
		                                    <button type="button" class="btn btn-info" id="cafeorder">Order</button>
		                                    <button type="submit" class="btn btn-danger">Cancel</button>
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
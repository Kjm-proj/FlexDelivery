<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../adminInc/top.jsp" %>    
<script src="http://mattstow.com/experiment/responsive-image-maps/jquery.rwdImageMaps.min.js"></script>

<script>
$(function(){
	//window.scrollTo({top:1300, behavior:'smooth'});

	$('img[usemap]').rwdImageMaps();
	$("#imgFdMember").width("100%");

	$('#crystal').hide();	
	$('#jian').hide();	
	$('#bs').hide();	
	$('#sj').hide();	
	$('#hy').hide();	
	$('#jm').hide();	
	$('#hj').hide();	
});

function openMember(number){

	
	$('#crystal').hide();
	$('#jian').hide();
	$('#hy').hide();
	$('#bs').hide();
	$('#sj').hide();
	$('#hj').hide();
	$('#jm').hide();
	

	window.scrollTo({top:1300, behavior:'smooth'});
	
	if (number=='1'){
		$('#crystal').show();
	}else if (number=='2'){
		$('#jian').show();
	}else if(number=='3'){
		$('#sj').show();
	}else if(number=='4'){
		$('#hy').show()
	}else if(number=='5'){
		$('#bs').show()
	}else if(number=='6'){
		$('#hj').show()
	}else if(number=='7'){
		$('#jm').show()
	}
};


</script>

<style type="text/css">

	img[usemap] {
		border: none;
		height: auto;
		max-width: 100%;
		width: auto;
	}
	
/* 	.scroll-active > .motion-up {
		animation: textFadein 1s forwards;
	}
	
	.motion-up {
		opacity: 0;
		transform: translateY(32px);
	}
	
	.arrow-down-content{
		animation: arrouUpDown .4s alternate infinite;
		cursor: pointer;
	} */

</style>

<!-- css start -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/adminResources/crystal.css"/>
<link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
<!-- css end -->

<!-- ##### Single Blog Area Start ##### -->
<div class="single-blog-wrapper section-padding-0-100">
	<div class="container">
      <div class="row">
          <!-- ##### Post Content Area ##### -->
          <div class="col-12">
          		<div class="about-wrap" style="height: 20%;">
          			<div class="content-top" style="min-height:480px; max-height: 540px;">
       					<div style="position: relative; top: 27%; left:2%">
	       					<img src="${pageContext.request.contextPath}/resources/imgs/CommonImages/fdLogo_EN.png" style="width: 40%;">
       					</div>
          				<div style="position: relative; top: 32%; left: 5%">
		          			<p style="font-family: 'Noto Sans KR'; font-size: 40px; color: white; transform: translateY(-50%)">?????????, ????????????! <br>
							????????? ??????????????? ???????????? ????</p>
							
						</div>
						<a id="a1">
							<span id="span1" style="top: 82%;"></span>
							<span id="span1" style="top: 85%;"></span>
							<span id="span1" style="top: 88%;"></span>
						</a>
          			</div>
 
	          		<div class="text-center content-inner about-text-box scroll-active">
	          		</div>
          		
              <!-- Single Blog Area  -->
              <div class="single-blog-area blog-style-2 mt-50" data-aos="fade-up" data-aos-anchor-placement="center-bottom">
                  <!-- Blog Content -->
                  <div class="single-blog-content">
                      <div class="line"></div>
                      <a class="post-tag" id="aboutus">About us</a>
                      <h4><a class="post-headline mb-0">????????? ????????????</a></h4>
                     <!--  <div class="post-meta mb-50">
                          <p>By <a href="#">james smith</a></p>
                          <p>3 comments</p>
                      </div> -->
                      <p style="font-size: larger;">???????????? ???????????? ???????????? ?????? ????????? ???????????? ????????? ???????????????.</p>
                 </div>
               </div>
            </div>
        </div>
        </div>
      </div>
        <!-- Single Blog Area  -->
      <div class="single-blog-area blog-style-2 mb-50">
            <div class="single-blog-thumbnail scroll-active">
                <img src="${pageContext.request.contextPath}/resources/imgs/CommonImages/fdMemberDrop1024.png"  
                	id="imgFdMember" alt="????????? ???????????? ??????" usemap="#fdMember" data-aos="fade-up"
    				 data-aos-anchor-placement="center-bottom">
                
				<map id="fdMember" name="fdMember">
					<!--??????-->
					<area onFocus="this.blur()" shape="rect" alt="??????person" title="??????" coords="412,150,478,364" 
						onclick="openMember(1)" style="cursor: pointer;" class="arrowUpDown .4s alternate infinite" />
					<area onFocus="this.blur()" shape="poly" alt="??????drop" title="??????" coords="425,109,450,145,478,102,476,77,459,63,438,65,422,78,418,94,418,102" 
						onclick="openMember(1)" style="cursor: pointer;" />
					<!--??????-->
					<area onFocus="this.blur()" shape="rect" alt="??????person" title="??????" coords="335,152,407,363" 
						onclick="openMember(2)" style="cursor: pointer;" />
					<area onFocus="this.blur()" shape="poly" alt="??????drop" title="??????" coords="372,145,397,94,395,71,383,57,352,60,339,86,336,105,345,125,363,139" 
						target="" onclick="openMember(2)" style="cursor: pointer;" />
					<!--??????-->
					<area onFocus="this.blur()" shape="rect" alt="??????person" title="??????" coords="564,148,636,364" 
						onclick="openMember(3)" style="cursor: help;" />
					<area onFocus="this.blur()" shape="poly" alt="??????drop" title="??????" coords="599,144,625,97,618,71,593,63,568,66,560,97,576,122,590,137" 
						onclick="openMember(3)" style="cursor: help;"/>
					<!--??????-->
					<area onFocus="this.blur()" shape="rect" alt="??????person" title="??????" coords="641,118,699,362" 
						onclick="openMember(4)" style="cursor: pointer;" />
					<area onFocus="this.blur()" shape="poly" alt="??????drop" title="??????" coords="658,115,685,63,662,31,631,34,615,64,629,88,650,110" 
						 onclick="openMember(4)" style="cursor: pointer;" />
					<!--??????-->
					<area onFocus="this.blur()" shape="rect" alt="??????person" title="??????" coords="704,144,759,361"
						onclick="openMember(5)" style="cursor: pointer;" />
					<area onFocus="this.blur()" shape="poly" alt="??????drop" title="??????" coords="728,140,755,90,742,60,700,59,688,89,693,102,702,123,714,131" 
						onclick="openMember(5)" style="cursor: pointer;"/>
					<!--??????-->
					<area onFocus="this.blur()" shape="rect" alt="??????person" title="??????" coords="485,126,559,362" 
						onclick="openMember(6)" style="cursor: pointer;" />
					<area onFocus="this.blur()" shape="poly" alt="??????drop" title="??????" coords="530,120,555,76,560,52,542,36,508,35,493,53,492,72,503,94,521,111" 
						onclick="openMember(6)" style="cursor: pointer;" />
					<!--??????-->
					<area onFocus="this.blur()" shape="rect" alt="??????person" title="??????" coords="273,131,332,362"
						onclick="openMember(7)" style="cursor: pointer;" />
					<area onFocus="this.blur()" shape="poly" alt="??????drop" title="??????" coords="314,118,335,84,345,48,318,31,286,40,274,62,281,81,301,111" 
						onclick="openMember(7)" style="cursor: pointer;" />
				</map>

                <img id="crystal" src="${pageContext.request.contextPath}/resources/imgs/CommonImages/memberCrystal.png" alt="????????? ???????????? ????????????_??????"
                	class="motion-up">
                <img id="jian" src="${pageContext.request.contextPath}/resources/imgs/CommonImages/memberJa.png" alt="????????? ???????????? ????????????_??????"
                	class="motion-up">
                <img id="bs" src="${pageContext.request.contextPath}/resources/imgs/CommonImages/memberBs.png" alt="????????? ???????????? ????????????_??????"
                	class="motion-up">
                <img id="hy" src="${pageContext.request.contextPath}/resources/imgs/CommonImages/memberHy.png" alt="????????? ???????????? ????????????_??????"
                	class="motion-up">
                <img id="sj" src="${pageContext.request.contextPath}/resources/imgs/CommonImages/memberSj.png" alt="????????? ???????????? ????????????_??????"
                	class="motion-up">
                <img id="hj" src="${pageContext.request.contextPath}/resources/imgs/CommonImages/memberHj.png" alt="????????? ???????????? ????????????_??????"
                	class="motion-up">
                <img id="jm" src="${pageContext.request.contextPath}/resources/imgs/CommonImages/memberJm.png" alt="????????? ???????????? ????????????_??????"
                	class="motion-up">
                <div class="post-tag-content">
                    <div class="container">
                        <div class="row">
                            <div class="col-12" data-aos="fade-up" data-aos-anchor-placement="center-bottom">
                                <div class="post-date">
                                    <a >FD <span>????????????</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

		
        <div class="container" id="test">
           <div class="row">
	          <!-- ##### Post Content Area ##### -->
	          <div class="col-12">
	              <!-- Single Blog Area  -->
	              <div class="single-blog-area blog-style-2 mb-50" style="padding-top: 7%; padding-bottom: 7%;">
                        <div class="single-blog-content" >
                            <div class="line"></div>
                            <a class="post-tag">About Service</a>
                            <h4><a class="post-headline mb-0">??? ????????? ?????? ???????????? ??????????????????</a></h4>
                            <p style="font-size: larger;">????????? ??????????????? ??? ?????? ???????????? ???????????? ???????????? ?????????.</p>
						</div>
							<div class="single-blog-content" style="display: flex; align-items: center; background-color: #f5f5f5; padding-bottom: 10%" >
	                            <div class="card-body mt-50" style="text-align: center; width: 50%;" data-aos="fade-right" data-aos-offset="300"
	     							data-aos-easing="ease-in-sine" class="use-box scroll-active">
		                            <p style="font-size: xx-large; color: black;">???????????? ?????????</p>
		                            <p></p>
		                            <br>
		                            <p style="font-size: x-large; color: black;">????????? ????????? ????????? ???, <br>??? ?????? ????????? ?????? ??? ????????? ????????????.</p>
		                            <br>
		                            <div style="line-height: 3;">
			                            <span class="badge bg-Info" style="font-size: larger;">????????????</span>
			                            <span style="font-size: larger;">????????? ?????????</span><br>
		                            </div>
		                            <div style="line-height: 2;">
			                            <span class="badge bg-Info" style="font-size: larger;">????????????</span>
			                            <span style="font-size: larger;">??? 50,000???</span><br>
		                            </div>
		                            <div style="line-height: 3;">
		                            	<span style="font-size: large;">?????? ?????? ??????????????????!</span>
		                            	<button type="button" onFocus="this.blur()" style="font-size: large; font-weight: 700; color: #6f42c1;"
		                            		onclick="location.href='<c:url value='/owner/menu2/advertise/advertiseMain.do'/>'">????????? ????????? ????????????</button><br>
		                            </div>
		                            
	                            </div>
	                            <div class="card-body mt-50" style="text-align: center; width: 40%;" data-aos="fade-in" data-aos-offset="300"
	     							data-aos-easing="ease-in-sine" class="use-box scroll-active">
										<img src="${pageContext.request.contextPath}/resources/imgs/CommonImages/ad2.png">
	                            </div>
                            </div>
							<div class="single-blog-content mb-70" style="display: flex; align-items: center;" data-aos-easing="ease-in-sine">
     							<div class="card-body mt-50" style="text-align: center; width: 40%;" data-aos="fade-in" data-aos-offset="300"
	     							data-aos-easing="ease-in-sine" class="use-box scroll-active">
										<img src="${pageContext.request.contextPath}/resources/imgs/CommonImages/ad3.png">
	                            </div>
	                            
								<div class="card-body mt-70" style="text-align: center;" data-aos="fade-left" data-aos-offset="300">
		                            <p style="font-size: xx-large; color: black;">????????? ?????????</p>
		                            <p></p>
		                            <br>
		                            <p style="font-size: x-large; color: black;">????????? ????????? ????????? ???, <br>??? ?????? ????????? ?????? ????????? ????????????.</p>
		                            <br>
		                            <div style="line-height: 3;">
			                            <span class="badge bg-Info" style="font-size: larger;">????????????</span>
			                            <span style="font-size: larger;">????????? ?????? ??????</span>
		                            </div>
		                            <div style="line-height: 2;">
			                            <span class="badge bg-Info" style="font-size: larger;">????????????</span>
			                            <span style="font-size: larger;">??? 30,000???</span>
		                            </div>
		                            <div style="line-height: 3;">
		                            	<span style="font-size: large;">?????? ?????? ??????????????????!</span>
		                            	<button type="button" onFocus="this.blur()" style="font-size: large; font-weight: 700; color: #6f42c1;"
		                            		onclick="location.href='<c:url value='/owner/menu2/advertise/advertiseMain.do'/>'">??????????????? ????????????</button>
		                            </div>
	                            
	                            </div>
	                         
                            </div>
                        </div>

                    </div>


					<div class="single-blog-area blog-style-2" style="padding-top: 5%;padding-bottom: 5%;background-color: #f5f5f5;">
                        <div class="single-blog-content" >
                            <div class="card-body" style="text-align: center;" data-aos="fade-up" data-aos-offset="300"
     							data-aos-easing="ease-in-sine">
	                            <p style="font-size: xx-large; color: black;">?????? ?????? <br>????????? ??????????????? ?????? ?????????????<p>
	                            <p></p>
	                            <br>
	                            <p style="font-size: x-large; color: black;">?????? ?????? ?????????????????????????????????? <br>???????????? ?????? ???????????????</p>
	                            <br>
	                            <div style="text-align-last: justify; margin-top: 1%">
		                            <button type="button" onFocus="this.blur()" style="font-size: large; font-weight: 700; color: #6f42c1; padding-left: 25%;"
		                            	onclick="location.href='<c:url value='/owner/menu1/launch/launch.do'/>'">????????? ?????? ????????????</button>
		                            <button type="button" onFocus="this.blur()" style="font-size: large; font-weight: 700; color: #6f42c1;"
		                            	onclick="location.href='<c:url value='/owner/menu5/oneToOne.do'/>'">1:1 ????????????</button>
		                            <button type="button" onFocus="this.blur()" style="font-size: large; font-weight: 700; color: #6f42c1; padding-right: 25%;"
		                            	onclick="location.href='<c:url value='/owner/menu3/honeyTip/honeyTip.do'/>'">??????????????? ?????? ??????</button>
	                            </div>
	                            <br>
	                         
                            </div>
                        </div>
                    </div>
                    
					<div class="single-blog-area blog-style-2 " style="padding-top: 5%;">
                        <div class="single-blog-content" >
                        
                            <div class="card-body" style="text-align: center;" data-aos="fade-up" data-aos-offset="300"
     							data-aos-easing="ease-in-sine">
	                            <p style="font-size: xx-large; color: black;">??? ?????? ????????? ????????? ??? ??????, <br>????????? ??????????????? ?????? ???????????????????????????????????<p>
	                            <p></p>
	                            <br>
	                         
                            </div>
                        </div>
                   </div>
                   

                </div>

                
            </div>
	        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
			<script>
				AOS.init();
			</script>
        </div>
</div>
<!-- ##### Single Blog Area End ##### -->    

<!-- script start -->
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/feather-icons/feather.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/app.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/simple-datatables.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/main.js"></script>
<!-- script end -->
    
    
<%@include file="../../adminInc/bottom.jsp" %>    
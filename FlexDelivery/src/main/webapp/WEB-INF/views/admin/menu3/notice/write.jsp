<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../adminInc/top.jsp" %>

<script type="text/javascript" src="${pageContext.request.contextPath }/resources/common/ckeditor/ckeditor.js"></script>

<script>
	
$(function(){
	/* $('#btWrite').click(function(){ */
	$('form[name=frmEventWrite]').submit(function(){
		var contents = CKEDITOR.instances.editor4.getData(); 
		var title=$('#boardTitle').val();
		var auth=$('input[name=authorityNo]').is(':checked');
		
		
		if (title==''){
			alert("제목을 입력하세요");
			return false;
		}
		if (auth==''){
			alert("공개 대상을 선택하세요");
			return false;
		}
		if (contents==''){
			alert("내용을 입력하세요");
			return false;
		}
		
		
		
	});
	
	
	$('#btCancel').click(function(){
		var result=confirm('목록으로 돌아가시겠습니까?');
		if (result){
			location.href="${pageContext.request.contextPath}/admin/menu3/notice.do";			
		} else {
			event.preventDefault;
		}
	});
	
});
</script>

<!-- css start -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/common/ckeditor/contents.css">
<!-- css end -->


<div class="container">
	<div class="row">
    	<div class="col-12">
			<div class="card">
				<div class="card-header">
					<h3 class="section-title text-uppercase">공지사항</h3>
					<p class="text-subtitle text-muted">글쓰기</p>
					<hr>
				</div>
				
				<div class="card-content"> 
					<div class="card-body">
						<div class="single-blog-area blog-style-2 mb-100">
							<div class="col-12">
								<div class="single-blog-area blog-style-2 mb-50">
									<div class="single-blog-content">
										<div class="container">
											<form name="frmEventWrite" id="frmEventWrite" action="<c:url value='/admin/menu3/notice/write.do' />" 
												method="post" >
										    	<div class="content">
										    		<input type="hidden" name="boardNo" value="0">
										    		<input type="hidden" name="boardHead" value="공지사항">
										    		<input type="hidden" name="boardThumbnail" value="">
										        	<div class="row justify-content-md-center">
											            <div class="input-group">
											                <div class="input-group-prepend">
											                    <label class="input-group-text">제목</label>
											                </div>            
											                	<input type="text" name="boardTitle" id="boardTitle" placeholder="제목을 입력하세요" class="form-control col-9">              
											                <div class="input-group-prepend" style="margin-right: -1px;">
											                    <label class="input-group-text">공개 대상</label>
										                    </div>
										                    <div class="form-control col-3">
											                    <table style="width: 100%; text-align: center;">
											                    	<tr>
											                    		<td style="width: 50%; margin-right: 10%;">
			                                                      			<input type="radio" name="authorityNo" value="1">회원
			                                                      		</td>
											                    		<td style="width: 50%; margin-right: 10%;">
			                                                      			<input type="radio" name="authorityNo" value="4">사장님
			                                                      		</td>              
											                    	</tr>
											                    </table>
										                    </div>
										                </div>
									     		 	</div>
									      			<hr>
										      		<div class="row justify-content-md-center">
											          <div class="col_c" style="margin-bottom: 30px; text-align: center;">
											               <div class="input-group" >        
											                 <textarea name="boardContent" class="form-control" id="editor4" placeholder="내용을 입력하세요"></textarea>   
													     	 <script>CKEDITOR.replace('editor4');</script>
												             
											               </div>
										              </div> 
										           </div>
										      
											        <div class="row justify-content-md-center">
												        <button type="submit" class="btn btn-dark round" id="btWrite" style="width: 10%; font-weight: bold">등록</button>
												        <button type="button" class="btn btn-outline-dark round" id="btCancel" style="width: 10%; font-weight: bold"
												        	data-toggle="modal" data-backdrop="false" data-target="#boardDelete">취소</button>
	                                                </div>
                                        		 </div>
							     			 </form>          
								     	 </div>
						       			 <!--취소: 목록으로 돌아가기 모달 -->   
                                       <!-- <div class="modal fade text-left" id="honeytipDelete" tabindex="-1" role="dialog"
                                          aria-labelledby="목록으로 되돌아가기" aria-hidden="true">
                                          <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
                                             <div class="modal-content">                                               
                                                  <div class="modal-body">
                                             			<p></p>
                                                     <h4><b>목록으로 되돌아가시겠습니까?</b></h4>
                                                     <p>(작성 중인 글은 저장되지 않습니다.)</p>
                                                  </div>
                                                  <div class="modal-footer">
                                                     <button type="button" class="btn btn-light-secondary" data-dismiss="modal" id="modalDelCancel">
                                                        <i class="bx bx-x d-block d-sm-none"></i>
                                                        <span class="d-none d-sm-block">취소</span>
                                                     </button>
                                                     
                                                     <button type="button" class="btn btn-dark ml-1" data-dismiss="modal" id="modalDel">
                                                        <i class="bx bx-check d-block d-sm-none"></i>
                                                        <span class="d-none d-sm-block">목록으로</span>
                                                     </button>
                                                  </div>
										    </div>
										</div>
									</div> --> <!-- 취소: 목록으로 돌아가기 모달 -->
								</div>
							</div>  
						</div>
		                </div>
		    		</div><!-- card-body -->
	    		</div><!-- card-content -->
	    		
		    </div><!-- card -->
	    </div>
    </div>
</div>
    
<!-- script start -->
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/feather-icons/feather.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/app.js"></script>  
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/simple-datatables.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/main.js"></script>
<!-- script end -->
 
<%@ include file="../../../adminInc/bottom.jsp" %>

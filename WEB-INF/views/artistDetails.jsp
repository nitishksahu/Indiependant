<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title><c:out
				value="${artistList.firstName} ${artistList.lastName}"></c:out></title>
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/resources/css/indiependant.css">
		
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.css">
		<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/fontawesome/css/font-awesome.css">
		
		<link rel="stylesheet" type="text/css"
			href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css">
		
		<script src="<%=request.getContextPath()%>/resources/js/jquery-1.11.2.js"></script>
		<script src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js/indiependant.js"></script> 
		<style>
		
.row{
	margin-left:0px;
	margin-right:0px;
}	
div.price-indicator {
	margin-top: 2px;
}

.price-indicator-color {
	color:#ff1408;
}

</style>
	</head>
	<body style="background-color: #000000">
		<div class="container_fluid" >
		<!-- Menu Bar Starts -->
			<%@ include file="menu.jsp" %>
			
			<!--navbar  row -->
			
			

			
			
			<c:set var="uri" value=""></c:set>
			<c:if test="${not empty artistList.profilePhoto}">

				<c:set var="uri" value="${artistList.profilePhoto.uri}"></c:set>
			</c:if>
			
			<div class="row "  style="margin-top:70px;">
				<div class="col-lg-6 col-xs-12 text-center">
					
					<div class="row ">
					<div class="circle" style="background-image: url(/indie-web-srvc/image/${uri})"></div>
					</div>
					<div class="row ">
				<c:if test="${not empty artistList.socialHandleList}">
					<div text-center">
						<c:forEach items="${artistList.socialHandleList}"
							var="socialMedia">
							<c:choose>
								<c:when
									test="${ not empty socialMedia.platform && socialMedia.platform eq 'FACEBOOK'}">
									<a href='<c:out value="${socialMedia.profileUrl}"></c:out>'><i
										id="socialfb" class="fa fa-facebook-square fa-3x "
										style="color: #ff1408;"></i> </a>
								</c:when>
								<c:when
									test="${not empty socialMedia.platform && socialMedia.platform eq 'TWITTER'}">
									<a href='https://twitter.com/<c:out value="${socialMedia.platformHandle}"></c:out>'><i id="socialtw"
										class="fa fa-twitter-square fa-3x social-tw"
										style="color: #ff1408;"></i> </a>
								</c:when>
								<c:when
									test="${not empty socialMedia.platform && socialMedia.platform eq 'YOUTUBE'}">
									<a href='<c:out value="${socialMedia.profileUrl}"></c:out>'><i
										id="socialyt"
										class="fa fa-google-plus-square fa-3x fa-youtube-play"
										style="color: #ff1408;"></i> </a>
								</c:when>
								<c:when
									test="${not empty socialMedia.platform && socialMedia.platform eq 'SOUNDCLOUD'}">
									<a href='<c:out value="${socialMedia.profileUrl}"></c:out>'><i id="socialsc"
										class="fa fa-envelope-square fa-3x fa-soundcloud"
										style="color: #ff1408;"></i> </a>
								</c:when>
							</c:choose>
						</c:forEach>
					</div>
				</c:if>
				</div>
			</div>
				<div class="col-lg-6 col-xs-12 text-center">
					
							
							<font color="white">
							<h1>
							<c:out value="${artistList.firstName} ${artistList.lastName}"></c:out>
							</h1>
							<br/>
							<h2>
							<c:out value="${artistList.skillSet}"></c:out>
							</h2>
							<br/>
							<div class="row">
							<div class="col-lg-12 col-xs-12 text-center	"  >
							<i id="social"
						class="fa fa-2x fa-quote-left" style="color:#ff1408;"></i><em><strong><c:out value="${artistList.quote}"></c:out></strong></em>
						<i id="social"
						class="fa fa-2x fa-quote-right" style="color:#ff1408;"></i>
							</div>
							</div>
							<br/>
							<div class="row">
							<div class="col-lg-12 col-xs-12 text-center"  >
							<div class="flR price-indicator">
												<c:forEach var="priceCounter" begin="1" end="5">
													<c:choose>
														<c:when test="${priceCounter le artistList.priceIndicator}">
															<span class="fa fa-rupee fa fa-2x price-indicator-color"></span>
														</c:when>
														<c:otherwise>
															<span class="fa fa-rupee fa fa-2x" ></span>
														</c:otherwise>	
													</c:choose>	
												</c:forEach>	
							</div>
							</div>
							</div>		
							</font>
							<br/>
							<div class="row">
							<div class="col-lg-12 col-xs-12 text-center"  >
								<div class="artist-action">


										<span><button class="btn btn-danger quotationForm" id="quotationForm" style="text-align: center;" role="button" data-artistId="${artistList.artistId}" data-artistName="${artistList.firstName} ${artistList.lastName}"
															data-toggle="modal" data-target="#myModal">Request for quote</button></span>
									</div>
							</div>
							</div>
						
				</div>

			</div>
			<div class="row ">
					<div class="col-lg-12 col-xs-12 text-center"  >
						<div class="tab-content" style="width: 100%;">
							<ul class="nav nav-tabs">

								<li class="col-xs-3 text-center"><a data-toggle="tab" href="#bio"><font
										color="#ff1048">Bio</font>
								</a>
								</li>
								<c:if test="${not empty artistList.imagesList}">
									<li class="col-xs-3 text-center"><a data-toggle="tab" href="#photos"><font
											color="#ff1048">Photos</font>
									</a>
									</li>
								</c:if>
								<c:if test="${not empty artistList.videoList}">
									<li class="col-xs-3 text-center"><a data-toggle="tab" href="#videos"><font
											color="#ff1048">Videos</font>
									</a>
									</li>
								</c:if>
								<c:if test="${not empty artistList.audioList}">
									<li class="col-xs-3 text-center"><a data-toggle="tab" href="#audios"><font
											color="#ff1048">Audios</font>
									</a>
									</li>
								</c:if>

							</ul>
							<div class="tab-content" style="width: 100%;">
								<div id="bio" class="tab-pane fade in active"
									style="height: 50%;">
									<h3>Bio</h3>
									<div id="bioDiv"><h3>
										<font color="white"><c:out
												value="${artistList.description}" />
										</font></h3>
									</div>
								</div>
								<c:if test="${not empty artistList.imagesList}">
									<div id="photos" class="tab-pane fade">
										<h3>Photos</h3>
										<div id="imgObjs">
											<c:forEach var="imagesObj" items="${artistList.imagesList}">
												<div class="col-xs-12 col-sm-4 col-md-4">
													<img data-src="holder.js/100%x200" alt="100%x200"
														src="/indie-web-srvc/image/${imagesObj.uri}"
														onError="this.src='data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMjQyIiBoZWlnaHQ9IjIwMCIgdmlld0JveD0iMCAwIDI0MiAyMDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjxkZWZzLz48cmVjdCB3aWR0aD0iMjQyIiBoZWlnaHQ9IjIwMCIgZmlsbD0iI0VFRUVFRSIvPjxnPjx0ZXh0IHg9IjkzIiB5PSIxMDAiIHN0eWxlPSJmaWxsOiNBQUFBQUE7Zm9udC13ZWlnaHQ6Ym9sZDtmb250LWZhbWlseTpBcmlhbCwgSGVsdmV0aWNhLCBPcGVuIFNhbnMsIHNhbnMtc2VyaWYsIG1vbm9zcGFjZTtmb250LXNpemU6MTFwdDtkb21pbmFudC1iYXNlbGluZTpjZW50cmFsIj4yNDJ4MjAwPC90ZXh0PjwvZz48L3N2Zz4='"
														data-holder-rendered="true"
														style="height: 200px; width: 300px; display: block;border: 7px solid #eee;">
												</div>
											</c:forEach>
										</div>
									</div>

								</c:if>
								<c:if test="${not empty artistList.videoList}">
									<div id="videos" class="tab-pane fade">
										<h3>Videos</h3>
										<div id="mediaObjsVideo">
											<c:forEach var="mediaObjVideo"
												items="${artistList.videoList}">
												<div class="col-xs-12 col-sm-4 col-md-4">
													<iframe width="300" height="200" style="border: 7px solid #eee;"
														src="//www.youtube.com/embed/<c:out value="${mediaObjVideo.mediaUri}"></c:out>"
														frameborder="0" allowfullscreen></iframe>
												</div>


											</c:forEach>
										</div>
									</div>
								</c:if>
								<c:if test="${not empty artistList.audioList}">

									<div id="audios" class="tab-pane fade">
										<h3>Audios</h3>
										<div id="mediaObjsAudio">
											<div class="container_fluid"
												style="background-color: #000000;">
												<c:forEach var="mediaObjAudio"
													items="${artistList.audioList}">

													<div class="row ">
														<div class="col-lg-12 col-xs-12">
															<iframe width="80%" height="20%" scrolling="yes"
																frameborder="yes"
																src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/<c:out value="${mediaObjAudio.mediaUri}"></c:out>&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true"></iframe>
															<br />
														</div>
													</div>

												</c:forEach>
											</div>
										</div>
									</div>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
<br/>
<br/>
			<!-- Modal -->
<%@ include file="requestForQuote.jsp" %>		
				
<%@ include file="footer.jsp" %>
			
			
	

		<!-- container div ends -->
	</body>
</html>
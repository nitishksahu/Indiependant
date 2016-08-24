<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Talent Club | Browse</title>
</head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/indiependant.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/fontawesome/css/font-awesome.css">
<script src="<%=request.getContextPath()%>/resources/js/jquery-1.11.2.js"></script>
<script src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/indiependant.js"></script>
<body>
<%@ include file="menu.jsp" %>
<div class="container">

	<div class="row" id="blankRow">
				<div class="col-lg-12 col-xs-12 text-center"><br/><br/></div>
			</div>

<div class="row col-lg 12 col-xs-12" style="margin-top:70px;padding-left:5%;padding-right:8%;">
<img src=<%=request.getContextPath()%>/resources/images/Band.png style="height:200px;"><button type="button" class="btn btn-danger">Band </button></img>
<img src=<%=request.getContextPath()%>/resources/images/Comedian.png style="height:200px;"><button type="button" class="btn btn-danger">Comedian </button><img>
<img src=<%=request.getContextPath()%>/resources/images/Dancer.png style="height:200px;"><button type="button" class="btn btn-danger">Dancer </button></img>
<img src=<%=request.getContextPath()%>/resources/images/DJ.png style="height:200px;"><button type="button" class="btn btn-danger">DJ</button></img>
<img src=<%=request.getContextPath()%>/resources/images/Speaker.png style="height:200px;"><button type="button" class="btn btn-danger">Speaker</button></img>
<img src=<%=request.getContextPath()%>/resources/images/Singer.png style="height:200px;"><button type="button" class="btn btn-danger">Singer </button><img>
<img src=<%=request.getContextPath()%>/resources/images/Onair.png style="height:200px;"><button type="button" class="btn btn-danger">On Air </button></img>	
<img src=<%=request.getContextPath()%>/resources/images/Magician.png style="height:200px;"><button type="button" class="btn btn-danger">Magician</button></img>

<img src=<%=request.getContextPath()%>/resources/images/Musician.png style="height:200px;"><button type="button" class="btn btn-danger">Musician </button><img>

<img src=<%=request.getContextPath()%>/resources/images/Poet.png style="height:200px;" ><button type="button" class="btn btn-danger">Poet/ Poetess</button></img>
<img src=<%=request.getContextPath()%>/resources/images/VisualArtist.png style="height:200px;" ><button type="button" class="btn btn-danger">Visual Artist</button></img>



</div>



</div>
<%@ include file="footer.jsp" %>
</body>
</html>
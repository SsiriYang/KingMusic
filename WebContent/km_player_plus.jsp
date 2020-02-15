<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>播放界面</title>
<link rel="stylesheet" href="css/one.css" />
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/km_player_plus.css">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.2.0.min.js"></script>
</head>
<body>
	<div class="container" style="width: 90%;">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<nav  class="navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<a href="#"><img src="img/logo.jpg" width="120px"
							height="58px"></a>
					</div>
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1" style="margin-left: 130px">
						<ul class="nav navbar-nav">
							<li><a class="navbar-brand" href="#"
								style="font-size: 20px; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">King
									Music</a></li>
						</ul>
						<form class="navbar-form navbar-left" role="search" action="PageServlet" >
							<div class="form-group">
								<input type="text" class="form-control" name="name" />
							</div>
							<input type="hidden" name="method" value="queryMusic">
							<a href="query.jsp"><input type="submit" class="btn btn-default" value="搜索"></a>
						</form>
						<ul class="nav navbar-nav navbar-right" >
						<c:if test="${username==null}">
							<li><a href="index.jsp">返回首页</a></li>
							<li><a href="login.jsp">登录</a></li>
							<li><a href="register.jsp">注册</a></li>
							
						</c:if>
						<c:if test="${username!=null}">
							<li><a href="index.jsp">返回首页</a></li>
							<li class="dropdown"><a href="homepage.jsp"><img src="img/car.jpg" style="margin-top:-10px;width: 38px;height: 38px"></a></li>
						</c:if>
					</ul>
					</div>
				</nav>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="km_player_main" style="background-color: #f0f0f0;">
					<div id="audio-player">
						<section class="audio-control">
							<span class="icon">
								<i class="fa fa-play" style="font-size:30px;"></i>
							</span>
							<img src="img/play.jpg">
						</section>
						<section class="audio-detail">
							<div class="info">
								<h4>"${name }"</h4>								
							</div>
							
							<div class="lyric">	
							<div id="song" style="display:none;">${s }</div>							
							</div>							
						</section>
						<section class="control-bar">
							<audio autoplay preload="auto" src="${url }" controls></audio>
						</section>
						<%-- <section class="control-bar">
							<audio autoplay src="${url }" controls></audio>
						</section> --%>
					</div>
				</div>
			</div>
			<div class="col-md-12 column">
				<div class="footer">
				    <p class="p1">
				        <span><a href="future.jsp" target="_blank"><img src="img/one_footer1.png" />入驻成为音乐人</a></span>
				        <span><img src="img/one_footer1.png" />联系我们：10-8-8012</span>
				    </p>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/km_player_plus.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>King Music</title>
	<link rel="stylesheet" href="css/one.css" />
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
        $(document).ready(function() {
            $(".menu_music li").click(function() {
                $("#km_index_content .con").hide();
                var name = $(this).attr("id");
                $("#" + name + "_con").show();
            })
        })
	</script>
</head>
<body>
<div class="container" style="width: 90%;">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<a href="#"><img src="img/logo.jpg" width="120px" height="58px"></a>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="margin-left: 130px">
					<ul class="nav navbar-nav">
						<li>
							<a class="navbar-brand" href="#" style="font-size: 20px;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">King  Music</a>
						</li>
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
						<li><a href="login.jsp">登录</a></li>
						<li><a href="register.jsp">注册</a></li>
					</c:if>
					<c:if test="${username!=null}">
						<li><a style="font-size:16px;color:blueviolet;">欢迎：&nbsp;&nbsp;${username }</a></li>
						<li class="dropdown"><a href="homepage.jsp"><img src="img/car.jpg" style="margin-top:-10px;width: 38px;height: 38px"></a></li>
					</c:if>
					</ul>
				</div>

			</nav>

			<div class="menu_music" style="text-align: center">
				<ul class="nav nav-tabs" class="clearfix" >
					<li id="km_index_homepage"><a href="index.jsp" style="font-size: 20px; color: blueviolet">首页</a></li>
					<!-- 后续功能 敬请期待 -->
					<!-- <li id="km_index_ranklist"><a href="#" style="font-size: 20px; color: blueviolet">榜单</a></li>
					<li id="km_index_mess"><a href="#" style="font-size: 20px; color: blueviolet">信息</a></li> -->
				</ul>
			</div>
		</div>
	</div>

	<div id="km_index_content">
		<div class="con" class="row clearfix" id="km_index_homepage_con">
			<div class="col-md-12 column">
				<div class="carousel slide" id="carousel-719915">
					<ol class="carousel-indicators">
						<li class="active" data-slide-to="0" data-target="#carousel-719915"></li>
						<li data-slide-to="1" data-target="#carousel-719915"></li>
						<li data-slide-to="2" data-target="#carousel-719915"></li>
						<li data-slide-to="3" data-target="#carousel-719915"></li>
						<li data-slide-to="4" data-target="#carousel-719915"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<a href="one.jsp"><img width="100%" alt="" src="img/carousel1.jpg" /></a>
							<div class="carousel-caption">
								<h4  style="color:blueviolet">张杰</h4>
								<p  style="color:blueviolet">微笑着胜利</p>
							</div>
						</div>
						<div class="item">
							<a href="two.jsp"><img width="100%" alt="" src="img/carousel2.jpg" /></a>
							<div class="carousel-caption">
								<h4  style="color:blueviolet">金志文</h4>
								<p style="color:blueviolet">青春不一样</p>
							</div>
						</div>
						<div class="item">
							<a href="three.jsp"><img width="100%" alt="" src="img/carousel3.jpg" /></a>
							<div class="carousel-caption">
								<h4 style="color:blueviolet">薛之谦</h4>
								<p style="color:blueviolet">最好</p>
							</div>
						</div>
						<div class="item">
							<a href="four.jsp"><img width="100%" height="100%" alt="" src="img/carousel4.png" /></a>
							<div class="carousel-caption">
								<h4 style="color:blueviolet">段奥娟</h4>
								<p style="color:blueviolet">陪我长大</p>
							</div>
						</div>
						<div class="item">
							<a href="five.jsp"><img width="100%" alt="" src="img/carousel5.jpg" /></a>
							<div class="carousel-caption">
								<h4 style="color:blueviolet">万妮达</h4>
								<p style="color:blueviolet">WEEKEND</p>
							</div>
						</div>
					</div>
					<a class="left carousel-control" href="#carousel-719915"
					   data-slide="prev"><span
							class="glyphicon glyphicon-chevron-left"></span></a> <a
						class="right carousel-control" href="#carousel-719915"
						data-slide="next"><span
						class="glyphicon glyphicon-chevron-right"></span></a>
				</div>
				<h3 style="color: blueviolet;font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif">专辑推荐</h3>
				<div class="row">
					<div class="col-md-4">
						<div class="thumbnail">
							<img width="300px" height="300px" alt="张杰专辑" src="img/star1.jpg" />
							<div class="caption">
								<h3>Precious</h3>
								<p>张杰</p>
								<p>
									<a class="btn btn-primary" href="PlayServlet?name=张杰%20-%20Precious" onclick="play('audio/张杰 - Precious.mp3')">播放</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="thumbnail">
							<img width="300px" height="300px" alt="300x200" src="img/star2.jpg" />
							<div class="caption">
								<h3>JULY</h3>
								<p>吴亦凡</p>
								<p>
									<a class="btn btn-primary" href="PlayServlet?name=吴亦凡%20-%20JULY"  onclick="play('audio/吴亦凡 - JULY.mp3')">播放</a> 
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="thumbnail">
							<img width="300px" height="300px" alt="300x200" src="img/star3.jpg" />
							<div class="caption">
								<h3>怪咖</h3>
								<p>薛之谦</p>
								<p>
									<a class="btn btn-primary" href="PlayServlet?name=薛之谦%20-%20怪咖" onclick="play('audio/薛之谦 - 怪咖.tmp')">播放</a> 
								</p>
							</div>
						</div>
					</div>
				</div>
				<audio id="km_aud" controls="controls" style="display: none">
					<source src=""></sourse>
				</audio>

				<h3 style="color: blueviolet;font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif">歌手推荐</h3>
				<div class="row clearfix">
					<div class="col-md-12 column">
						<div class="km_index_singer" class="row clearfix">
							<div class="col-md-4 column">
								<div class="row clearfix">
									<div class="col-md-6 column">
										<a style="text-decoration: none;" href="PageServlet?name=张杰&method=queryMusic"><img width="150px" height="150px" alt="张杰" src="img/1zhangjie.jpg" class="img-rounded" /><br>
										<font color="#9932cc" size="5px" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;张杰</font></a>
									</div>
									<div class="col-md-6 column">
										<a style="text-decoration: none;" href="PageServlet?name=薛之谦&method=queryMusic"><img width="150px" height="150px" alt="薛之谦" src="img/2xuexhiqian.jpg" class="img-rounded" /><br>
										<font color="#9932cc" size="5px" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;薛之谦</font></a>
									</div>
								</div>
								<div style="margin-top: 30px" class="row clearfix">
									<div class="col-md-6 column">
										<a style="text-decoration: none;" href="PageServlet?name=赵丽颖&method=queryMusic"><img width="150px" height="150px" alt="赵丽颖" src="img/3zhaoliying.jpg" class="img-rounded" /><br>
										<font color="#9932cc" size="5px" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;赵丽颖</font></a>
									</div>
									<div class="col-md-6 column">
										<a style="text-decoration: none;" href="PageServlet?name=吴亦凡&method=queryMusic"><img width="150px" height="150px" alt="吴亦凡" src="img/4wuyifan.jpg" class="img-rounded" />
										<br><font color="#9932cc" size="5px" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;吴亦凡</font></a>
									</div>
								</div>
							</div>
							<div class="col-md-4 column">
								<div class="row clearfix">
									<div class="col-md-6 column">
										<a style="text-decoration: none;" href="PageServlet?name=李健&method=queryMusic"><img width="150px" height="150px" alt="李健" src="img/5lijian.jpg" class="img-rounded" />
										<br><font color="#9932cc" size="5px" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;李健</font></a>
									</div>
									<div class="col-md-6 column">
										<a style="text-decoration: none;" href="PageServlet?name=陈奕迅&method=queryMusic"><img width="150px" height="150px" alt="陈奕迅" src="img/6chenyixun.jpg" class="img-rounded" />
										<br><font color="#9932cc" size="5px" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;陈奕迅</font></a>
									</div>
								</div>
								<div style="margin-top: 30px" class="row clearfix">
									<div class="col-md-6 column">
										<a style="text-decoration: none;" href="PageServlet?name=杨宗纬&method=queryMusic"><img width="150px" height="150px" alt="杨宗纬" src="img/7yangzongwei.jpg" class="img-rounded" />
										<br><font color="#9932cc" size="5px" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;杨宗纬</font></a>
									</div>
									<div class="col-md-6 column">
										<a style="text-decoration: none;" href="PageServlet?name=华晨宇&method=queryMusic"><img width="150px" height="150px" alt="华晨宇" src="img/8huachenyu.jpg" class="img-rounded" />
										<br><font color="#9932cc" size="5px" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;华晨宇</font></a>
									</div>
								</div>
							</div>
							<div class="col-md-4 column">
								<div class="row clearfix">
									<div class="col-md-6 column">
										<a style="text-decoration: none;" href="PageServlet?name=李荣浩&method=queryMusic"><img width="150px" height="150px" alt="李荣浩" src="img/9lironghao.jpg" class="img-rounded" />
										<br><font color="#9932cc" size="5px" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;李荣浩</font></a>
									</div>
									<div class="col-md-6 column">
										<a style="text-decoration: none;" href="PageServlet?name=周杰伦&method=queryMusic"><img width="150px" height="150px" alt="周杰伦" src="img/10zhoujielun.jpg" class="img-rounded" />
										<br><font color="#9932cc" size="5px" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;周杰伦</font></a>
									</div>
								</div>
								<div style="margin-top: 30px" class="row clearfix">
									<div class="col-md-6 column">
										<a style="text-decoration: none;" href="PageServlet?name=五月天&method=queryMusic"><img width="150px" height="150px" alt="五月天" src="img/11wuyuetian.jpg" class="img-rounded" />
										<br><font color="#9932cc" size="5px" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;五月天</font></a>
									</div>
									<div class="col-md-6 column">
										<a style="text-decoration: none;" href="PageServlet?name=许嵩&method=queryMusic"><img width="150px" height="150px" alt="许嵩" src="img/12xunsong.jpg" class="img-rounded" />
										<br><font color="#9932cc" size="5px" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;许嵩</font></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- <div class="con" style="display: none;" id="km_index_ranklist_con">榜单</div>
		<div class="con" style="display: none;" id="km_index_mess_con">信息</div> -->
	</div>
	
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="footer">
				<p class="p1">
						<span><a href="future.jsp" target="_blank"><img
								src="img/one_footer1.png" />入驻成为音乐人</a></span> <span><img
						src="img/one_footer1.png" />联系我们：10-8-8012</span>
				</p>
			</div>
		</div>
	</div>
</div>
<script>
	var audio=document.getElementById("km_aud");
	function play(name) {
		audio.src=name;
		audio.autoplay="autoplay";
    }
</script>
</body>
</html>
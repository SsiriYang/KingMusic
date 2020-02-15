<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>微笑着胜利-唱片-King Music音乐</title>
<link rel="stylesheet" href="css/one.css" />
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container" style="width: 90%">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<nav class="navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<a href="#"><img src="img/logo.jpg" width="120px" height="58px"></a>
					</div>
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1" style="margin-left: 130px">
						<ul class="nav navbar-nav">
							<li><a class="navbar-brand" href="#" style="font-size: 20px; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">King Music</a></li>
						</ul>
						<form class="navbar-form navbar-left" role="search" action="PageServlet" >
							<div class="form-group">
								<input type="text" class="form-control" name="name" />
							</div>
							<input type="hidden" name="method" value="queryMusic">
							<a href="query.jsp"><input type="submit" class="btn btn-default" value="搜索"></a>
						</form>
						<ul class="nav navbar-nav navbar-right">
							<c:if test="${username==null}">
								<li><a href="index.jsp">返回首页</a></li>
								<li><a href="login.jsp">登录</a></li>
								<li><a href="register.jsp">注册</a></li>
							</c:if>
							<c:if test="${username!=null}">
								<li><a href="index.jsp">返回首页</a></li>
								<li><a style="font-size:16px;color:blueviolet;">欢迎：&nbsp;&nbsp;${username }</a></li>
								<li class="dropdown"><a href="homepage.jsp"><img src="img/car.jpg" style="margin-top:-10px;width: 38px;height: 38px"></a></li>
							</c:if>
						</ul>
					</div>
				</nav>
				
			</div>
		</div>
			<div class="row clearfix">
				<div class="col-md-12 column">
				<!-- 下面整体 -->
				<div class="bg_box">
					<div class="main" style="margin:0px auto;">
						<!-- 下面中间 -->
						<div class="record_data">
							<!-- 下面中心 -->
							<div class="record_data_left">
								<!-- 下面左边 -->
								<h3>唱片手记</h3>
								<dl>
									<dd id="designNotes" style="height: 240px; overflow: hidden;">重磅！庆祝建军91周年宣传主题曲《微笑着胜利》全新发布！张杰献唱庆祝建军91周年宣传主题曲《微笑着胜利》，有铁骨也有柔情！一曲听罢热血涌！庆祝建军91周年宣传主题曲《微笑着胜利》震撼发布。91载苦难辉煌，91载砥砺奋进！刚刚，庆祝建军91周年宣传主题曲《微笑着胜利》震撼发布，中央军委政治工作部网络舆论局监制，李劲、张凯作词，亢竹青作曲，张杰演唱。短短12句歌词，唱出人民军队从无到有，从弱到强，从胜利走向胜利的基因密码。这是一曲唱给人民军队的赞歌，也是子弟兵写给祖国的情歌!没有强的军，便没有强的国。这里金戈铁马、楼船夜雪，这里功勋卓著、英雄辈出，这里脚踏祖国大地、背负民族希望。这是一支值得大书特书的人民武装，这是一支理应大唱特唱的中国力量！《微笑着胜利》词曲创作饱醮山河深情，饱含红色基因，充分融入时尚、流行元素，风格既简洁、明快，又富寓内涵，将重大主题轻快表达，极具"四两拨千斤"的艺术效果。视频画面每一帧都精美、隽永、震撼。张杰的演唱柔中带刚，血气充盈，于淡然中见宏阔，于无声处听惊雷，具有极强的视听冲击力和艺术感染力。一起来，跟着张杰的歌声，感悟我们英雄军队的壮丽征程和强军脉动！</dd>
									<!-- 文字怎么收起？ -->
									<!-- <dt id="morebtn" style="display:none;"><a href="javascript:more()">［更多］</a></dt> -->
								</dl>
								<ul class="downimg">
									<li><img src="img/logo.jpg" width="200px" height="100px" /></li>
									<li style="text-align:center"><img src="img/common3.jpg" width="200px" height="200px"  /></li>
								</ul>
							</div>
							<div class="record_data_right" style="width: 580px;">
								<dl>
									<dt class="name_logo">
										<img width="256" height="256" src="img/one1.jpg" />
									</dt>
									<dd style="width:200px;" class="album_name">微笑着胜利</dd>
									<dd style="width:200px;" class="album_num">1首</dd>
									<dd style="width:200px;" class="album_time">发行时间：2018-08-01</dd>
									<dd style="width:200px;" class="album_ren">
										<a href="PageServlet?name=张杰&method=queryMusic"><img src="img/one2.jpg" /><i>张杰</i></a>
									</dd>
									<dd style="width:200px;" class="album_all">
										<button type="button" onclick="play('audio/张杰 - 微笑着胜利.mp3')">播放</button>
									</dd>
								</dl>
								<div class="album_music">
									<ul class="ul1">
										<li style="width: 150px;">歌曲名</li>
										<li>音乐人</li>
										<li>时长</li>
									</ul>
									<ul>
										<li style="width: 150px;"><a href="PlayServlet?name=张杰%20-%20微笑着胜利" target="view_frame">微笑着胜利</a></li>
										<li><a href="PageServlet?name=张杰&method=queryMusic">张杰</a></li>
										<li>04:31</li>
									</ul>
								</div>
								<audio id="km_aud" controls="controls" style="display: block;width: 100%">
									<source src=""></sourse>
								</audio>
							</div>
						</div>
					</div>
				</div>
				
				
				</div>
			</div>
		
		<div class="row clearfix" >
			<div class="col-md-12 column">
				<div class="footer" >
					<p class="p1">
						<span><a href="future.jsp" target="_blank">
						<img src="img/one_footer1.png" />入驻成为音乐人</a></span> 
						<span><img src="img/one_footer1.png" />联系我们：10-8-8012</span>
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
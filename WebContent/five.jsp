<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Weekend-唱片-King Music音乐</title>
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
							<li><a class="navbar-brand" href="#" style="font-size: 20px; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">King  Music</a></li>
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
    <div class="main" style="margin:0px auto;"><!-- 下面中间 -->
        <div class="record_data"><!-- 下面中心 -->
            <div class="record_data_left"><!-- 下面左边 -->
                <h3>唱片手记</h3>
                <dl>
                	<dd id="designNotes" style="height: 240px;overflow: hidden;">抓耳的Trap节奏，戏谑轻松的唱腔，加上万妮达独有的音色，一派轻松——这是她刚刚发布的全新单曲《Weekend》。 属于嘻哈女孩的轻松有趣 没有宏大的编曲和女王式的咄咄逼人，2018万妮达的首张单曲反其道而行之，以一派轻松的口吻，有些戏谑地调侃，「今天明天后天都是Weekend」，在Hook部分开玩笑似的重复，似乎想要向所有人表达“Why So Serious”的讯息。 以放松、自如的态度面对人生，这是万妮达在这张单曲中想要表达的。</dd>
                    <!-- 文字怎么收起？ -->
                    <!-- <dt id="morebtn" style="display:none;"><a href="javascript:more()">［更多］</a></dt> -->
                </dl>
                <ul class="downimg">
                    <li><img src="img/logo.jpg" width="200px" height="100px" /></li>       
                    <li style="text-align:center"><img src="img/common3.jpg" width="200px" height="200px"  /></li>
                </ul>
            </div>
            <div class="record_data_right" style="width: 580pxpx;">
                <dl>
                    <dt class="name_logo"><img width="256" height="256" src="img/five1.jpg" /></dt>
                    <dd style="width:200px;" class="album_name">Weekend</dd>
                    <dd style="width:200px;" class="album_num">1首</dd>
                    <dd style="width:200px;" class="album_time">发行时间：2018-07-30</dd>
                    <dd style="width:200px;" class="album_ren"><a href="PageServlet?name=万妮达&method=queryMusic"><img src="img/five2.jpg" /><i>万妮达</i></a></dd>
                    <dd style="width:200px;" class="album_all"><button type="button" onclick="play('audio/万妮达 - Weekend.mp3')">播放</button></dd>
                </dl>
                <div class="album_music">
                    <ul class="ul1">
                        <li style="width: 150px;">歌曲名</li>
                        <li>音乐人</li>
                        <li>时长</li>
                    </ul>
                    <ul>
                        <li style="width: 150px;"><a href="PlayServlet?name=万妮达%20-%20Weekend" target="view_frame">Weekend</a></li>
                        <li><a href="PageServlet?name=万妮达&method=queryMusic">万妮达</a></li>
                        <li>03:16</li>
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
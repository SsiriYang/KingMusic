<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>陪我长大-唱片-King Music音乐</title>
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
    <div class="main" style="margin:0px auto;"><!-- 下面中间 -->
        <div class="record_data"><!-- 下面中心 -->
            <div class="record_data_left"><!-- 下面左边 -->
                <h3>唱片手记</h3>
                <dl>
                	<dd id="designNotes" style="height: 240px;overflow: hidden;">火箭少女101段奥娟，以干净清澈毫无杂质的声音被众人称为“被天使吻过的嗓音”，她自然纯真的气质，颇具水准的演唱实力，也让其成为电影《快把我哥带走》主题曲《陪我长大》演唱者的不二人选。该电影由郑芬芬导演，张子枫、彭昱畅、赵今麦、孙泽源、易安音乐社方翔锐、刘冠毅出演,讲述了彭昱畅、张子枫扮演的兄妹时分、时秒的互怼日常。它不仅仅有轻松搞笑的成分，同时兄妹感情细腻表达，笑中有泪，代表了一代人的共鸣与心声，拥有兄弟姐妹的观众能在影片中看到自己成长路程的缩影，独生子女更渴望在家庭生活中有人陪伴与分享，感受爱与被爱的双重温暖。</dd>
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
                    <dt class="name_logo"><img width="256px" height="256px" src="img/four_1.jpg" /></dt>
                    <dd style="width:200px;" class="album_name">陪我长大</dd>
                    <dd style="width:200px;" class="album_num">1首</dd>
                    <dd style="width:200px;" class="album_time">发行时间：2018-08-07</dd>
                    <dd style="width:200px;" class="album_ren"><a href="PageServlet?name=段奥娟&method=queryMusic"><img src="img/four_2.jpg" /><i>段奥娟</i></a></dd>
                    <dd style="width:200px;" class="album_all"><button type="button"  onclick="play('audio/段奥娟 - 陪我长大.mp3')">播放</button></dd>
                </dl>
                <div class="album_music">
                    <ul class="ul1">
                        <li style="width: 150px;">歌曲名</li>
                        <li>音乐人</li>
                        <li>时长</li>
                    </ul>
                    <ul>
                        <li style="width: 150px;"><a href="PlayServlet?name=段奥娟%20-%20陪我长大" target="view_frame">陪我长大</a></li>
                        <li><a href="PageServlet?name=段奥娟&method=queryMusic">段奥娟</a></li>
                        <li>03:56</li>
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
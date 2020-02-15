<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎登陆King Music</title>
<link rel="stylesheet" href="css/reset.css" />
<link rel="stylesheet" href="css/common.css" />
<link rel="stylesheet" href="css/one.css" />
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script><script type="text/javascript" src="js/jquery.min.js" ></script>
<script type="text/javascript" src="js/common.js" ></script>
</head>
<body>
<body>
	<div class="container" style="width: 90%">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<nav class="navbar navbar-default" role="navigation">
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
						<ul class="nav navbar-nav navbar-right">
							<li><a href="index.jsp">返回首页</a></li>
							
						</ul>
					</div>
				</nav>
				
				
				<div class="content" style="width:760px;height:500px;margin:0 auto;">
				
					<div style="float:left;"><img src="img/login.jpg" width=360px height=350px></div>
					<div class="login_box" style="float:left;">	
						<div class="login_form">
							<div class="login_title" style="color:purple;">
								登录
							</div>
							<div style="width:300px;height:15px;text-align:center;margin:0 auto;font-size:16px;color:orange;">
				
								<%
									String flag = (String)request.getAttribute("flag");
									if(flag!=null){
										out.print("<img src='img/mark.jpg'>"+flag);
									}
								%>
							</div>
							<form action="MusicServlet" method="post">
								<div class="form_text_ipt"> 
									<input name="username" type="text" placeholder="用户名">
								</div>
								<div class="ececk_warning"><span>用户名不能为空</span></div>
								<div class="form_text_ipt">
									<input name="password" type="password" placeholder="密码">
								</div>
								<div class="ececk_warning"><span>密码不能为空</span></div>
								<div class="form_check_ipt">
									<div class="left check_left">
										<label><input name="" type="checkbox"> 下次自动登录</label>
									</div>
									<div class="right check_right">
										<a href="#">忘记密码</a>
									</div>
								</div>
								<div class="form_btn" >
									<input type="hidden" name="method" value="checkLogin">
									<button style="background-color: purple;" type="submit" onclick="javascript:window.location.href='#'">登录</button>
								</div>
								<div class="form_reg_btn">
									<span>还没有帐号？</span><a href="register.jsp">马上注册</a>
								</div>
							</form>
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

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人中心</title>
<link rel="stylesheet" href="css/common.css" />
<link rel="stylesheet" href="css/one.css" />
<link rel="stylesheet" href="css/km_homepage.css" />
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/jquery-3.2.0.min.js"></script>
<script src="js/distpicker.data.js"></script>
<script src="js/distpicker.js"></script>
<script src="js/main.js"></script>
<script type="text/javascript" src="js/select.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#km_m_nav li").click(function() {
			$("#km_m_nav li").removeClass("current");
			$(this).addClass("current");
			$("#km_m_content .km_m_content_con").hide();
			var name = $(this).attr("id");
			$("#" + name + "_con").show();
		})
	})
</script>
<!-- 上传歌曲格式验证 -->
<script type="text/javascript">
$(function(){
	$("#km_btn1").click(function(){
		var str=$("#ipt").val();
		var arr=str.split('\\');
		var my=arr[arr.length-1];
		
		 if((my.indexOf(".mp3"))==-1){
			 alert("上传格式需为mp3格式");
			
		}else{
			
			$(this).prop("type","submit"); 
			alert("正在上传...");
		} 
	})
});
</script>

</head>
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
							<li class="dropdown"><a href="homepage.jsp"><img src="img/car.jpg"	style="margin-top: -10px; width: 38px; height: 38px"></a></li>
						</ul>
					</div>
				</nav>
	
			<!--下面整体  -->
			<div class="km_m_main">
				<div class="km_m_box" style="padding-bottom: 20px;">
					<div class="km_m_contents" style="min-height: 600px;">
						<div class="km_m_left">
							<div class="head_img" style="background-image:url('${head_img }');background-size: cover;width: 160px;height: 160px;">	</div>
						</div>
						<div class="km_m_right" style="min-height: 600px;">
							<div class="km_m_title">
								<h1>聆听世界</h1>
							</div>
							<div id="km_m_nav">
								<ul>
									<!-- <li class="current" id="km_m_portrait">上传头像 -->
									<li class="current" id="km_m_information">编辑资料
									<li id="km_m_password">修改密码
									<li id="km_m_updown">上传歌曲
								</ul>
							</div>
							<div id="km_m_content">
							<div class="km_m_content_con" id="km_m_information_con">
								<form action="UploadImg" method="post" enctype="multipart/form-data">
									<div class="form_div">上传头像：<input id="km_head" type="file" name="file" style="font-size:10px;display:inline">
									<button id="km_head_submit" style=" width:70px;height:28px;border: none;color: #FFFFFF;background: purple;cursor: pointer;" type="submit"value="">上传</button></div>
								</form>
								<form action="HomepageServlet" method="get" enctype="multipart/form-data">
									<div class="form_div">用&nbsp;户&nbsp;名：<input type="text" name="username" disabled="disabled" id="username" maxlength="30" value="${username }">（不可更改）</div>
									<div   class="form_div" style="height:60px; line-height: 50px;">介&nbsp;&nbsp;&nbsp;&nbsp;绍：<textarea name="introduce" class="t_area" id="signature" style="color:black">${introduce }</textarea></div>
									<div class="form_div">
										<span>性&nbsp;&nbsp;&nbsp;&nbsp;别：</span> 
										<input type="radio" id="km_man" value="man" name="sex">男 
										<input type="radio" id="km_woman" value="woman" name="sex">女 
									</div>
									
									<div class="form_div"  id="date">
										<span>生&nbsp;&nbsp;&nbsp;&nbsp;日：${year }--${month }</span> <br>
										<select style="color:black" name="year" id="year">
											<option value="" style="color:black" >1990</option>
										</select> <select name="month" id="month" style="color:black">
											<option value="" style="color:black">05</option>
										</select> <select id="days" class="day" style="color:black">
											<option value="" style="color:black">05</option>
										</select>
									</div>
									<div class="form_div" id="address" style="margin-top:45px;">
										地&nbsp;&nbsp;&nbsp;&nbsp;区：&nbsp;${province }--${city }<br>
										<select name="province" id="province" style="color:black">
											<option value="" style="color:black">${province }</option>
										</select><select name="city" id="city">
											<option value="" style="color:black">${city }</option>
										</select><select id="town" class="town">
											<option value="" style="color:black">选择乡镇</option>
										</select>
									</div>
									<div class="form_div" id="sub" style="text-align: center;margin:40px -40px;">
											<button style=" width:100px;height:50px;border: none;color: #FFFFFF;background-color: purple;cursor: pointer;" type="submit" value="">确认保存</button>
									</div>
								</form>
							</div>
							<div style="display: none;" class="km_m_content_con" id="km_m_password_con">
								<form action="ChangePassServlet" method="get">
									<div class="form_div">旧&nbsp;密&nbsp;码:&nbsp;<input name="pass" type="password" disabled="disabled" value="${password }"></div>
									<div class="form_div">新&nbsp;密&nbsp;码:&nbsp;<input id="km_newpass" name="newpass" type="password"></div>
									<div class="form_div">再次输入:&nbsp;<input id="km_repass" name="repass" type="password"><div id="km_checkpass"></div></div>
									<div class="form_div" style="text-align: center;margin:200px -50px;">
										<button id="km_hp_button" style=" width:100px;height:50px;border: none;color: #FFFFFF;background: purple;cursor: pointer;" type="button"value="">确认</button>
									</div>
								</form>
							</div>
							<div style="display: none;" class="km_m_content_con" id="km_m_updown_con">
								<form action="UploadServlet" method="post" enctype="multipart/form-data">
									<div class="form_div">上传歌曲:<input name="up" type="file"  id="ipt"></div>
									<div class="form_div" style="margin:230px 230px;">
										<button style=" width:100px;height:50px;border: none;color: #FFFFFF;background-color: purple;cursor: pointer;" type="button" id="km_btn1" value="">上传</button>
										<div id="mess5"></div>
									</div>
								</form>
								
								
							</div>
						</div>
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
						<span><a href="http://new.9sky.com/" target="_blank">
						<img src="img/one_footer1.png" />入驻成为音乐人</a></span> 
						<span><img src="img/one_footer1.png" />联系我们：400-0007-400</span>
					</p>
				</div>
			</div>
		</div>
		
	</div>	
	<script type="text/javascript">
		$(function() {
			$("#date").selectDate()
			$("#days").focusout(function() {
				var year = $("#year option:selected").html()
				var month = $("#month option:selected").html()
				var day = $("#days option:selected").html()
				console.log(year + month + day)
			})

		})
	</script>
	<script type="text/javascript">
		$(function(){
			$("#km_head_submit").click(function(){
				var str=$("#km_head").val();
				var arr=str.split('\\');
				var my=arr[arr.length-1];
				if((my.indexOf(".jpg")||my.indexOf(".png")||my.indexOf(".jpeg")||my.indexOf(".gif")||my.indexOf(".tif"))==-1){
					 alert("请上传正确图片格式");
				}else{
					$(this).prop("type","submit");  	
				} 
			});
		});
	</script>
	<script type="text/javascript">
		//上传头像不为空
		$(function(){
			//验证密码一致
			$("#km_repass").blur(function(){
				var r=$(this).val();
				var p=$("#km_newpass").val();
				if(p=="" || r==""){
					$("#km_checkpass").html("密码不能为空");
				}else
				if(p==r){
					$("#km_checkpass").html("密码一致");
					$("#km_checkpass").css("color","green");
				}else{
					$("#km_checkpass").html("两次密码不一致");
					$("#km_checkpass").css("color","red");
				}
			});
			$("#km_hp_button").click(function(){
		        var t=$("#km_checkpass").html();
		        if(t!="密码一致"){
		        	alert("两次密码不一致!");
		        } else{
		            $(this).prop("type","submit");
		        }
			 });
			
		});
	</script> 
	<script	type="text/javascript">
	$('#address').distpicker({
		province : '---- 所在省 ----',
		city : '---- 所在市 ----',
		district : '---- 所在区 ----'
	});
</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
<meta charset="utf-8">
<title>注册界面</title>
<link rel="stylesheet" href="css/reset.css" />
<link rel="stylesheet" href="css/common.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<link rel="stylesheet" href="css/one.css" />
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
var code;

	function createCode() {
		code = "";
		var codeLength = 4; //验证码的长度
		var checkCode = document.getElementById("km_rgst_001");
		var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c',
				'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o',
				'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A',
				'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
				'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
		for (var i = 0; i < codeLength; i++) {
			var charNum = Math.floor(Math.random() * 52);
			code += codeChars[charNum];
		}
		if (checkCode) {
			checkCode.className = "code";
			checkCode.innerHTML = code;
		}
	}
	
</script>
	<script type="text/javascript">
$(function(){
	$("[name=username]").blur(function(){
		var username = $(this).val();
		$.ajax({
			url:"back",//请求地址
			type:"post",//设置请求方式
			data:{"username":username},//设置请求参数前面是key,对应input下的name,后面是value,对应text文本框中的属性值
			dataType:"json",//设置响应数据的类型,还可以设置text
			success:function(ret){
				if(ret.success=='2'){
					$("#mess").html("用户名不能为空");
					
				}else
				if(ret.success=='1'){
					$("#mess").html("用户名已存在");
					
				}else{
					$("#mess").html("用户名可用");
					$("#mess").css("color","green");
				}
			}
		})
	});
});
</script>
<script>
$(function(){
	$("#km_repass").blur(function(){
		var r=$(this).val();
		var p=$("#km_pass").val();
		
		if(p=="" || r==""){
			$("#mess2").html("密码不能为空");
		}else
		if(p==r && p!="" && r!=""){
			$("#mess2").html("密码一致");
			$("#mess2").css("color","green");
		}else{
			$("#mess2").html("两次密码不一致");
			$("#mess2").css("color","red");
		}
	});
	$("#km_inputCode").blur(function(){
		var y=$(this).val();
		
		if(y==code){
			$("#mess3").html("验证码正确");
			$("#mess3").css("color","green");
		}else{
			 $("#mess3").html("验证码错误"); 
			 createCode();
			 
		}
	});
		
		
		function checkMobile(str) { //写一个判断函数
		      
		    var  re = /^1\d{10}$/    //正则表达式
		    	
		    if (re.test(str)) {      //判断字符是否是11位数字
		          $("#mess4").html("手机号码格式正确");
		          $("#mess4").css("color","green");
		    }
		    else {
		          $("#mess4").html("手机号码格式错误");
		         
		    }
		}
		$("#km_tel").blur(function(){
		        var str = $(this).val(); //取值
		        checkMobile(str);
		});
    $("#km_btn").click(function(){
        var t=$("#mess").html();
        var mess2=$("#mess2").html();
        var mess3=$("#mess3").html();
        var mess4=$("#mess4").html();
        if(t=="用户名可用" && mess2=="密码一致" && mess3=="验证码正确" && mess4=="手机号码格式正确"){
        	
        	 $(this).prop("type","submit");
        }else{
        	}
    });
     
});

</script>
</head>
<body>

<%
	String flag = (String)request.getAttribute("flag");
	if(flag!=null){
		out.print("<div style='font-size:36px;color:red;text-align:center'>"+flag+"</div>");
	}
%>
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
						<form class="navbar-form navbar-left" role="search">
							<div class="form-group">
								<input type="text" class="form-control" />
							</div>
							<a href="**"><button type="submit" class="btn btn-default">搜索</button></a>
						</form>
						<ul class="nav navbar-nav navbar-right">
							<li><a href="index.jsp">返回首页</a></li>
							<li class="dropdown"><a href="homepage.jsp"><img
									src="img/car.jpg"
									style="margin-top: -10px; width: 38px; height: 38px"></a></li>
						</ul>
					</div>
				</nav>
	
		<div class="content" style="width:760px;height:500px;margin:0 auto;">
			<div style="float:left;"><img src="img/login.jpg" width=360px height=350px></div>
				<div class="login_box" style="float:left;">
					<div class="login_form" >
						<div class="login_title" style="color:purple;">注册</div>
						<form action="MusicServlet" method="post" onsubmit="return validateCode()">
							<div class="form_text_ipt">
								<input name="username" type="text" id="km_name" placeholder="用户名"><font id="mess"></font>
							</div>
							<div class="ececk_warning">
								<span></span>
							</div>
							<div class="form_text_ipt">
								<input name="password" type="password" id="km_pass" placeholder="密码"><font id="mess1"></font>
							</div>
							<div class="ececk_warning">
								<span></span>
							</div>
							<div class="form_text_ipt">
								<input name="repassword" type="password" id="km_repass" placeholder="重复密码"><font id="mess2" ></font>
							</div>
							<div class="ececk_warning">
								<span></span>
							</div>
							<div class="form_text_ipt">
								<input name="tel" type="text" id="km_tel" placeholder="手机号"><font id="mess4"></font>
							</div>
							<div class="ececk_warning">
								<span></span>
							</div>
							<div class="form_text_ipt1">
								<input name="code" type="text" id="km_inputCode" placeholder="验证码">
							</div>
							<div class="ececk_warning">
								<span></span></div>
								<div id="km_rgst_001" onclick="createCode()" ></div> 
							<td><a  onclick="createCode()" id="km_rgst_002">点击获取验证码</a></td>
							</div>
							<div id="mess3" style="position: relative;height:10px; left: 30px;top: -56px;color: red;font-size: 10px;"></div>
						<div  id="km_ck_005"><td></td></div>
						<div class="form_btn">
							<input type="hidden" name="method" value="insertUser">
							<input id="km_btn" style="width: 100%;height: 100%;border: none;color: #FFFFFF;font-size: 14px;background: purple;cursor: pointer;"
							 type="button"  value="注册">
						</div>
						<div class="form_reg_btn">
							<span>已有帐号？</span><a href="login.jsp" >马上登录</a>
						</div>
						</form>

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

</body>
</html>
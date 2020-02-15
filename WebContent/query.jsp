<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*,com.km.model.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<title>King Music</title>
	<link rel="stylesheet" href="css/one.css" />
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="css/query.css" />

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
						<input type="submit" class="btn btn-default" value="搜索">
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
	
	<!-- 搜索结果展示开始 -->
	<div class="km_query_bg">
		<!-- 搜索框 -->
		<div class="km_search_header" style="height:50px;">
	        <div class="search_wrapper content_search" style="padding-top:0px;">
	    		<div class="km_search_input">
	    		<form action="PageServlet">
					<input type="text" name="name" style="outline:none;">
					<input type="hidden" name="method" value="queryMusic">
					<div class="km_searh_btn">
						<button  style=" width:42px;height:39px;border: none;color: #FFFFFF;background-color: purple;cursor: pointer;type="submit"  value="搜索">搜索</button>
					</div>
				</form>
				</div>
	        </div>
		</div>
		<div class="km_query_main">
			<div class="km_query_center">
				<div class="center_left">
					<img src="img/query_left.jpg" width="300px" height="600px">
				</div>
				<div class="center_right" style="width:580px;">
					<form action="PageServlet" method="post">
						<div class="right_songs">
							<table>
								<tr style="width:520px;">
                       				<td class="right_td_01">全部歌曲</td>
                    			</tr>										
								<form action="PlayServlet" method="post">
									<c:forEach items="${musics}" var="music" begin="0" step="1" varStatus="stat">
										<tr style="width:520px;">
											<td class="right_td_02"><a href="PlayServlet?name=${music.name }">${music.name }</a></td>
										</tr>
									</c:forEach>
								</form>
							
							</table>
						</div>
					<!-- 搜索结果展示结束 -->
					
						<!--分页开始  -->
						<div class="right_page">
						    <ul>				                   
				                   <c:if test="${pageindex!=null && pageindex!=totalPage }">
				                   	<li ><a href="PageServlet?method=queryMusic&pageindex=${totalPage}">末页</a></li>
				                   	<li><a href="PageServlet?method=queryMusic&pageindex=${pageindex+1 }">下一页</a></li>				                    
				                   </c:if>
				                   <c:if test="${pageindex!=null && pageindex!=1 }">
				                   	<li ><a href="PageServlet?method=queryMusic&pageindex=${pageindex-1}">上一页</a></li>
				                   	<li ><a href="PageServlet?method=queryMusic&pageindex=1">首页</a></li>				                  	
				                   </c:if>
				               </ul>
				         </div>
				           <!-- 分页结束 -->
				           
					</form>
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
	
	
</body>
</html>
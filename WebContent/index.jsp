<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>首页——JavaEE版内容管理系统</title>
<META NAME="Author" CONTENT="Java爱好者">
<meta name="keywords"
	content="Java内容管理系统,JavaCMS,Java开源,Java爬虫,JavaSEO,Java CMS" />
<meta name="description"
	content="本站专注于研发Java建站,Java爬虫,JavaSEO教程.传授广大学员用Java技术来实现互联网资源的搬运,整合汇聚互联网资源建站." />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/cms.css">
<script src="${pageContext.request.contextPath}/static/js/jQuery.js"></script>
</head>
<body>
	<jsp:include page="/common/head.jsp"></jsp:include>
	<jsp:include page="/common/menu.jsp"></jsp:include>








	<div class="content">
		<!-- 第一行 -->
		<div class="w960">

			<div class="left">

				<DIV style="width: 330px; height: 228px;" class="tuhuo">
					<A href="" target="_blank"><IMG
						style="width: 330px; height: 208px;" id="fou_img" src=""></A> <A
						href="#"> <IMG style="display: none;" class="tu_img"
						src="${pageContext.request.contextPath}/static/userImages/1.jpg"
						width="330" height="208" />
					</A> <A href="#"> <IMG style="display: none;" class="tu_img"
						src="${pageContext.request.contextPath}/static/userImages/2.jpg"
						width="330" height="208" />
					</A> <A href="#"> <IMG style="display: none;" class="tu_img"
						src="${pageContext.request.contextPath}/static/userImages/3.jpg"
						width="330" height="208" />
					</A> <A href="#"> <IMG style="display: none;" class="tu_img"
						src="${pageContext.request.contextPath}/static/userImages/4.jpg"
						width="330" height="208" />
					</A> <A href="#"> <IMG style="display: none;" class="tu_img"
						src="${pageContext.request.contextPath}/static/userImages/5.jpg"
						width="330" height="208" />
					</A>

					<P style="height: 20px;" class="tc">
						<A href="#" target="_blank" title="1">1</A>
					</P>
					<P style="height: 20px;" class="tc">
						<A href="#" target="_blank" title="2">2</A>
					</P>
					<P style="height: 20px;" class="tc">
						<A href="#" target="_blank" title="3">3</A>
					</P>
					<P style="height: 20px;" class="tc">
						<A href="#" target="_blank" title="4">4</A>
					</P>
					<P style="height: 20px;" class="tc">
						<A href="#" target="_blank" title="5">5</A>
					</P>

					<UL>
						<LI class="fouce">1</LI>
						<LI>2</LI>
						<LI>3</LI>
						<LI>4</LI>
						<LI>5</LI>
					</UL>
				</DIV>



			</div>

			<div class="middle">
				<div class="data_list">
					<div class="dataHeader">
						最近更新<span class="more"><a href="/arcType/1.html">更多...</a></span>
					</div>
					<div class="datas">
						<ul>
							<c:forEach var="article" items="${newestArticleList}">
								<li><a target="_blank"
									href="${pageContext.request.contextPath}/article/${article.id}.html"
									title="${article.title }"> [<fmt:formatDate
											value="${article.publishDate }" pattern="MM-dd" />]&nbsp;&nbsp;
										<font color="${article.titleColor }">${fn:substring(article.title,0,20)}</font>
								</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>

			<div class="right">
				<div class="data_list">
					<div class="dataHeader">
						Java基础<span class="more"><a href="/arcType/1.html">更多...</a></span>
					</div>
					<div class="datas">
						<ul>

							<li>[11-05]&nbsp;&nbsp;<a href="/article/71.html"
								title="Java中的关键字"><font color="">Java中的关键字</font></a></li>

							<li>[11-05]&nbsp;&nbsp;<a href="/article/71.html"
								title="Java中的关键字"><font color="">Java中的关键字</font></a></li>



							<li>[11-05]&nbsp;&nbsp;<a href="/article/70.html"
								title="Java标识符命名"><font color="">Java标识符命名</font></a></li>



							<li>[11-05]&nbsp;&nbsp;<a href="/article/69.html"
								title="java注释"><font color="">java注释</font></a></li>



							<li>[11-05]&nbsp;&nbsp;<a href="/article/68.html"
								title="Java HelloWorld实现及Java运行原理介绍"><font color="#FF0000">Java
										HelloWorld实现及</font></a></li>



							<li>[11-05]&nbsp;&nbsp;<a href="/article/67.html"
								title="Java运行环境搭建之Jdk配置"><font color="#FF0000">Java运行环境搭建之Jdk配置</font></a></li>



							<li>[11-05]&nbsp;&nbsp;<a href="/article/66.html"
								title="Java简介"><font color="">Java简介</font></a></li>



							<li>[11-05]&nbsp;&nbsp;<a href="/article/65.html"
								title="Java HelloWorld实现"><font color="">Java
										HelloWorld实现</font></a></li>

						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- 第二行 -->
		<div class=" w960 article_row">
			<div class="data_list article_list">
				<div class="dataHeader">
					Java基础<span class="more"><a href="/arcType/1.html">更多...</a></span>
				</div>
				<div class="datas">
					<ul>

						<li>[11-05]&nbsp;&nbsp;<a href="/article/72.html"
							title="Java基本数据类型-数据类型分类"><font color="">Java基本数据类型-数据类型分类</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/71.html"
							title="Java中的关键字"><font color="">Java中的关键字</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/70.html"
							title="Java标识符命名"><font color="">Java标识符命名</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/69.html"
							title="java注释"><font color="">java注释</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/68.html"
							title="Java HelloWorld实现及Java运行原理介绍"><font color="#FF0000">Java
									HelloWorld实现及</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/67.html"
							title="Java运行环境搭建之Jdk配置"><font color="#FF0000">Java运行环境搭建之Jdk配置</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/66.html"
							title="Java简介"><font color="">Java简介</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/65.html"
							title="Java HelloWorld实现"><font color="">Java
									HelloWorld实现</font></a></li>

					</ul>
				</div>
			</div>
			<div class="data_list article_list" style="margin-left: 12px">
				<div class="dataHeader">
					Java基础<span class="more"><a href="/arcType/1.html">更多...</a></span>
				</div>
				<div class="datas">
					<ul>

						<li>[11-05]&nbsp;&nbsp;<a href="/article/72.html"
							title="Java基本数据类型-数据类型分类"><font color="">Java基本数据类型-数据类型分类</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/71.html"
							title="Java中的关键字"><font color="">Java中的关键字</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/70.html"
							title="Java标识符命名"><font color="">Java标识符命名</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/69.html"
							title="java注释"><font color="">java注释</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/68.html"
							title="Java HelloWorld实现及Java运行原理介绍"><font color="#FF0000">Java
									HelloWorld实现及</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/67.html"
							title="Java运行环境搭建之Jdk配置"><font color="#FF0000">Java运行环境搭建之Jdk配置</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/66.html"
							title="Java简介"><font color="">Java简介</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/65.html"
							title="Java HelloWorld实现"><font color="">Java
									HelloWorld实现</font></a></li>

					</ul>
				</div>
			</div>
			<div class="data_list article_list" style="margin-left: 12px">
				<div class="dataHeader">
					Java基础<span class="more"><a href="/arcType/1.html">更多...</a></span>
				</div>
				<div class="datas">
					<ul>

						<li>[11-05]&nbsp;&nbsp;<a href="/article/72.html"
							title="Java基本数据类型-数据类型分类"><font color="">Java基本数据类型-数据类型分类</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/71.html"
							title="Java中的关键字"><font color="">Java中的关键字</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/70.html"
							title="Java标识符命名"><font color="">Java标识符命名</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/69.html"
							title="java注释"><font color="">java注释</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/68.html"
							title="Java HelloWorld实现及Java运行原理介绍"><font color="#FF0000">Java
									HelloWorld实现及</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/67.html"
							title="Java运行环境搭建之Jdk配置"><font color="#FF0000">Java运行环境搭建之Jdk配置</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/66.html"
							title="Java简介"><font color="">Java简介</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/65.html"
							title="Java HelloWorld实现"><font color="">Java
									HelloWorld实现</font></a></li>

					</ul>
				</div>
			</div>
		</div>
		<!-- 第三行 -->
		<div class=" w960 article_row">
			<div class="data_list article_list">
				<div class="dataHeader">
					Java基础<span class="more"><a href="/arcType/1.html">更多...</a></span>
				</div>
				<div class="datas">
					<ul>

						<li>[11-05]&nbsp;&nbsp;<a href="/article/72.html"
							title="Java基本数据类型-数据类型分类"><font color="">Java基本数据类型-数据类型分类</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/71.html"
							title="Java中的关键字"><font color="">Java中的关键字</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/70.html"
							title="Java标识符命名"><font color="">Java标识符命名</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/69.html"
							title="java注释"><font color="">java注释</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/68.html"
							title="Java HelloWorld实现及Java运行原理介绍"><font color="#FF0000">Java
									HelloWorld实现及</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/67.html"
							title="Java运行环境搭建之Jdk配置"><font color="#FF0000">Java运行环境搭建之Jdk配置</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/66.html"
							title="Java简介"><font color="">Java简介</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/65.html"
							title="Java HelloWorld实现"><font color="">Java
									HelloWorld实现</font></a></li>

					</ul>
				</div>
			</div>
			<div class="data_list article_list" style="margin-left: 12px">
				<div class="dataHeader">
					Java基础<span class="more"><a href="/arcType/1.html">更多...</a></span>
				</div>
				<div class="datas">
					<ul>

						<li>[11-05]&nbsp;&nbsp;<a href="/article/72.html"
							title="Java基本数据类型-数据类型分类"><font color="">Java基本数据类型-数据类型分类</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/71.html"
							title="Java中的关键字"><font color="">Java中的关键字</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/70.html"
							title="Java标识符命名"><font color="">Java标识符命名</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/69.html"
							title="java注释"><font color="">java注释</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/68.html"
							title="Java HelloWorld实现及Java运行原理介绍"><font color="#FF0000">Java
									HelloWorld实现及</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/67.html"
							title="Java运行环境搭建之Jdk配置"><font color="#FF0000">Java运行环境搭建之Jdk配置</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/66.html"
							title="Java简介"><font color="">Java简介</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/65.html"
							title="Java HelloWorld实现"><font color="">Java
									HelloWorld实现</font></a></li>

					</ul>
				</div>
			</div>
			<div class="data_list article_list" style="margin-left: 12px">
				<div class="dataHeader">
					Java基础<span class="more"><a href="/arcType/1.html">更多...</a></span>
				</div>
				<div class="datas">
					<ul>

						<li>[11-05]&nbsp;&nbsp;<a href="/article/72.html"
							title="Java基本数据类型-数据类型分类"><font color="">Java基本数据类型-数据类型分类</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/71.html"
							title="Java中的关键字"><font color="">Java中的关键字</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/70.html"
							title="Java标识符命名"><font color="">Java标识符命名</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/69.html"
							title="java注释"><font color="">java注释</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/68.html"
							title="Java HelloWorld实现及Java运行原理介绍"><font color="#FF0000">Java
									HelloWorld实现及</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/67.html"
							title="Java运行环境搭建之Jdk配置"><font color="#FF0000">Java运行环境搭建之Jdk配置</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/66.html"
							title="Java简介"><font color="">Java简介</font></a></li>



						<li>[11-05]&nbsp;&nbsp;<a href="/article/65.html"
							title="Java HelloWorld实现"><font color="">Java
									HelloWorld实现</font></a></li>

					</ul>
				</div>
			</div>
		</div>
	</div>










	<jsp:include page="/common/link.jsp"></jsp:include>
	<jsp:include page="/common/foot.jsp"></jsp:include>
</body>

<script type="text/javascript">
	var auto;
	var index=0;
	$('.tuhuo ul li').hover(function(){
		clearTimeout(auto);
		index=$(this).index();
		move(index);
		},function(){
			auto=setTimeout('autogo('+index+')',3000);
	});
	
	function autogo(){
		if(index<5){
			move(index);
			index++;
		}
		else{
			index=0;	
			move(index);
			index++;
		}
	}
	function move(l){
		var src=$('.tu_img').eq(index).attr('src');
		$("#fou_img").css({  "opacity": "0"  });
		$('#fou_img').attr('src',src);
		$('#fou_img').stop(true).animate({ opacity: '1'},1000);
		$('.tuhuo ul li').removeClass('fouce');
		$('.tuhuo ul li').eq(index).addClass('fouce');
		$('.tuhuo p').hide();
		$('.tuhuo p').eq(index).show();
		var ao=$('.tuhuo p').eq(index).children('a').attr('href');
		$('#fou_img').parent('a').attr("href",ao);
	}
	autogo();
	setInterval('autogo()',3000);
</script>

</html>
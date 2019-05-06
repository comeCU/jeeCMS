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
						style="width: 330px; height: 208px;" id="fou_img" src=""></A> 
					
					<c:forEach var="article" items="${slideArticleList }">
					 <A href="${pageContext.request.contextPath}/article/${article.id}.html">
					 	 <IMG style="display: none;" class="tu_img"
						src="${pageContext.request.contextPath}/static/userImages/${article.slideImage}"
						width="330" height="208" />
					 </A> 
					</c:forEach>	
					
				  <c:forEach var="article" items="${slideArticleList }">
					  <P style="height: 20px;" class="tc">
						<A href="${pageContext.request.contextPath}/article/${article.id}.html" 
						target="_blank" title="${article.title }">${fn:substring(article.title,0,18) }</A>
					  </P>
				  </c:forEach>

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
						推荐文章<span class="more"><a href="/arcType/1.html">更多...</a></span>
					</div>
					<div class="datas">
						<ul>

							<c:forEach var="article" items="${recommendArticleList }">
								<li><a target="_blank"
									href="${pageContext.request.contextPath}/article/${article.id}.html"
									title="${article.title }"><font
										color="${article.titleColor }">${fn:substring(article.title,0,16) }</font></a></li>
							</c:forEach>
							
						</ul>
					</div>
				</div>
			</div>
		</div>
		
		
		<!-- 遍历6个版块，遍历的核心是48条数据 -->
		<c:forEach var="subIndexArticleList" items="${allIndexArticleList }" varStatus="allStatus">
			
			<!-- 在我们循环每行的开始，问是否是第一个板块 -->
			<c:if test="${allStatus.index%3==0 }"> <!-- 只要是每一行的第一个板块就要加包围它的div的开始，不需要确定是否是第一条数据 -->
				<div class="w960 article_row">
			</c:if>
			
			<!-- 遍历每个版块的每条数据 -->
			<c:forEach var="indexArticle" items="${subIndexArticleList}" varStatus="oneStatus">
				<c:if test="${oneStatus.first }"><!-- 遍历的是每个板块的是第一条数据 -->
					<c:choose>
						<c:when test="${allStatus.index%3==0 }"><!-- 是第一条数据的情况下，问下是否第一个板块 -->
							<div class="data_list article_list">
						</c:when>
						<c:otherwise>
							<div class="data_list article_list" style="margin-left: 12px">
						</c:otherwise>
					</c:choose>
					<div class="dataHeader">
						${arcTypeList.get(allStatus.index).typeName}<span class="more"><a
							href="${pageContext.request.contextPath}/arcType/${arcTypeList.get(allStatus.index).id}.html">更多...</a></span>
					</div>
					<div class="datas">
							<ul>
				</c:if>
						
						<!-- 下面的li内容都是第二条到最后一条数据的循环 -->
						<li>[<fmt:formatDate value="${indexArticle.publishDate }"	pattern="MM-dd" />]&nbsp;&nbsp;
							<a	href="${pageContext.request.contextPath}/article/${indexArticle.id }.html"
							title="${indexArticle.title }"><font
								color="${indexArticle.titleColor }">${fn:substring(indexArticle.title,0,16) }</font>
							</a>
						</li>
						
						<!-- 先不区分板块，只要遍历到最后一条数据的循环 -->
						<c:if test="${oneStatus.last }">
							</ul>
							</div>
							</div>
						</c:if>

			</c:forEach>
				<!-- 如果是该行的最后一个板块的最后一条数据的循环 -->
				<c:if test="${allStatus.index%3==2 || allStatus.last}">
					</div>
				</c:if>
			
		</c:forEach>
		

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
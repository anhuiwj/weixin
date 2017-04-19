<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/common/top.jsp" %>
<html lang="en" class="no-js">
<head>
	<meta charset="utf-8"/>
	<link rel="shortcut icon" href="${ctx}/favicon.ico"/>
	<title>${fns:getDictByCode("00001", "1").name}</title>
	<%@ include file="/WEB-INF/views/common/head.jsp" %>
	<%@ include file="/WEB-INF/views/common/toplib.jsp" %>
<%--<link rel="shortcut icon" href="favicon.ico"/>--%>
</head>
<body class="page-header-fixed page-quick-sidebar-over-content page-style-square">
<div class="page-header navbar navbar-fixed-top">
	<div class="page-header-inner">
		<div class="page-logo">
			<a href="index.html">
			<%--<img src="${ctxStatic}/admin/layout/img/logo.png" alt="logo" class="logo-default"/>--%>
			</a>
			<div class="menu-toggler sidebar-toggler hide">
			</div>
		</div>
		<a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
		</a>
		<div class="top-menu">
			<ul class="nav navbar-nav pull-right">
				<!--用户消息-->
				<%--<li class="dropdown dropdown-extended dropdown-notification" id="header_notification_bar">--%>
					<%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">--%>
					<%--<i class="icon-bell"></i>--%>
					<%--<span class="badge badge-default">--%>
					<%--7 </span>--%>
					<%--</a>--%>
					<%--<ul class="dropdown-menu">--%>
						<%--<li class="external">--%>
							<%--<h3><span class="bold">12 pending</span> notifications</h3>--%>
							<%--<a href="extra_profile.html">view all</a>--%>
						<%--</li>--%>
						<%--<li>--%>
							<%--<ul class="dropdown-menu-list scroller" style="height: 250px;" data-handle-color="#637283">--%>
								<%--<li>--%>
									<%--<a href="javascript:;">--%>
									<%--<span class="time">just now</span>--%>
									<%--<span class="details">--%>
									<%--<span class="label label-sm label-icon label-success">--%>
									<%--<i class="fa fa-plus"></i>--%>
									<%--</span>--%>
									<%--New user registered. </span>--%>
									<%--</a>--%>
								<%--</li>--%>
								<%--<li>--%>
									<%--<a href="javascript:;">--%>
									<%--<span class="time">3 mins</span>--%>
									<%--<span class="details">--%>
									<%--<span class="label label-sm label-icon label-danger">--%>
									<%--<i class="fa fa-bolt"></i>--%>
									<%--</span>--%>
									<%--Server #12 overloaded. </span>--%>
									<%--</a>--%>
								<%--</li>--%>
								<%--<li>--%>
									<%--<a href="javascript:;">--%>
									<%--<span class="time">10 mins</span>--%>
									<%--<span class="details">--%>
									<%--<span class="label label-sm label-icon label-warning">--%>
									<%--<i class="fa fa-bell-o"></i>--%>
									<%--</span>--%>
									<%--Server #2 not responding. </span>--%>
									<%--</a>--%>
								<%--</li>--%>
								<%--<li>--%>
									<%--<a href="javascript:;">--%>
									<%--<span class="time">14 hrs</span>--%>
									<%--<span class="details">--%>
									<%--<span class="label label-sm label-icon label-info">--%>
									<%--<i class="fa fa-bullhorn"></i>--%>
									<%--</span>--%>
									<%--Application error. </span>--%>
									<%--</a>--%>
								<%--</li>--%>
								<%--<li>--%>
									<%--<a href="javascript:;">--%>
									<%--<span class="time">2 days</span>--%>
									<%--<span class="details">--%>
									<%--<span class="label label-sm label-icon label-danger">--%>
									<%--<i class="fa fa-bolt"></i>--%>
									<%--</span>--%>
									<%--Database overloaded 68%. </span>--%>
									<%--</a>--%>
								<%--</li>--%>
								<%--<li>--%>
									<%--<a href="javascript:;">--%>
									<%--<span class="time">3 days</span>--%>
									<%--<span class="details">--%>
									<%--<span class="label label-sm label-icon label-danger">--%>
									<%--<i class="fa fa-bolt"></i>--%>
									<%--</span>--%>
									<%--A user IP blocked. </span>--%>
									<%--</a>--%>
								<%--</li>--%>
								<%--<li>--%>
									<%--<a href="javascript:;">--%>
									<%--<span class="time">4 days</span>--%>
									<%--<span class="details">--%>
									<%--<span class="label label-sm label-icon label-warning">--%>
									<%--<i class="fa fa-bell-o"></i>--%>
									<%--</span>--%>
									<%--Storage Server #4 not responding dfdfdfd. </span>--%>
									<%--</a>--%>
								<%--</li>--%>
								<%--<li>--%>
									<%--<a href="javascript:;">--%>
									<%--<span class="time">5 days</span>--%>
									<%--<span class="details">--%>
									<%--<span class="label label-sm label-icon label-info">--%>
									<%--<i class="fa fa-bullhorn"></i>--%>
									<%--</span>--%>
									<%--System Error. </span>--%>
									<%--</a>--%>
								<%--</li>--%>
								<%--<li>--%>
									<%--<a href="javascript:;">--%>
									<%--<span class="time">9 days</span>--%>
									<%--<span class="details">--%>
									<%--<span class="label label-sm label-icon label-danger">--%>
									<%--<i class="fa fa-bolt"></i>--%>
									<%--</span>--%>
									<%--Storage server failed. </span>--%>
									<%--</a>--%>
								<%--</li>--%>
							<%--</ul>--%>
						<%--</li>--%>
					<%--</ul>--%>
				<%--</li>--%>
				<!--用户-->
				<li class="dropdown dropdown-user">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
					<img alt="" class="img-circle" src="${ctxStatic}/admin/layout/img/avatar3_small.jpg"/>
					<span class="username username-hide-on-mobile">
					${fns:getUser().username} </span>
					<i class="fa fa-angle-down">
					</i>
					</a>
					<ul class="dropdown-menu dropdown-menu-default">
						<li>
							<a href="javascript:void(0)" onclick="iFrameJumpPage('${ctx}/personal/add?id=${fns:getUser().id}')">
								<i class="icon-user"></i>个人信息</a>
						</li>
						<li>
							<a href="javascript:void(0)" onclick="iFrameJumpPage('${ctx}/personal/editPass?id=${fns:getUser().id}')">
								<i class="icon-eyeglass"></i>密码修改</a>
						</li>
					</ul>
				</li>
				<!--退出登录-->
				<li class="dropdown dropdown-quick-sidebar-toggler">
					<a href="${ctx}/logout" class="dropdown-toggle">
					<i class="icon-logout"></i>
					</a>
				</li>
				<!-- END QUICK SIDEBAR TOGGLER -->
			</ul>
		</div>
		<!-- END TOP NAVIGATION MENU -->
	</div>
	<!-- END HEADER INNER -->
</div>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
	<!-- BEGIN SIDEBAR -->
	<div class="page-sidebar-wrapper">
		<div class="page-sidebar navbar-collapse collapse">
			<ul class="page-sidebar-menu" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
				<!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
				<li class="sidebar-toggler-wrapper">
					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
					<div class="sidebar-toggler">
					</div>
					<!-- END SIDEBAR TOGGLER BUTTON -->
				</li>
				<!--active open-->
				<c:forEach items="${sysMenuList}" var="item" >
					<c:if test="${item.pid=='12'}">
						<li class="start">
							<a href="javascript:;">
								<i class="${item.icon}"></i>
								<span class="title">${item.name}</span>
								<span class="arrow"></span>
							</a>
							<ul class="sub-menu">
							<c:forEach items="${item.children}" var="ch">
									<li>
									<a href="javascript:void(0)" onclick="iFrameJumpPage('${ctx}/${ch.href}')">
									<i class="${ch.icon}"></i>
									${ch.name}
									</a>
									</li>
							</c:forEach>
							</ul>
						</li>
					</c:if>
				</c:forEach>
			</ul>
		</div>
	</div>
	<!-- END SIDEBAR -->
	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
				<div id="iframe_box" class="Hui-article">
					<div class="show_iframe" >
						<div style="display:none" class="loading"></div>
						<iframe id="RightIFrame" onload="this.height=0;var fdh=(this.Document?this.Document.body.scrollHeight:this.contentDocument.body.offsetHeight);this.height=(fdh>700?fdh:700)" scrolling="yes" frameborder="0" src="" style="min-height:100%;min-width:100%;"></iframe>
					</div>
				</div>
		</div>
	</div>
	<!-- BEGIN QUICK SIDEBAR -->
	<a href="javascript:;" class="page-quick-sidebar-toggler"><i class="icon-close"></i></a>
	<!-- END QUICK SIDEBAR -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">
	<div class="page-footer-inner">
		 2014 &copy; Metronic by keenthemes.
	</div>
	<div class="scroll-to-top">
		<i class="icon-arrow-up"></i>
	</div>
</div>
</div>
<script>
jQuery(document).ready(function() {    
   Metronic.init(); // init metronic core componets
   Layout.init(); // init layout
});
function iFrameJumpPage(url){
	$("#RightIFrame").attr("src",url);
}

</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
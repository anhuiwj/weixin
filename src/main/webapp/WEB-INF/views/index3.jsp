<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/common/top.jsp" %>
<%--<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="shortcut icon" href="${ctx}/favicon.ico"/>
    <title>${fns:getDictByCode("00001", "1").name}</title>
    <%@ include file="/WEB-INF/views/common/head.jsp" %>
    <%@ include file="/WEB-INF/views/common/toplib.jsp" %>
</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">
    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="#" class="simple-text">
                    ${fns:getDictByCode("00001", "1").name}
                </a>
            </div>

            <ul class="nav">

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
                                        <c:choose>
                                        <c:when test="${not empty ch.target}">
                                        <a href="javascript:void(0)" onclick="openNew('${ch.href}')">
                                            </c:when>
                                            <c:otherwise>
                                            <a href="javascript:void(0)" onclick="iFrameJumpPage('${ctx}/${ch.href}')">
                                                </c:otherwise>
                                                </c:choose>
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

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                    </button>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        &lt;%&ndash;<li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
                            </a>
                        </li>
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-globe"></i>
                                    <b class="caret"></b>
                                    <span class="notification">5</span>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Notification 1</a></li>
                                <li><a href="#">Notification 2</a></li>
                                <li><a href="#">Notification 3</a></li>
                                <li><a href="#">Notification 4</a></li>
                                <li><a href="#">Another notification</a></li>
                              </ul>
                        </li>&ndash;%&gt;
                        <li>
                           <a href="">
                                <i class="fa fa-search"></i>
                            </a>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        &lt;%&ndash;<li>
                           <a href="">
                               Account
                            </a>
                        </li>&ndash;%&gt;
                        <li>
                            <a href="${ctx}/logout">
                                Log out
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="content">
                <div id="iframe_box" class="Hui-article">
                    <div class="show_iframe" >
                        <div style="display:none" class="loading"></div>
                        <iframe id="RightIFrame" onload="this.height=0;var fdh=(this.Document?this.Document.body.scrollHeight:this.contentDocument.body.offsetHeight);this.height=(fdh>700?fdh:700)" scrolling="yes" frameborder="0" src="${ctx}/welcome/index" style="min-height:100%;min-width:100%;"></iframe>
                    </div>
                </div>
        </div>


        <footer class="footer">
            <div class="container-fluid">
                <p class="copyright pull-right">
                    Copyright &copy; 2017.Company name All rights reserved.
                </p>
            </div>
        </footer>

    </div>
</div>


</body>
	<script type="text/javascript">
    	$(document).ready(function(){
        	$.notify({
            	icon: 'pe-7s-gift',
            	message: "欢迎登陆 <b>${fns:getDictByCode("00001", "1").name}</b>"

            },{
                type: 'info',
                timer: 4000
            });
    	});
        function iFrameJumpPage(url){
            $("#RightIFrame").attr("src",url);
        }
        
        function openNew(url) {
            window.open(url);
        }

    </script>

</html>--%>
<html>
<head>
    <title>${fns:getDictByCode("00001", "1").name}</title>
    <%@ include file="/WEB-INF/views/common/head.jsp" %>
    <%@ include file="/WEB-INF/views/common/toplib.jsp" %>

    <link rel="stylesheet" href="${ctxStatic}/lib/login/css/sccl.css">
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/lib/login/skin/qingxin/skin.css" id="layout-skin"/>
    <script type="text/javascript" src="${ctxStatic}/lib/login/lib/jquery-1.9.0.min.js"></script>
    <script type="text/javascript" src="${ctxStatic}/lib/login/js/sccl-util.js"></script>
    <script type="text/javascript" src="${ctxStatic}/lib/login/js/sccl.js"></script>

</head>

<body>
<div class="layout-admin">
    <header class="layout-header">
        <span class="header-logo">${fns:getDictByCode("00001", "1").name}</span>
        <a class="header-menu-btn" href="javascript:;"><i class="icon-font">&#xe600;</i></a>
        <ul class="header-bar">
            <li class="header-bar-nav">
                <a href="javascript:;">${fns:getUser().username}<i class="icon-font" style="margin-left:5px;">&#xe60c;</i></a>
                <ul class="header-dropdown-menu">
                    <li><a href="${ctx}/logout" >退出</a></li>
                </ul>
            </li>
            <li class="header-bar-nav">
            </li>
        </ul>
    </header>
    <aside class="layout-side">
        <ul class="side-menu">
            <li class="menu-header menu-item">主菜单</li>
        <c:forEach items="${sysMenuList}" var="item" >
            <c:if test="${item.pid=='12'}">
            <li class="menu-item">
                <a href="">
                    <i class="${item.icon}"></i>
                    <span>${item.name}</span>
                    <i class="icon-font icon-right"></i>
                </a>
                <ul class="menu-item-child menu-open" id="menu-child-6" style="display: block;">
                    <c:forEach items="${item.children}" var="ch">
                    <li>
                        <a href="javascript:void(0)" onclick="iFrameJumpPage('${ctx}/${ch.href}')">
                            <i class="${ch.icon}"></i>
                            <span>${ch.name}</span>
                        </a>
                    </li>
                    </c:forEach>
                </ul>
            </li>
            </c:if>
        </c:forEach>


        </ul>
    </aside>

    <div class="layout-side-arrow"><div class="layout-side-arrow-icon"><i class="icon-font">&#xe60d;</i></div></div>

    <section class="layout-main">
        <div class="layout-main-tab">
            <button class="tab-btn btn-left"><i class="icon-font">&#xe60e;</i></button>
            <nav class="tab-nav">
                <div class="tab-nav-content">
                    <a href="javascript:;" class="content-tab active" data-id="home.html">首页</a>
                </div>
            </nav>
            <button class="tab-btn btn-right"><i class="icon-font">&#xe60f;</i></button>
        </div>
        <div class="layout-main-body">
            <iframe id="RightIFrame" onload="this.height=0;var fdh=(this.Document?this.Document.body.scrollHeight:this.contentDocument.body.offsetHeight);this.height=(fdh>700?fdh:700)" scrolling="yes" frameborder="0" src="${ctx}/welcome/index" style="min-height:100%;min-width:100%;"></iframe>
        </div>
    </section>
    <div class="layout-footer">© 2017 ${fns:getDictByCode("00001", "1").name}</div>
</div>
</body>
<script type="text/javascript">
    function iFrameJumpPage(url){
        $("#RightIFrame").attr("src",url);
    }

    function openNew(url) {
        window.open(url);
    }
</script>
</html>

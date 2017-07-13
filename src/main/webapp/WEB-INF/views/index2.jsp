<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/common/top.jsp" %>
<html lang="en">
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
                        <%--<li>
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
                        </li>--%>
                        <li>
                           <a href="">
                                <i class="fa fa-search"></i>
                            </a>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <%--<li>
                           <a href="">
                               Account
                            </a>
                        </li>--%>
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

</html>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/common/top.jsp" %>
<html lang="zh-cn">
<head>
    <title>${fns:getDictByCode("00001", "1").name}</title>
    <%@ include file="/WEB-INF/views/common/head.jsp" %>
    <%@ include file="/WEB-INF/views/common/toplib.jsp" %>
    <link rel="stylesheet" href="${ctxStatic}/lib/common/css/pintuer.css">
    <link rel="stylesheet" href="${ctxStatic}/lib/common/css/admin.css">
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
    <div class="logo margin-big-left fadein-top">
        <h1><img src="${ctxStatic}/lib/common/images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" />后台管理中心</h1>
    </div>
    <div class="head-l">
        <a class="button button-little bg-red" href="login.html"><span class="icon-power-off"></span> 退出登录</a>
    </div>
</div>
<div class="leftnav">
    <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
    <c:forEach items="${sysMenuList}" var="item" >
        <c:if test="${item.pid=='12'}">
            <h2 ><span class="icon-pencil-square-o"></span>${item.name}</h2>
            <ul style="display: block;">
                <c:forEach items="${item.children}" var="ch">
                    <li>
                        <a href="javascript:void(0)" onclick="iFrameJumpPage('${ctx}/${ch.href}')" target="right">
                            <span class="${ch.icon}"></span>${ch.name}</a>
                    </li>
                </c:forEach>
            </ul>
        </c:if>
    </c:forEach>
</div>
<script type="text/javascript">
    $(function(){
        $(".leftnav h2").click(function(){
            $(this).next().slideToggle(200);
            $(this).toggleClass("on");
        })
        $(".leftnav ul li a").click(function(){
            $("#a_leader_txt").text($(this).text());
            $(".leftnav ul li a").removeClass("on");
            $(this).addClass("on");
        })
    });
    function iFrameJumpPage(url){
        $("#RightIFrame").attr("src",url);
    }
</script>
<div class="admin">
    <iframe id="RightIFrame" onload="this.height=0;var fdh=(this.Document?this.Document.body.scrollHeight:this.contentDocument.body.offsetHeight);this.height=(fdh>700?fdh:700)" scrolling="yes" frameborder="0" src="" style="min-height:100%;min-width:100%;"></iframe>
</div>
</body>
</html>



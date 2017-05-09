<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/common/top.jsp" %>
<!DOCTYPE html>
<!-- saved from url=(0122)http://www.17sucai.com/preview/397880/2016-10-08/%E8%93%9D%E8%89%B2%E7%B2%BE%E7%AE%80%E7%89%88%E5%90%8E%E5%8F%B0/demo.html -->
<html>
    <head>
        <link rel="shortcut icon" href="${ctx}/favicon.ico"/>
        <title>${fns:getDictByCode("00001", "1").name}</title>
        <%@ include file="/WEB-INF/views/common/head.jsp" %>
        <%@ include file="/WEB-INF/views/common/toplib.jsp" %>
        <link href="${ctxStatic}/assets/css/login.css" type="text/css" rel="stylesheet">
</head>
<body>

<div class="login">
    <div class="message">${fns:getDictByCode("00001", "1").name}登录</div>
    <div id="darkbannerwrap"></div>

    <form method="post" action="${ctx}/login" method="post">
        <c:if test="${not empty message}">
            <div class="alert alert-danger ">
                <button class="close" data-close="alert"></button>
                <span id="message">${message}</span>
            </div>
        </c:if>
        <input name="action" value="login" type="hidden">
        <input name="userCode" placeholder="用户名" required="" type="text">
        <hr class="hr15">
        <input name="password" placeholder="密码" required="" type="password">
        <hr class="hr15">
        <input value="登录" style="width:100%;" type="submit">
        <hr class="hr20">
        <!-- 帮助 <a onClick="alert('请联系管理员')">忘记密码</a> -->
    </form>


</div>

<div class="copyright">© 2017 ${fns:getDictByCode("00001", "1").name} </div>


</body></html>
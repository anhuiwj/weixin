<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/common/top.jsp" %>
<!DOCTYPE html>

<html>
<head>
    <link rel="shortcut icon" href="${ctx}/favicon.ico"/>
    <title>${fns:getDictByCode("00001", "1").name}</title>
    <%@ include file="/WEB-INF/views/common/head.jsp" %>
    <%@ include file="/WEB-INF/views/common/toplib.jsp" %>
    <title>首页</title>

    <script src="${ctxStatic}/lib/login/layui/layui.js"></script>
    <link rel="stylesheet" href="${ctxStatic}/lib/login/layui/css/layui.css">
    <link rel="stylesheet" href="${ctxStatic}/lib/login/css/sccl.css">

</head>

<body class="login-bg">
<div class="login-box">
    <header>
        <h1>${fns:getDictByCode("00001", "1").name}</h1>
    </header>
    <div class="login-main">
        <form action="${ctx}/login" class="layui-form" method="post">
            <c:if test="${not empty message}">
                <div class="alert alert-danger ">
                    <button class="close" data-close="alert"></button>
                    <span id="message">${message}</span>
                </div>
            </c:if>
            <input name="__RequestVerificationToken" type="hidden" value="">
            <div class="layui-form-item">
                <label class="login-icon">
                    <i class="layui-icon"></i>
                </label>
                <input type="text" name="userCode" lay-verify="userName" autocomplete="off" placeholder="这里输入登录名" class="layui-input">
            </div>
            <div class="layui-form-item">
                <label class="login-icon">
                    <i class="layui-icon"></i>
                </label>
                <input type="password" name="password" lay-verify="password" autocomplete="off" placeholder="这里输入密码" class="layui-input">
            </div>
            <div class="layui-form-item">
                <div class="pull-left login-remember">
                </div>
                <div class="pull-right">
                    <button class="layui-btn layui-btn-primary" lay-submit="" lay-filter="login">
                        <i class="layui-icon"></i> 登录
                    </button>
                </div>
                <div class="clear"></div>
            </div>
        </form>
    </div>
    <footer>
        <p>© 2017 ${fns:getDictByCode("00001", "1").name}</p>
    </footer>
</div>
<script type="text/html" id="code-temp">
    <div class="login-code-box">
        <input type="text" class="layui-input" id="code" />
        <img id="valiCode" src="/manage/validatecode?v=636150612041789540" alt="验证码" />
    </div>
</script>
<script>
    layui.use(['layer', 'form'], function () {
        var layer = layui.layer,
                $ = layui.jquery,
                form = layui.form();

        form.verify({
            userName: function (value) {
                if (value === '')
                    return '请输入用户名';
            },
            password: function (value) {
                if (value === '')
                    return '请输入密码';
            }
        });

        var errorCount = 0;


    });
</script>
</body>
</html>
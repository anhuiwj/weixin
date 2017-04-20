<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/common/top.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <%@ include file="/WEB-INF/views/common/static-css.jsp" %>
    <%@ include file="/WEB-INF/views/common/static-js.jsp" %>
    <script type="text/javascript" src="${ctxStatic}/lib/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="${ctxStatic}/lib/Validform/5.3.2/passwordStrength-min.js"></script>
    <script type="text/javascript" src="${ctxStatic}/lib/Validform/5.3.2/Validform.js"></script>
    <title>添加用户</title>
</head>
<body>
<div class="pd-20">
    <form method="post" class="form form-horizontal va-m" id="form-role-edit">
        <input class="input-text hidden" name="id" value="${TUser.id}" style="width:300px;" display="none">
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">姓名</label>
            <input class="input-text" name="username" disabled="disabled" value="${TUser.username}" style="width:300px;">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">性别</label>
            <select name="sex" disabled="disabled">
                <option value=""></option>
                <c:forEach var="s" items="${fns:getDictById('00002')}">
                    <option value="${s.code}" <c:if test="${TUser.sex eq s.code}">selected = "selected"</c:if>>${s.name}</option>
                </c:forEach>
            </select>
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">民族</label>
            <select name="familyName" disabled="disabled">
                <option value=""></option>
                <c:forEach var="s" items="${fns:getDictById('10001')}">
                    <option value="${s.code}" <c:if test="${TUser.familyName eq s.code}">selected = "selected"</c:if>>${s.name}</option>
                </c:forEach>
            </select>
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">工作时间</label>
            <input class="input-text" name="school" value="${TUser.workTime}" style="width:300px;" disabled="disabled">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">联系电话</label>
            <input class="input-text" name="phone" disabled="disabled" value="${TUser.phone}" style="width:300px;" disabled="disabled">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">QQ号</label>
            <input class="input-text" name="qqNumber" disabled="disabled" value="${TUser.qqNumber}" style="width:300px;" disabled="disabled">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">邮件</label>
            <input class="input-text" name="email" disabled="disabled" datatype="e" value="${TUser.email}" style="width:300px;" disabled="disabled">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">备注</label>
            <input class="input-text" name="remarks" disabled="disabled" value="${TUser.remarks}" style="width:300px;" disabled="disabled">
        </div>
    </form>
</div>
</body>
</html>
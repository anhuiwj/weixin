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
    <title>查看</title>
</head>
<body>
<div class="pd-20">
    <form method="post" class="form form-horizontal va-m" id="form-role-edit">
        <input class="input-text hidden" name="id" value="${order.id}" style="width:300px;" display="none">
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">姓名</label>
            <input class="input-text" name="username" disabled="disabled" value="${order.username}" style="width:300px;">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">性别</label>
            <select name="sex">
                <option value=""></option>
                <c:forEach var="s" items="${fns:getDictById('00002')}">
                    <option value="${s.code}" <c:if test="${order.sex eq s.code}">selected = "selected"</c:if>>${s.name}</option>
                </c:forEach>
            </select>
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">预约到访时间</label>
            <input class="input-text" name="orderTimeString" value="${order.orderTimeString}" style="width:300px;">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">提交预约时间</label>
            <input class="input-text" name="createdateString" disabled="disabled" value="${order.createdateString}" style="width:300px;">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">接受预约状态</label>
            <input class="input-text" name="orderStatu" disabled="disabled" value="${fns:getDictByCode('10004',order.orderStatu).name}" style="width:300px;">
        </div>
    </form>
</div>
</body>
</html>
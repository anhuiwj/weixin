<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/common/top.jsp" %>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/common/static-css.jsp" %>
    <%@ include file="/WEB-INF/views/common/static-js.jsp" %>
    <script type="text/javascript" src="${ctxStatic}/lib/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="${ctxStatic}/lib/Validform/5.3.2/passwordStrength-min.js"></script>
    <script type="text/javascript" src="${ctxStatic}/lib/Validform/5.3.2/Validform.js"></script>
    <title>到访详情</title>
    <style>
        table td { vertical-align: top; font-size: 12px; height: 1.5em; padding-left: 10px;}
        .input-text {
            width: 80px;
            height: 30px;
        }
    </style>
</head>
<body>
<form action="${ctx}/arriveOnVisit/save" method="post" class="form form-horizontal va-m" id="form-role-edit">
    <div style="margin-left: 78px;margin-top: 16px;">
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">学生咨询问题</label>
            <input class="input-text" name="askQuestion" value="${arriveOnVisit.askQuestion}"  disabled="disabled"  style="width:300px;">
        </div>
    </div>
    <div style="margin-left: 78px;margin-top: 16px;">
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200"> 心理辅导员建议</label>
            <textarea class="input-text" name="suggestion" disabled="disabled" style="width:300px;">${arriveOnVisit.suggestion}</textarea>
        </div>
    </div>
</form>
</body>
<script type="text/javascript">
</script>
</html>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/common/top.jsp" %>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/common/static-css.jsp" %>
    <%@ include file="/WEB-INF/views/common/static-js.jsp" %>
    <script type="text/javascript" src="${ctxStatic}/lib/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="${ctxStatic}/lib/Validform/5.3.2/passwordStrength-min.js"></script>
    <script type="text/javascript" src="${ctxStatic}/lib/Validform/5.3.2/Validform.js"></script>
    <title>体能测试查看</title>
    <style>
        table td { vertical-align: top; font-size: 12px; height: 1.5em; padding-left: 10px;}
        .input-text {
            width: 80px;
            height: 30px;
        }
    </style>
</head>
<body>
<form action="${ctx}/physicalFitness/save" method="post" class="form form-horizontal va-m" id="form-role-edit">
    <input class="input-text" name="studentId" id="studentId" value="${physicalFitness.studentId}"  style="width:120px;display:none">
    <input class="input-text" name="id" id="id" value="${physicalFitness.id}"  style="width:120px;display:none">
    <table border="1" style="border-collapse:collapse; width: 600px; vertical-align: top;margin:0 auto">
        <tr>
            <td style="width:128px">学号</td>
            <td style="width:128px">
                <input class="input-text" name="userCode" id="userCode" value="${physicalFitness.userCode}"  style="width:120px;" disabled="disabled">
            </td>
            <td style="width:82px">姓名</td>
            <td style="width:70px">
                <input class="input-text"  id="username" value="${physicalFitness.username}" disabled="disabled">
            </td>
            <td style="width:105px">性别</td>
            <td style="width:85px">
                <select name="sex" id="sex" disabled="disabled">
                    <option value=""></option>
                    <c:forEach var="s" items="${fns:getDictById('00002')}">
                        <option value="${s.code}" <c:if test="${physicalFitness.sex eq s.code}">selected = "selected"</c:if>>${s.name}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td>出生年月</td>
            <td>
                <input class="input-text"  id="birthday" style="width: 95px" value="${physicalFitness.birthday}" disabled="disabled">
            </td>
            <td>专业</td>
            <td>
                <input class="input-text"  id="major" value="${physicalFitness.major}" disabled="disabled">
            </td>
            <td>班级</td>
            <td>
                <input class="input-text"  id="grade" value="${physicalFitness.grade}" disabled="disabled">
            </td>
        </tr>
    </table>

    <div style="margin-left: 78px;margin-top: 16px;">
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">肺活量</label>
            <input class="input-text" name="vitalCapacity" value="${physicalFitness.vitalCapacity}" disabled="disabled" style="width:300px;">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">50m</label>
            <input class="input-text" name="runFifty" value="${physicalFitness.runFifty}" disabled="disabled" style="width:300px;">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">坐位体前屈</label>
            <input class="input-text" name="sittingFlexion" value="${physicalFitness.sittingFlexion}" disabled="disabled"  style="width:300px;">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">立地跳远</label>
            <input class="input-text" name="standingLongJump" value="${physicalFitness.standingLongJump}" disabled="disabled" style="width:300px;">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">引体向上（男）</label>
            <input class="input-text" name="pullUps" value="${physicalFitness.pullUps}" disabled="disabled" style="width:300px;">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">1000m跑（男</label>
            <input class="input-text" name="runOneThousand" value="${physicalFitness.runOneThousand}" disabled="disabled" style="width:300px;">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">1分钟仰卧起坐（女）</label>
            <input class="input-text" name="abdominalCurl" value="${physicalFitness.abdominalCurl}" disabled="disabled" style="width:300px;">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">800m跑（女）</label>
            <input class="input-text" name="runEightHundred" value="${physicalFitness.runEightHundred}" disabled="disabled" style="width:300px;">
        </div>
    </div>
</form>
</body>
<script type="text/javascript">
</script>
</html>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/common/top.jsp" %>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/common/static-css.jsp" %>
    <%@ include file="/WEB-INF/views/common/static-js.jsp" %>
    <script type="text/javascript" src="${ctxStatic}/lib/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="${ctxStatic}/lib/Validform/5.3.2/passwordStrength-min.js"></script>
    <script type="text/javascript" src="${ctxStatic}/lib/Validform/5.3.2/Validform.js"></script>
    <title>体检报告新增</title>
    <style>
        table td { vertical-align: top; font-size: 12px; height: 1.5em; padding-left: 10px;}
        .input-text {
            width: 80px;
            height: 30px;
        }
    </style>
</head>
<body>
    <table border="1" style="border-collapse:collapse; width: 600px; vertical-align: top;margin:0 auto">
        <tr>
            <td style="width:128px">学号</td>
            <td style="width:128px">
                <input class="input-text" name="userCode" id="userCode" value="${physicalExam.userCode}" disabled="disabled" style="width:120px;">
            </td>
            <td style="width:82px">姓名</td>
            <td style="width:70px">
                <input class="input-text"  id="username" value="${physicalExam.username}" disabled="disabled">
            </td>
            <td style="width:105px">性别</td>
            <td style="width:85px">
                <select  disabled="disabled">
                    <option value=""></option>
                    <c:forEach var="s" items="${fns:getDictById('00002')}">
                        <option value="${s.code}" <c:if test="${physicalExam.sex eq s.code}">selected = "selected"</c:if>>${s.name}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td>出生年月</td>
            <td>
                <input class="input-text"  id="birthday" style="width: 95px" value="${physicalExam.birthday}" disabled="disabled">
            </td>
            <td>专业</td>
            <td>
                <input class="input-text"  id="major" value="${physicalExam.major}" disabled="disabled">
            </td>
            <td>班级</td>
            <td>
                <input class="input-text"  id="grade" value="${physicalExam.grade}" disabled="disabled">
            </td>
        </tr>
        <tr>
            <td rowspan="7">五官科</td>
            <td rowspan="2">裸眼视力</td>
            <td>左</td>
            <td>
                <select name="uncorrectedVisualLeft" disabled="disabled">
                    <option value=""></option>
                    <c:forEach var="s" items="${fns:getDictById('10002')}">
                        <option value="${s.code}" <c:if test="${physicalExam.uncorrectedVisualLeft eq s.code}">selected = "selected"</c:if>>${s.name}</option>
                    </c:forEach>
                </select>
            </td>
            <td rowspan="2">色觉</td>
            <td rowspan="2">
                <input class="input-text"  id="colorVision"  name="colorVision" value="${physicalExam.colorVision}" disabled="disabled">
            </td>
        </tr>
        <tr>
            <td>右</td>
            <td>
                <select name="uncorrectedVisualRight" disabled="disabled">
                    <option value=""></option>
                    <c:forEach var="s" items="${fns:getDictById('10002')}">
                        <option value="${s.code}" <c:if test="${physicalExam.uncorrectedVisualRight eq s.code}">selected = "selected"</c:if>>${s.name}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td rowspan="2">听力(m)</td>
            <td>左</td>
            <td>
                <select name="hearingLeft" disabled="disabled">
                    <option value=""></option>
                    <c:forEach var="s" items="${fns:getDictById('10003')}">
                        <option value="${s.code}" <c:if test="${physicalExam.hearingLeft eq s.code}">selected = "selected"</c:if>>${s.name}</option>
                    </c:forEach>
                </select>
            </td>
            <td rowspan="2">耳疾</td>
            <td rowspan="2">
                <input class="input-text" name="earsLeft" id="earsLeft" value="${physicalExam.earsLeft}" style="width:70px;" disabled="disabled">
            </td>
        </tr>
        <tr>
            <td>右</td>
            <td>
                <select name="hearingRight" disabled="disabled">
                    <option value=""></option>
                    <c:forEach var="s" items="${fns:getDictById('10003')}">
                        <option value="${s.code}" <c:if test="${physicalExam.hearingRight eq s.code}">selected = "selected"</c:if>>${s.name}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td>嗅觉</td>
            <td colspan="4">
                <input class="input-text" name="smell" id="smell" value="${physicalExam.smell}" style="width:70px;" disabled="disabled">
            </td>
        </tr>
        <tr>
            <td>面部</td>
            <td colspan="4">
                <input class="input-text" name="facialRegion" id="facialRegion" value="${physicalExam.facialRegion}" style="width:70px;" disabled="disabled">
            </td>
        </tr>
        <tr>
            <td>口腔</td>
            <td colspan="2">
                <input class="input-text" name="oralCavity" id="oralCavity" value="${physicalExam.oralCavity}" style="width:70px;" disabled="disabled">
            </td>
            <td>咽喉</td>
            <td colspan="2">
                <input class="input-text" name="theThroat" id="theThroat" value="${physicalExam.theThroat}" style="width:85px;" disabled="disabled">
            </td>
        </tr>
        <tr>
            <td rowspan="4">外科</td>
            <td>身高</td>
            <td colspan="2">
                <input class="input-text" name="height" id="height" value="${physicalExam.height}" style="width:70px;" disabled="disabled">
            </td>
            <td>体重</td>
            <td colspan="2">
                <input class="input-text" name="wright" id="wright" value="${physicalExam.wright}" style="width:85px;" disabled="disabled">
            </td>
        </tr>
        <tr>
            <td>皮肤</td>
            <td colspan="2">
                <input class="input-text" name="skin" id="skin" value="${physicalExam.skin}" style="width:70px;" disabled="disabled">
            </td>
            <td>淋巴</td>
            <td colspan="2">
                <input class="input-text" name="lymph" id="lymph" value="${physicalExam.lymph}" style="width:85px;" disabled="disabled">
            </td>
        </tr>
        <tr>
            <td>脊柱</td>
            <td colspan="2">
                <input class="input-text" name="spine" id="spine" value="${physicalExam.spine}" style="width:70px;" disabled="disabled">
            </td>
            <td>四肢</td>
            <td colspan="2">
                <input class="input-text" name="limb" id="limb" value="${physicalExam.limb}" style="width:85px;" disabled="disabled">
            </td>
        </tr>
        <tr>
            <td >其他</td>
            <td colspan="4">
                <input class="input-text" name="other" id="other" value="${physicalExam.other}" style="width:85px;" disabled="disabled">
            </td>
        </tr>
        <tr>
            <td rowspan="3">内科</td>
            <td>血压</td>
            <td colspan="2">
                <input class="input-text" name="username" value="" style="width:70px;" disabled="disabled">
            </td>
            <td>心率</td>
            <td colspan="2">
                <input class="input-text" name="heartRate" id="heartRate" value="${physicalExam.heartRate}" style="width:85px;" disabled="disabled">
            </td>
        </tr>
        <tr>
            <td>心脏</td>
            <td colspan="2">
                <input class="input-text" name="heart" id="heart" value="${physicalExam.heart}" style="width:70px;" disabled="disabled">
            </td>
            <td>肺部</td>
            <td colspan="2">
                <input class="input-text" name="lung" id="lung" value="${physicalExam.lung}" style="width:70px;" disabled="disabled">
            </td>
        </tr>
        <tr>
            <td>肝</td>
            <td colspan="2">
                <input class="input-text" name="liver" id="liver" value="${physicalExam.liver}" style="width:70px;" disabled="disabled">
            </td>
            <td>脾</td>
            <td colspan="2">
                <input class="input-text" name="spleen" id="spleen" value="${physicalExam.spleen}" style="width:85px;" disabled="disabled">
            </td>
        </tr>
        <tr>
            <td rowspan="2">化验检查</td>
            <td>血</td>
            <td colspan="2">
                <input class="input-text" name="blood" id="blood" value="${physicalExam.blood}" style="width:70px;" disabled="disabled">
            </td>
            <td>尿</td>
            <td colspan="2">
                <input class="input-text" name="urine" id="urine" value="${physicalExam.urine}" style="width:85px;" disabled="disabled">
            </td>
        </tr>
        <tr>
            <td>肝功能</td>
            <td colspan="2">
                <input class="input-text" name="liverFunction" id="liverFunction" value="${physicalExam.liverFunction}" style="width:70px;" disabled="disabled">
            </td>
            <td>肾功能</td>
            <td colspan="2">
                <input class="input-text" name="renalFunction" id="renalFunction" value="${physicalExam.renalFunction}" style="width:85px;" disabled="disabled">
            </td>
        </tr>
        <tr>
            <td>胸透检查</td>
            <td colspan="5">
                <input class="input-text" name="chestXRayExamination" id="chestXRayExamination" value="${physicalExam.chestXRayExamination}" style="width:70px;" disabled="disabled">
            </td>
        </tr>
    </table>
</body>
<script type="text/javascript">
</script>
</html>
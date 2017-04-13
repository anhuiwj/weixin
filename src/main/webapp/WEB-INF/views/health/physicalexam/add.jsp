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
<form action="${ctx}/physicalExam/save" method="post" class="form form-horizontal va-m" id="form-role-edit">
    <input class="input-text" name="userId" id="userId" value="${physicalExam.userId}"  style="width:120px;display:none">
    <input class="input-text" name="id" id="id" value="${physicalExam.id}"  style="width:120px;display:none">
    <table border="1" style="border-collapse:collapse; width: 600px; vertical-align: top;margin:0 auto">
        <tr>
            <td style="width:128px">学号</td>
            <td style="width:128px">
                <input class="input-text" name="userCode" id="userCode" value="${physicalExam.userCode}" onchange="getUserInfo()" style="width:120px;">
            </td>
            <td style="width:82px">姓名</td>
            <td style="width:70px">
                <input class="input-text"  id="username" value="${physicalExam.username}" disabled="disabled">
            </td>
            <td style="width:105px">性别</td>
            <td style="width:85px">
                <select name="sex" id="sex" disabled="disabled">
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
                <select name="uncorrectedVisualLeft">
                    <option value=""></option>
                    <c:forEach var="s" items="${fns:getDictById('10002')}">
                        <option value="${s.code}" <c:if test="${physicalExam.uncorrectedVisualLeft eq s.code}">selected = "selected"</c:if>>${s.name}</option>
                    </c:forEach>
                </select>
            </td>
            <td rowspan="2">色觉</td>
            <td rowspan="2">
                <input class="input-text"  id="colorVision"  name="colorVision" value="${physicalExam.colorVision}">
            </td>
        </tr>
        <tr>
            <td>右</td>
            <td>
                <select name="uncorrectedVisualRight">
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
                <select name="hearingLeft">
                    <option value=""></option>
                    <c:forEach var="s" items="${fns:getDictById('10003')}">
                        <option value="${s.code}" <c:if test="${physicalExam.hearingLeft eq s.code}">selected = "selected"</c:if>>${s.name}</option>
                    </c:forEach>
                </select>
            </td>
            <td rowspan="2">耳疾</td>
            <td rowspan="2">
                <input class="input-text" name="earsLeft" id="earsLeft" value="${physicalExam.earsLeft}" style="width:70px;">
            </td>
        </tr>
        <tr>
            <td>右</td>
            <td>
                <select name="hearingRight">
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
                <input class="input-text" name="smell" id="smell" value="${physicalExam.smell}" style="width:70px;">
            </td>
        </tr>
        <tr>
            <td>面部</td>
            <td colspan="4">
                <input class="input-text" name="facialRegion" id="facialRegion" value="${physicalExam.facialRegion}" style="width:70px;">
            </td>
        </tr>
        <tr>
            <td>口腔</td>
            <td colspan="2">
                <input class="input-text" name="oralCavity" id="oralCavity" value="${physicalExam.oralCavity}" style="width:70px;">
            </td>
            <td>咽喉</td>
            <td colspan="2">
                <input class="input-text" name="theThroat" id="theThroat" value="${physicalExam.theThroat}" style="width:85px;">
            </td>
        </tr>
        <tr>
            <td rowspan="4">外科</td>
            <td>身高(m)</td>
            <td colspan="2">
                <input class="input-text" name="height" id="height" value="${physicalExam.height}" style="width:70px;">
            </td>
            <td>体重(kg)</td>
            <td colspan="2">
                <input class="input-text" name="wright" id="wright" value="${physicalExam.wright}" style="width:85px;">
            </td>
        </tr>
        <tr>
            <td>皮肤</td>
            <td colspan="2">
                <input class="input-text" name="skin" id="skin" value="${physicalExam.skin}" style="width:70px;">
            </td>
            <td>淋巴</td>
            <td colspan="2">
                <input class="input-text" name="lymph" id="lymph" value="${physicalExam.lymph}" style="width:85px;">
            </td>
        </tr>
        <tr>
            <td>脊柱</td>
            <td colspan="2">
                <input class="input-text" name="spine" id="spine" value="${physicalExam.spine}" style="width:70px;">
            </td>
            <td>四肢</td>
            <td colspan="2">
                <input class="input-text" name="limb" id="limb" value="${physicalExam.limb}" style="width:85px;">
            </td>
        </tr>
        <tr>
            <td >其他</td>
            <td colspan="4">
                <input class="input-text" name="other" id="other" value="${physicalExam.other}" style="width:85px;">
            </td>
        </tr>
        <tr>
            <td rowspan="3">内科</td>
            <td>血压(mmHg)</td>
            <td colspan="2">
                <input class="input-text" name="bloodPressure" value="${physicalExam.bloodPressure}" style="width:70px;">
            </td>
            <td>心率</td>
            <td colspan="2">
                <input class="input-text" name="heartRate" id="heartRate" value="${physicalExam.heartRate}" style="width:85px;">
            </td>
        </tr>
        <tr>
            <td>心脏</td>
            <td colspan="2">
                <input class="input-text" name="heart" id="heart" value="${physicalExam.heart}" style="width:70px;">
            </td>
            <td>肺部</td>
            <td colspan="2">
                <input class="input-text" name="lung" id="lung" value="${physicalExam.lung}" style="width:70px;">
            </td>
        </tr>
        <tr>
            <td>肝</td>
            <td colspan="2">
                <input class="input-text" name="liver" id="liver" value="${physicalExam.liver}" style="width:70px;">
            </td>
            <td>脾</td>
            <td colspan="2">
                <input class="input-text" name="spleen" id="spleen" value="${physicalExam.spleen}" style="width:85px;">
            </td>
        </tr>
        <tr>
            <td rowspan="2">化验检查</td>
            <td>血</td>
            <td colspan="2">
                <input class="input-text" name="blood" id="blood" value="${physicalExam.blood}" style="width:70px;">
            </td>
            <td>尿</td>
            <td colspan="2">
                <input class="input-text" name="urine" id="urine" value="${physicalExam.urine}" style="width:85px;">
            </td>
        </tr>
        <tr>
            <td>肝功能</td>
            <td colspan="2">
                <input class="input-text" name="liverFunction" id="liverFunction" value="${physicalExam.liverFunction}" style="width:70px;">
            </td>
            <td>肾功能</td>
            <td colspan="2">
                <input class="input-text" name="renalFunction" id="renalFunction" value="${physicalExam.renalFunction}" style="width:85px;">
            </td>
        </tr>
        <tr>
            <td>胸透检查</td>
            <td colspan="5">
                <input class="input-text" name="chestXRayExamination" id="chestXRayExamination" value="${physicalExam.chestXRayExamination}" style="width:70px;">
            </td>
        </tr>
    </table>
    <div class="row cl va-m clear text-c">
        <input class="btn btn-primary radius  mt-50" type="submit" value="&nbsp;&nbsp;&nbsp;&nbsp;提交&nbsp;&nbsp;">
    </div>
</form>
</body>
<script type="text/javascript">
    $("#form-role-edit").Validform({ //表单验证
        tiptype: 2,
        ajaxPost: true,
        datatype:{
            "english":function(gets,obj,curform,regxp){
                //参数gets是获取到的表单元素值，obj为当前表单元素，curform为当前验证的表单，regxp为内置的一些正则表达式的引用;
                var reg1=/[A-Za-z]$/;
                if(reg1.test(gets)){return true;}
                return false;
            }
        },
        beforeSubmit:function(curform){
            //在验证成功后，表单提交前执行的函数，curform参数是当前表单对象。
            //这里明确return false的话表单将不会提交;
            <c:if test="${empty TUser.id}">
            if($.trim($('#password').val()) != $.trim($('#password1').val())){
                layer.alert("两次密码不一致");
                return false;
            }
            </c:if>
            return true;
        },
        callback: function (data) {
            parent.layer.msg(data.msg, {icon: 1});
            parent.exports.gridRefresh();
            var index = parent.layer.getFrameIndex(window.name);
            parent.layer.close(index);
        }
    });

    function getUserInfo() {
        $.ajax({
            url:'${ctx}/physicalExam/getUserInfo',
            type:'post',
            async:false,
            data:{'userCode':$("#userCode").val()},
            success:function (data) {
                if(data =="" || data == null || data == undefined){
                    $("#userCode").val("");
                    layer.msg("查无此学号,请重新输入");
                }
                $("#username").val(data.username);

                $("#sex option").each(function () {
                    if($(this).val()==data.sex){
                        $(this).attr("selected","selected");
                    }
                })
                $("#birthday").val(data.birthdayString);
                $("#major").val(data.major);
                $("#grade").val(data.grade);
                $("#userId").val(data.id);
            }
        })
    }
</script>
</html>
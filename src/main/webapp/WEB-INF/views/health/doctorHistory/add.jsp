<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/common/top.jsp" %>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/common/static-css.jsp" %>
    <%@ include file="/WEB-INF/views/common/static-js.jsp" %>
    <script type="text/javascript" src="${ctxStatic}/lib/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="${ctxStatic}/lib/Validform/5.3.2/passwordStrength-min.js"></script>
    <script type="text/javascript" src="${ctxStatic}/lib/Validform/5.3.2/Validform.js"></script>
    <title>就诊新增</title>
    <style>
        table td { vertical-align: top; font-size: 12px; height: 1.5em; padding-left: 10px;}
        .input-text {
            width: 80px;
            height: 30px;
        }
    </style>
</head>
<body>
<form action="${ctx}/doctorHistory/save" method="post" class="form form-horizontal va-m" id="form-role-edit">
    <input class="input-text" name="studentId" id="studentId" value="${doctorHistory.studentId}"  style="width:120px;display:none">
    <input class="input-text" name="id" id="id" value="${doctorHistory.id}"  style="width:120px;display:none">
    <table border="1" style="border-collapse:collapse; width: 600px; vertical-align: top;margin:0 auto">
        <tr>
            <td style="width:128px">学号</td>
            <td style="width:128px">
                <input class="input-text" name="userCode" id="userCode" datatype="*" value="${doctorHistory.userCode}" onchange="getUserInfo()" style="width:120px;">
            </td>
            <td style="width:82px">姓名</td>
            <td style="width:70px">
                <input class="input-text"  id="username" value="${doctorHistory.username}" disabled="disabled">
            </td>
            <td style="width:105px">性别</td>
            <td style="width:85px">
                <select name="sex" id="sex" disabled="disabled">
                    <option value=""></option>
                    <c:forEach var="s" items="${fns:getDictById('00002')}">
                        <option value="${s.code}" <c:if test="${doctorHistory.sex eq s.code}">selected = "selected"</c:if>>${s.name}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td>出生年月</td>
            <td>
                <input class="input-text"  id="birthday" style="width: 95px" value="${doctorHistory.birthday}" disabled="disabled">
            </td>
            <td>专业</td>
            <td>
                <input class="input-text"  id="major" value="${doctorHistory.major}" disabled="disabled">
            </td>
            <td>班级</td>
            <td>
                <input class="input-text"  id="grade" value="${doctorHistory.grade}" disabled="disabled">
            </td>
        </tr>
    </table>

    <div style="margin-left: 78px;margin-top: 16px;">
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">就诊时间</label>
            <input class="input-text Wdate" name="doctorTime" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" value="${fns:formatDateTime(doctorHistory.doctorTime)}" style="width:300px;">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">疾病</label>
            <input class="input-text" name="ill" value="${doctorHistory.ill}" style="width:300px;">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">治疗方案</label>
            <input class="input-text" name="treatmentPlan" value="${doctorHistory.treatmentPlan}" style="width:300px;">
        </div>
    </div>
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
                $("#studentId").val(data.id);
            }
        })
    }
</script>
</html>
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
<form id="form" action="${ctx}/question/updateSuggetion">
    <table border="1" style="border-collapse:collapse; width: 600px; vertical-align: top;margin:0 auto">
        <tr>
            <td style="width:128px">学号</td>
            <td style="width:128px">
                <input class="input-text" name="userCode" id="userCode" value="${question.userCode}" disabled="disabled" style="width:120px;">
            </td>
            <td style="width:82px">姓名</td>
            <td style="width:70px">
                <input class="input-text"  id="username" value="${question.username}" disabled="disabled">
            </td>
            <td style="width:105px">性别</td>
            <td style="width:85px">
                <select  disabled="disabled">
                    <option value=""></option>
                    <c:forEach var="s" items="${fns:getDictById('00002')}">
                        <option value="${s.code}" <c:if test="${question.sex eq s.code}">selected = "selected"</c:if>>${s.name}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td>出生年月</td>
            <td>
                <input class="input-text"  id="birthday" style="width: 95px" value="${question.birthday}" disabled="disabled">
            </td>
            <td>专业</td>
            <td>
                <input class="input-text"  id="major" value="${question.major}" disabled="disabled">
            </td>
            <td>班级</td>
            <td>
                <input class="input-text"  id="grade" value="${question.grade}" disabled="disabled">
            </td>
        </tr>
    </table>
    <table border="1" style="border-collapse:collapse; width: 600px; vertical-align: top;margin:0 auto">
        <tr>
            <td style="width:128px" colspan="3">1.你的性别是</td>
            <td style="width:128px" colspan="3">${question.q1}</td>
        </tr>
        <tr>
            <td style="width:128px" colspan="3">2.目前您最大的苦恼是什么？</td>
            <td style="width:128px" colspan="3">${question.q2}</td>
        </tr>
        <tr>
            <td style="width:128px" colspan="3">3.您是否对自己的身体状况感到担忧？</td>
            <td style="width:128px" colspan="3">${question.q3}</td>
        </tr>
        <tr>
            <td style="width:128px" colspan="3">4.您对自己的身形、容貌是否满意？</td>
            <td style="width:128px" colspan="3">${question.q4}</td>
        </tr>
        <tr>
            <td style="width:128px" colspan="3">5.您认为自己在与别人的沟通交往上是否存在障碍？</td>
            <td style="width:128px" colspan="3">${question.q5}</td>
        </tr>
        <tr>
            <td style="width:128px" colspan="3">6.当您对异性或者同性表白遭拒绝时，会感到有压力吗？</td>
            <td style="width:128px" colspan="3">${question.q6}</td>
        </tr>
        <tr>
            <td style="width:128px" colspan="3">7.您对自己的前途感到困惑和担忧过吗？</td>
            <td style="width:128px" colspan="3">${question.q7}</td>
        </tr>
        <tr>
            <td style="width:128px" colspan="3">8.遇到压力您会最先向谁救助？</td>
            <td style="width:128px" colspan="3">${question.q8}</td>
        </tr>
        <tr>
            <td style="width:128px" colspan="3">9. 您会采取何种方式应对压力？</td>
            <td style="width:128px" colspan="3">${question.q9}</td>
        </tr>
        <tr>
            <td style="width:128px" colspan="3">10.当您和朋友之间的友谊出现裂痕时您会怎么处理？</td>
            <td style="width:128px" colspan="3">${question.q10}</td>
        </tr>
        <tr>
            <td style="width:128px" colspan="3">11.你是否害怕与陌生人交流？</td>
            <td style="width:128px" colspan="3">${question.q11}</td>
        </tr>
        <tr>
            <td style="width:128px" colspan="3">12.你是否害怕在公众场合发言？</td>
            <td style="width:128px" colspan="3">${question.q12}</td>
        </tr>
        <tr>
            <td style="width:128px" colspan="3">13.你是否在学习和生活上经常与同学攀比?</td>
            <td style="width:128px" colspan="3">${question.q13}</td>
        </tr>
        <tr>
            <td style="width:128px" colspan="3">14.你是否特别相信一个人？</td>
            <td style="width:128px" colspan="3">${question.q14}</td>
        </tr>
        <tr>
            <td style="width:128px" colspan="3">15. 进入大学后，你联系的最多的是？</td>
            <td style="width:128px" colspan="3">${question.q15}</td>
        </tr>
            <c:choose>
                <c:when test="${role == '3'}">
                        <input class="input-text" name="id" id="id" value="${question.id}"  style="width:120px;display:none">
                        <tr>
                            <td style="width:128px" colspan="3" rowspan="2">心理辅导员建议</td>
                            <td style="width:128px" colspan="3" rowspan="2">
                                <input class="input-text" name="suggestion" id="suggestion" datatype="*"  value="${question.suggestion}"  style="width:120px;">
                            </td>
                        </tr>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td style="width:128px" colspan="3" rowspan="2">心理辅导员建议</td>
                        <td style="width:128px" colspan="3" rowspan="2">${question.suggestion}</td>
                    </tr>
                </c:otherwise>
            </c:choose>
    </table>
    <c:if test="${role == '3'}">
        <div class="row cl va-m clear text-c">
            <input class="btn btn-primary radius  mt-50" type="submit" value="&nbsp;&nbsp;&nbsp;&nbsp;提交&nbsp;&nbsp;">
        </div>
    </c:if>
</form>
</body>
<script type="text/javascript">
    $("#form").Validform({ //表单验证
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
            return true;
        },
        callback: function (data) {
            parent.layer.msg(data.msg, {icon: 1});
            parent.exports.gridRefresh();
            var index = parent.layer.getFrameIndex(window.name);
            parent.layer.close(index);
        }
    });
</script>
</html>
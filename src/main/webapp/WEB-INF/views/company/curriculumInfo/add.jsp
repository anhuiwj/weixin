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
    <script type="text/javascript" src="${ctxStatic}/lib/html5.js"></script>
    <title>添加课程</title>
</head>
<body>
<div class="pd-20">
    <form action="${ctx}/curriculumInfo/save" method="post" enctype="multipart/form-data"   class="form form-horizontal va-m" id="form-role-edit">
        <input class="input-text hidden" name="id" value="${classInfo.id}" style="width:300px;" display="none">
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">课程名称</label>
            <input class="input-text" id="curriculumName" name="curriculumName" value="${classInfo.className}" datatype="*" style="width:300px;">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">课程类别</label>
            <select style="width:300px;" id="type" name="type" onchange="selectType(this)">
                <c:forEach var="SysXDict"  items="${fns:getDictById('00005')}">
                    <option value="${SysXDict.code}" <%--<c:if test="${TRole.status eq SysXDict.code}">selected='selected'</c:if>--%>>${SysXDict.name}</option>
                </c:forEach>
            </select>
        </div>
        <div class="f-l w-980 mb-20" id="url" style="display: none">
            <label class="f-l mr-30 w-200">课程地址</label>
            <input class="input-text" id="curriculumUrl" name="curriculumUrl" value="${classInfo.className}" datatype="*"  ignore="ignore" style="width:300px;">
        </div>
        <div class="f-l w-980 mb-20" id="uploadVideo" style="display: none">
            <label class="f-l mr-30 w-200">课程视频</label>
            <input class="input-text" type="file" name="file" id="file"  value="${classInfo.className}" datatype="*"  ignore="ignore" style="width:300px;">
        </div>
        <div class="row cl va-m clear text-c">
            <a class="btn btn-primary radius  mt-50" onclick="save()">&nbsp;&nbsp;&nbsp;&nbsp;提交&nbsp;&nbsp;</a>
        </div>
    </form>
</div>
<script type="text/javascript">
    var form = $("#form-role-edit").Validform();
    /*$("#form-role-edit").Validform({ //表单验证
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
    });*/

    
    function save() {
        if(form.check()==false){
            return;
        }
        debugger;
        var formData = new FormData();
        formData.append("curriculumName",$('#curriculumName').val());
        formData.append("type",$('#type').val());
        formData.append("curriculumUrl",$('#curriculumUrl').val());
        formData.append("file",$('#file')[0].files[0])
        $.ajax({
            url: "${ctx}/curriculumInfo/save",
            type: "post",
            dataType: 'json',
            data:formData,
            processData:false,
            contentType:false,
            success: function (data) {
                parent.layer.msg(data.msg, {icon: 1});
                parent.exports.gridRefresh();
                var index = parent.layer.getFrameIndex(window.name);
                parent.layer.close(index);
            }
        });
    }

    function selectType(e) {
        if($(e).val()=='1'){
            $("#uploadVideo").show();
            $("#url").hide();
            $("#file").removeAttr("ignore");
            $("#curriculumUrl").attr("ignore","ignore");
        }else if($(e).val()=='2'){
            $("#url").show();
            $("#uploadVideo").hide();
            $("#curriculumUrl").removeAttr("ignore");
            $("#file").attr("ignore","ignore");
        }
    }
    $(function () {
        selectType($('#type'));
    })
</script>
</body>
</html>
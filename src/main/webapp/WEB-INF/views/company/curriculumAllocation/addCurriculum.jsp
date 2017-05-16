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
    <form action="${ctx}/curriculumAllocation/save" method="post" enctype="multipart/form-data"   class="form form-horizontal va-m" id="form-role-edit">
        <input class="input-text hidden" name="classId" id="classId" value="${classId}" style="width:300px;" display="none">
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">课程名称</label>
            <select style="width:300px;" id="curriculumId" name="curriculumId" datatype="*">
                <c:forEach var="curriculum"  items="${curriculumInfoList}">
                    <option></option>
                    <option value="${curriculum.id}" <c:if test="${curriculumInfo.id eq curriculum.id}">selected='selected'</c:if>>${curriculum.curriculumName}</option>
                </c:forEach>
            </select>
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">达标分数</label>
            <input class="input-text" id="standardFraction" name="standardFraction" value="${curriculumInfo.standardFraction}" datatype="*" style="width:300px;">
        </div>
        <div class="row cl va-m clear text-c">
            <a class="btn btn-primary radius  mt-50" onclick="save()">&nbsp;&nbsp;&nbsp;&nbsp;提交&nbsp;&nbsp;</a>
        </div>
    </form>
</div>
<script type="text/javascript">
    var form = $("#form-role-edit").Validform();

    function save() {
        if(form.check()==false){
            return;
        }
        var formData = new FormData();
        formData.append("classId",$('#classId').val());
        formData.append("curriculumId",$('#curriculumId').val());
        formData.append("standardFraction",$('#standardFraction').val());
        $.ajax({
            url: "${ctx}/curriculumAllocation/save",
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

</script>
</body>
</html>
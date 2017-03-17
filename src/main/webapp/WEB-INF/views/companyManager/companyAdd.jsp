<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/common/top.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <%@ include file="/WEB-INF/views/common/static-css.jsp" %>
    <%--<%@ include file="/WEB-INF/views/common/static-js.jsp" %>--%>
    <link rel="stylesheet" href="${ctxStatic}/lib/zTree_v3-master/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <title>添加用户</title>
</head>
<body>
<div class="pd-20">
    <form action="" method="post" class="form form-horizontal va-m" id="form-role-edit">
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">公司性质</label>
            <select>
                <option>农业</option>
                <option>工业</option>
                <option>商业</option>
                <option>科技</option>
                <option>金融</option>
                <option>综合</option>
            </select>
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">公司名称</label>
            <input class="input-text" style="width:300px;">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">公司地址</label>
            <input class="input-text" style="width:300px;">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">法人代表</label>
            <input class="input-text" style="width:300px;">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">股权结构</label>
            <input class="input-text" style="width:300px;">
        </div>

        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">公司概况</label>
            <input class="input-text" style="width:300px;">
        </div>

        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">年营收</label>
            <input class="input-text" style="width:300px;">
        </div>

        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">毛利率</label>
            <input class="input-text" style="width:300px;">
        </div>

        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">备注</label>
            <input class="input-text" style="width:300px;">
        </div>


        <div class="row cl va-m clear text-c">
            <input class="btn btn-primary radius  mt-50" type="submit" value="&nbsp;&nbsp;&nbsp;&nbsp;提交&nbsp;&nbsp;">
        </div>
    </form>
    <%--<form action="${contextPath}/basicInfo/role/update" method="post" class="form form-horizontal va-m" id="form-role-edit">--%>
        <%--<label class="f-l">角色名称</label>--%>
        <%--<input class="input-text">--%>
        <%--<label>启用状态</label>--%>
        <%--<input class="input-text">--%>
        <%--<label>菜单</label>--%>
        <%--<ul id="demo"></ul>--%>
        <%--<div class="row cl va-m">--%>
            <%--<div class="col-10 col-offset-3">--%>
                <%--<input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;&nbsp;&nbsp;提交&nbsp;&nbsp;">--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</form>--%>
</div>
<script type="text/javascript">


</script>
</body>
</html>
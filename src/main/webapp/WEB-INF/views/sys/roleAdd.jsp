<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/common/top.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <%@ include file="/WEB-INF/views/common/static-css.jsp" %>
    <%--<%@ include file="/WEB-INF/views/common/static-js.jsp" %>--%>
    <link rel="stylesheet" href="${ctxStatic}/lib/zTree_v3-master/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <script type="text/javascript" src="${ctxStatic}/lib/zTree_v3-master/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="${ctxStatic}/lib/zTree_v3-master/js/jquery.ztree.core.min.js"></script>
    <script type="text/javascript" src="${ctxStatic}/lib/zTree_v3-master/js/jquery.ztree.excheck.js"></script>
    <SCRIPT LANGUAGE="JavaScript">
        var zTreeObj;
        // zTree 的参数配置，深入使用请参考 API 文档（setting 配置详解）
        var setting = {
            check: {
                enable: true,
                chkStyle: "checkbox",
                chkboxType: { "Y": "ps", "N": "ps" }
            },
            data: {
                simpleData: {
                    enable: true,
                    idKey: "id",
                    pIdKey: "pId",
                    rootPId: 0
                }
            },
            callback:{
                beforeClick:function(id, node){
                    zTreeObj.checkNode(node, !node.checked, true, true);
                    return false;
                },
                onCheck:function(event, treeId, treeNode){
                    var nodes = zTreeObj.getCheckedNodes(true);
                    var html1 = "";
                    for(var i=0; i<nodes.length; i++) {
                        html1 += "<input type='hidden' name='menus' value='"+nodes[i].id+"'/>";
                    }
                    $("#treeDemo").after(html1);
                }
            }
        };
        // zTree 的数据属性，深入使用请参考 API 文档（zTreeNode 节点数据详解）
        var zNodes =[
            <c:forEach items="${list}" var="item" varStatus="sta">
            <c:if test="${sta.index>0}">,</c:if>
            {id:"${item.id}", pId:"${item.pid}", name:"${item.name}"<c:if test="${fns:contains(role.menuIds, item.id)}">,checked:true</c:if>}
            </c:forEach>
        ];
        $(document).ready(function(){
            zTreeObj = $.fn.zTree.init($("#treeDemo"), setting, zNodes);
            zTreeObj.expandAll(true);
        });
    </SCRIPT>
    <title>添加用户</title>
</head>
<body>
<div class="pd-20">
    <form action="${ctx}/role/save" method="post" class="form form-horizontal va-m" id="form-role-edit">
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">角色名称</label>
            <input class="input-text f-l" name="rolename" style="width:300px;">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">启用状态</label>
            <input class="input-text" style="width:300px;">
        </div>
        <div class="f-l w-980 mb-20">
            <label class="f-l mr-30 w-200">菜单</label>
            <%--<input class="input-text" style="width:300px;">--%>
            <%--<ul ></ul>--%>
            <ul id="treeDemo" class="ztree" style="margin-left: 225px;"></ul>
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
//    layui.use(['layer', 'form'], function(){
//
//    });

//    layui.use('tree', function(){
//        layui.tree({
//            elem: '#demo' //传入元素选择器
//            ,nodes: [{ //节点
//                name: '父节点1'
//                ,children: [{
//                    name: '子节点11'
//                },{
//                    name: '子节点12'
//                }]
//            },{
//                name: '父节点2（可以点左侧箭头，也可以双击标题）'
//                ,children: [{
//                    name: '子节点21'
//                    ,children: [{
//                        name: '子节点211'
//                    }]
//                }]
//            }]
//            ,click: function(node){
//            console.log(node) //node即为当前点击的节点数据
//        }
//    });
//    })

</script>
</body>
</html>
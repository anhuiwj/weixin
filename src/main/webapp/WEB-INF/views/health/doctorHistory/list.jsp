<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/common/top.jsp" %>
<html>
<head>
    <%@ include file="/WEB-INF/views/common/static-css.jsp" %>
    <%@ include file="/WEB-INF/views/common/static-js.jsp" %>
        <title>个人信息</title>
</head>
<body>
<nav class="w-breadcrumb">
    <i class="Hui-iconfont">&#xe67f;</i> 首页
    <span class="c-gray en">&gt;</span>   就诊信息管理
    <span class="c-gray en">&gt;</span> 就诊情况管理
    <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="Hui-iconfont">&#xe68f;</i>
    </a>
</nav>
<div class="pd-20">
    <div class="cl pd-5 bg-1 bk-gray">
        <div class="j_hform">
            <%--<p style="padding-left:30px;">--%>
                <%--<input id="ID" type="text" class="input-text" placeholder="企业名称" style="width:300px;"onkeyup=this.value=this.value.replace(/[$_%?*'"\s]/ig,'')>&nbsp;--%>
            <%--</p>--%>
            <p>
                <label>用户姓名：</label>
                <input type="text" style="width:109px;" class="input-text" id="username" name="username" >
                <label>学号：</label>
                <input type="text" style="width:109px;" class="input-text" id="userCode" name="userCode" >
                <label>班级：</label>
                <input type="text" style="width:109px;" class="input-text" id="grade" name="grade" >
            </p>
            <p>
            </p>
            <p>
                <span>
                     <button name="query" id="query" class="btn btn-success radius r" type="submit"
                             style="margin-left: 30px;">查询
                     </button>
                </span>
                <shiro:hasAnyPermissions name="doctorHistory:add">
                <span>
                      <button id="add_role" class="btn btn-success radius r">
                        新增
                      </button>
                 </span>
                </shiro:hasAnyPermissions>
            </p>
        </div>
    </div>
    <div class="tbl_header mt-20">
        <strong>就诊情况列表</strong><p class="tbl_header_r">
        <%--<input id="export" name="export" type="button" value="导出" class="btn btn-success size-S radius"></p>--%>
    </div>
    <div class="tbl_scroll">
        <div id="table" class="dt-grid-container"></div>
        <div id="table_t" class="dt-grid-toolbar-container"></div>
    </div>
</div>
<script>
    $(function () {
        var whether =${fns:getDictToJSON('00002')};
        var nation =${fns:getDictToJSON('10001')};
        var dtList = function () {
            var columns = [
                {id: 'userCode', title: '学号', type: 'string', columnClass: 'text-c td'},
                {id: 'username', title: '姓名', type: 'string', columnClass: 'text-c'},
                {id: 'sex', title: '性别', type: 'string',codeTable:whether, columnClass: 'text-c'},
                {id: 'grade', title: '班级', type: 'string',codeTable:nation, columnClass: 'text-c'},
                {id: 'doctorTimeString', title: '检查时间', type: 'string',codeTable:nation, columnClass: 'text-c'},
                {id: 'id', title: '操作', type: 'string', columnClass: 'text-c',
                    resolution:function(value, record, column, grid, dataNo, columnNo){
                    var content = '';
                        <shiro:hasAnyPermissions name="doctorHistory:read">
                            content += '<input onclick="read(\''+record.id+'\');" value="查看" class="btn btn-primary size-MINI radius" type="button">&nbsp;&nbsp;';
                        </shiro:hasAnyPermissions>
                        <shiro:hasAnyPermissions name="doctorHistory:edit">
                            content += '<input onclick="editRow(\''+record.id+'\');" value="修改" class="btn btn-primary size-MINI radius" type="button">&nbsp;&nbsp;';
                        </shiro:hasAnyPermissions>
                        <shiro:hasAnyPermissions name="doctorHistory:delete">
                            content += '&nbsp<input onclick="deleteRow(\''+record.id+'\');" value="删除" class="btn btn-primary size-MINI radius" type="button">';
                        </shiro:hasAnyPermissions>
                        return content;
                    }
                }
            ];

            var options = {
                lang: 'zh-cn',
                ajaxLoad : true,
                tableStyle: 'font-size:14px;',
                loadURL: "${ctx}/doctorHistory/getData",
                check: false,
                columns: columns,
                gridContainer: 'table',
                toolbarContainer: 'table_t',
                pageSize: 5,
                tools: '',
                tableClass :'table table-border table-bordered table-bg',
                pageSizeLimit: [10, 20, 50],
                onGridComplete: function (data) {
                }
            };
            var grid = $.fn.DtGrid.init(options);
            grid.parameters = getParams();
            grid.load();
            return {
                grid: grid
            }
        }();

        //刷新列表
        function gridRefresh() {
            dtList.grid.parameters = getParams();
            dtList.grid.refresh(true);
        }

        //查询
        function search() {
            dtList.grid.parameters = getParams();
            dtList.grid.pager.nowPage = 1;
            dtList.grid.refresh(true);
        }
        function getParams() {
            var param = {};
            param.username = $('#username').val();
            param.userCode = $('#userCode').val();
            param.grade = $('#grade').val();
            return param;
        }
        function bindEvent() {
            $('#query').on('click', function () { //查询
                search();
            });
            $('#add_role').on('click', function () { //查询
               layer_show("就诊情况添加","${ctx}/doctorHistory/add")
            });
        }
        function pageInit() {
            bindEvent();
            //暴露接口
            window.exports = {
                gridRefresh: gridRefresh,
            };
        }

        pageInit();
    });
    
    function read(id) {
        var url = "${ctx}/doctorHistory/read?id="+id;
        layer_show("就诊情况查看",url)
    }
    
    function editRow(id) {
        var url = "${ctx}/doctorHistory/add?id="+id;
        layer_show("就诊情况修改",url)
    }
    
    function deleteRow(id) {
        layer.confirm('确认删除吗？', {
            btn: ['确认','取消'], //按钮
            icon: 5,
            title:"提示"
        }, function(){
            $.ajax({
                url: "${ctx}/doctorHistory/delete",
                data:{"id":id} ,
                success: function (data) {
                    if (data.code==200) {
                        layer.msg(data.msg, {icon: 6,end:function(){
                            location.reload();
                        }});
                    } else {
                        layer.msg(data.msg, {icon: 5});
                    }
                }
            });
        });
    }


</script>

</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/common/top.jsp" %>
<html>
<head>
    <%@ include file="/WEB-INF/views/common/static-css.jsp" %>
    <%@ include file="/WEB-INF/views/common/static-js.jsp" %>
        <title>课程查询</title>
</head>
<body>
<nav class="w-breadcrumb">
    <i class="Hui-iconfont">&#xe67f;</i> 首页
    <span class="c-gray en">&gt;</span>  课程管理
    <span class="c-gray en">&gt;</span> 个人课程查询
    <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="Hui-iconfont">&#xe68f;</i>
    </a>
</nav>
<div class="pd-20">
    <div class="cl pd-5 bg-1 bk-gray">
        <div class="j_hform">
            <p style="padding-left:30px;">
            </p>
            <p>
                <label>课程名称：</label>
                <input type="text" style="width:109px;" class="input-text" id="className" name="className">
            </p>
            <p>
                <span>
                     <button name="query" id="query" class="btn btn-success radius r" type="submit"
                             style="margin-left: 30px;">查询
                     </button>
                </span>
            </p>
        </div>
    </div>
    <div class="tbl_header mt-20">
        <strong>课程列表</strong><p class="tbl_header_r">
        <%--<input id="export" name="export" type="button" value="导出" class="btn btn-success size-S radius"></p>--%>
    </div>
    <div class="tbl_scroll">
        <div id="table" class="dt-grid-container"></div>
        <div id="table_t" class="dt-grid-toolbar-container"></div>
    </div>
</div>
<script>
    var lodingId = '';
    $(function () {
        var whether =${fns:getDictToJSON('00005')};
        var dtList = function () {
            var columns = [
                {id: 'curriculumName', title: '课程名称', type: 'string', columnClass: 'text-center' ,columnStyle: 'width:50px'},
                {id: 'learnTime', title: '学习时间', type: 'string',codeTable:whether, columnClass: 'text-center', columnStyle: 'width:50px'},
                {id: 'id', title: '操作', type: 'string',columnClass: 'text-center',columnStyle: 'width:50px',
                    resolution:function(value, record, column, grid, dataNo, columnNo){
                    var content = '';
                            content += '&nbsp;<input onclick="read(\''+record.id+'\');" value="查看" class="btn btn-primary size-MINI radius" type="button">';
                        return content;
                    }
                }
            ];

            var options = {
                lang: 'zh-cn',
                ajaxLoad : true,
                tableStyle: 'font-size:14px;',
                loadURL: "${ctx}/curriculumAllocation/getData3",
                check: false,
                columns: columns,
                gridContainer: 'table',
                toolbarContainer: 'table_t',
                pageSize: 5,
                tools: '',
                tableClass :'table table-border table-bordered table-bg',
                pageSizeLimit: [10, 20, 50],
                onGridComplete: function (data) {
                },
                onRowClick: function (data, rowData) {
                if (arguments[5] != 13) {
                    lodingId = rowData.id;
                }
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
            param.className = $('#className').val();
            return param;
        }
        function bindEvent() {
            $('#query').on('click', function () { //查询
                search();
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
        layer_show("课程查看","${ctx}/curriculumInfo/read?id="+id)
    }
</script>

</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/common/top.jsp" %>
<html>
<head>
    <%@ include file="/WEB-INF/views/common/static-css.jsp" %>
    <%@ include file="/WEB-INF/views/common/static-js.jsp" %>
        <title>班级查询</title>
</head>
<body>
<nav class="w-breadcrumb">
    <i class="Hui-iconfont">&#xe67f;</i> 首页
    <span class="c-gray en">&gt;</span>  课程管理
    <span class="c-gray en">&gt;</span> 课程分配
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
                <label>班级名称：</label>
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
        <strong>班级列表</strong><p class="tbl_header_r">
        <%--<input id="export" name="export" type="button" value="导出" class="btn btn-success size-S radius"></p>--%>
    </div>
    <div class="tbl_scroll">
        <div id="table" class="dt-grid-container"></div>
        <div id="table_t" class="dt-grid-toolbar-container"></div>
    </div>
    <div class="tbl_scroll">
        <div id="table_2" class="dt-grid-container"></div>
        <div id="table_t2" class="dt-grid-toolbar-container"></div>
    </div>
</div>
<script>
    var lodingId = '';
    $(function () {
        var whether =${fns:getDictToJSON('00004')};
        var dtList = function () {
            var columns = [
                {id: 'className', title: '班级名称', type: 'string', columnClass: 'text-center' ,columnStyle: 'width:50px'},
                {id: 'createDateString', title: '创建时间', type: 'string',codeTable:whether, columnClass: 'text-center', columnStyle: 'width:50px'},
                {id: 'id', title: '操作', type: 'string',columnClass: 'text-center',columnStyle: 'width:50px',
                    resolution:function(value, record, column, grid, dataNo, columnNo){
                    var content = '';
                            content += '<input onclick="editRow(\''+record.id+'\');" value="修改" class="btn btn-primary size-MINI radius" type="button">';
                        content += '&nbsp;<input onclick="addCurriculum(\''+record.id+'\');" value="添加课程" class="btn btn-primary size-MINI radius" type="button">';
                        return content;
                    }
                }
            ];

            var options = {
                lang: 'zh-cn',
                ajaxLoad : true,
                tableStyle: 'font-size:14px;',
                loadURL: "${ctx}/classInfo/getData",
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
                    historyList('${ctx}/curriculumAllocation/getData2',lodingId);
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
    
    function editRow(id) {
        layer_show("班级编辑","${ctx}/classInfo/add?id="+id)
    }

    function addCurriculum(id) {
        layer_show("添加课程","${ctx}/curriculumAllocation/addCurriculum?classId="+id)
    }

    var h_dtList = "";

    function historyList(url, id) {
        if (!h_dtList) {
            var whether =${fns:getDictToJSON('00002')};
            var columns = [
                {
                    id: 'id', title: 'NO.', type: 'string', columnClass: 'text-c td', columnStyle: 'min-width:42px;max-width:42px',
                    resolution: function (value, record, column, grid, dataNo, columnNo) {
                        return (dataNo + 1);
                    }
                },
                {
                    id: 'userId',
                    title: '操作',
                    type: 'string',
                    columnClass: 'text-c td',
                    columnStyle: 'min-width:100px;max-width:100px',
                    resolution: function (value, record) {
                        // var searchurl = urls.resultDetailUrl + "?file_id=" + record.file_id + "&personcard_no=" +record.personcard_no;
                        // var searchmethod = "parent.addTag('" + searchurl + "','查看详情')";onclick='+searchmethod+'
                        var content = '<a class="btn btn-primary size-MINI radius" onclick="removeCurrilum(\''+record.id+'\');" >删除</a>';
                        return content;
                    }
                },
                {id: 'curriculumName', title: '课程名称', type: 'string', columnClass: 'text-c td'},
                {id: 'standardFraction', title: '达标分数', type: 'string',codeTable:whether, columnClass: 'text-c td'}
            ];
            var options = {
                lang: 'zh-cn',
                ajaxLoad: true,
                tableStyle: 'font-size:14px;',
                loadURL: url,
                check: false,
                columns: columns,
                tools: '',
                gridContainer: 'table_2',
                toolbarContainer: 'table_t2',
                pageSize: 20,
                tableClass :'table table-border table-bordered table-bg',
                pageSizeLimit: [20, 30, 50],
                onGridComplete: function (data) {
                    var recordCount = data.pager.recordCount;
                    /*if (recordCount === 0) {
                     layer.msg('无查询记录');
                     }*/
                }
            };
            var grid = $.fn.DtGrid.init(options);
            var param = {};
            param.id = id;
            grid.parameters = param;
            grid.load();
            h_dtList = grid;
        } else {
            var param = {};
            param.id = id;
            h_dtList.parameters = param;
            h_dtList.refresh(true);
        }
    }
    function removeCurrilum(id) {
        layer.confirm('确认删除吗？', {
            btn: ['确认','取消'], //按钮
            icon: 5,
            title:"提示"
        }, function(){
            $.ajax({
                url: "${ctx}/curriculumAllocation/delete",
                data:{"mustcurriculumId":id} ,
                success: function (data) {
                    if (data.code==200) {
                        layer.msg(data.msg, {icon: 6,end:function(){location.reload();}});
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
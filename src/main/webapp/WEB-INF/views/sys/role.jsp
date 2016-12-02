<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/common/top.jsp" %>
<html>
<head>
    <%@ include file="/WEB-INF/views/common/static-css.jsp" %>
    <%@ include file="/WEB-INF/views/common/static-js.jsp" %>
        <title>角色管理</title>
</head>
<body>
<nav class="w-breadcrumb">
    <i class="Hui-iconfont">&#xe67f;</i> 首页
    <span class="c-gray en">&gt;</span>  用户管理
    <span class="c-gray en">&gt;</span> 角色管理
    <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="Hui-iconfont">&#xe68f;</i>
    </a>
</nav>
<div class="pd-20">
    <div class="cl pd-5 bg-1 bk-gray">
        <div class="j_hform">
            <p style="padding-left:30px;">
                <input id="ID" type="text" class="input-text" placeholder="姓名/证件号码/社保卡号" style="width:300px;"onkeyup=this.value=this.value.replace(/[$_%?*'"\s]/ig,'')>&nbsp;
            </p>
            <p>
                <label>建档日期：</label>
                <input type="text" style="width:109px;" class="input-text Wdate radius" id="datemin" name="datemin" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',startDate:'%y-%M-%d',maxDate:'#F{$dp.$D(\'datemax\')}'})" > －
                <input type="text" style="width:109px;" class="input-text Wdate radius" id="datemax" name="datemax" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',startDate:'%y-%M-%d',minDate:'#F{$dp.$D(\'datemin\')}'})">
            </p>
            <button name="query" id="query" class="btn btn-success radius r" type="submit"
                    style="margin-left: 30px;">查询
            </button>
            </p>
        </div>
    </div>
    <div class="tbl_header mt-20">
        <strong>角色列表</strong><p class="tbl_header_r">
        <%--<input id="export" name="export" type="button" value="导出" class="btn btn-success size-S radius"></p>--%>
    </div>
    <div class="tbl_scroll">
        <div id="table" class="dt-grid-container"></div>
        <div id="table_t" class="dt-grid-toolbar-container"></div>
    </div>
</div>
<script>
    $(function () {
        var dtList = function () {
            var columns = [
                {id: 'rolename', title: '姓名', type: 'string', columnClass: 'text-center',columnStyle: 'min-width:60px;max-width:60px'},
                {id: 'rolename', title: '姓名', type: 'string', columnClass: 'text-center',columnStyle: 'min-width:60px;max-width:60px'}
            ];

            var options = {
                lang: 'zh-cn',
                ajaxLoad : true,
                tableStyle: 'font-size:14px;',
                loadURL: "/role/getData",
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
//            param.ID = $.trim($('#ID').val());
//            param.country = $('#country option:selected').val();
//            param.managerHospital = $('#hospital option:selected').val();
//            param.currdocName = $('#doctor option:selected').text();
//            param.addressCounty = $('#level3 option:selected').val();
//            param.addressTown = $('#level4 option:selected').val();
//            param.addressCommittee = $('#level5 option:selected').val();
//            param.managerLevel = $('#managerLevel option:selected').val();
//            param.gender = $('#gender option:selected').val();
//            param.datemin = $('#datemin').val();
//            param.datemax = $('#datemax').val();
            return param;
        }
//        function getGetParams(){
//            var parameters = dtList.grid.parameters;
//            var param ='?';
//            param += 'ID='+encodeURI(encodeURI(parameters.ID));
//            param += '&country='+parameters.country;
//            param += '&managerHospital='+parameters.managerHospital;
//            param += '&currdocName='+encodeURI(encodeURI(parameters.currdocName));
//            param += '&addressCounty='+parameters.addressCounty;
//            param += '&addressTown='+parameters.addressTown;
//            param += '&addressCommittee='+parameters.addressCommittee;
//            param += '&managerLevel='+ parameters.managerLevel;
//            param += '&gender='+ parameters.gender;
//            param += '&datemin='+parameters.datemin;
//            param += '&datemax='+parameters.datemax;
//
//            return param;
//        }
//        function exportData(obj){
//            var data = $('#table>table>tbody>tr').size();
//            if(data == 0){
//                layer.msg('表格暂无数据，无法导出！');
//                return;
//            }
//            var reqUrl = urls.exportURL+getGetParams();
//            window.location =  reqUrl;
//        }
//
//        function bindEvent() {
//            $('#query').on('click', function () { //查询
//                $.post(urls.getLoginStatus, function (data) {
//                    if (data.code == '0') {
//                        search();
//                    } else {
//                        window.location.reload();
//                    }
//                });
//
//            });
//        }
//
//        function pageInit() {
//            bindEvent();
//            //暴露接口
//            window.exports = {
//                gridRefresh: gridRefresh,
//            };
//        }
//
//        pageInit();
    });
</script>

</body>
</html>
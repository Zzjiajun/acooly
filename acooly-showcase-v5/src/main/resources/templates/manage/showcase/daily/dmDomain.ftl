<#if ssoEnable><#include "/manage/common/ssoInclude.ftl"></#if>
<div class="easyui-layout" data-options="fit : true,border : false">
    <!-- 查询条件 -->
    <div data-options="region:'north',border:false" style="padding:5px; overflow: hidden;">
        <form id="manage_dmDomain_searchform" class="form-inline ac-form-search" onsubmit="return false">
<#--            <div class="form-group">-->
<#--                <label class="col-form-label">create_time：</label>-->
<#--                <input type="text" class="form-control form-control-sm" id="search_GTE_createTime" name="search_GTE_createTime" onFocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd'})" />-->
<#--                <span class="mr-1 ml-1">至</span> <input type="text" class="form-control form-control-sm" id="search_LTE_createTime" name="search_LTE_createTime" onFocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd'})" />-->
<#--            </div>-->
<#--            <div class="form-group">-->
<#--                <label class="col-form-label">update_time：</label>-->
<#--                <input type="text" class="form-control form-control-sm" id="search_GTE_updateTime" name="search_GTE_updateTime" onFocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd'})" />-->
<#--                <span class="mr-1 ml-1">至</span> <input type="text" class="form-control form-control-sm" id="search_LTE_updateTime" name="search_LTE_updateTime" onFocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd'})" />-->
<#--            </div>-->
            <div class="form-group">
                <label class="col-form-label">账号名：</label>
                <select name="search_EQ_userName" class="form-control select2bs4" data-options="required:true">
                    <option value="">全部</option>
                    <#list mapName as k,v >
                        <option value="${k}">${k}:${v}</option>
                    </#list>
                </select>
            </div>
            <div class="form-group">
                <button class="btn btn-sm btn-primary" type="button" onclick="$.acooly.framework.search('manage_dmDomain_searchform','manage_dmDomain_datagrid');"><i class="fa fa-search fa-fw fa-col"></i> 查询</button>
            </div>
    </form>
    </div>

    <!-- 列表和工具栏 -->
    <div data-options="region:'center',border:false">
        <table id="manage_dmDomain_datagrid" class="easyui-datagrid" url="/manage/showcase/daily/dmDomain/listJson.html" toolbar="#manage_dmDomain_toolbar" fit="true" border="false" fitColumns="false"
                pagination="true" idField="id" pageSize="20" pageList="[ 10, 20, 30, 40, 50 ]" sortName="id" sortOrder="desc" checkOnSelect="true" selectOnCheck="true" singleSelect="true">
            <thead>
            <tr>
                <th field="showCheckboxWithId" checkbox="true" formatter="idFormatter">编号</th>
                <th field="id" sortable="true" >id</th>
                <th field="domainName" style="width: 30%">域名</th>
                <th field="link" style="width: 30%" >链接</th>
                <th field="userName" formatter="contentFormatter">拥有者</th>
                <th field="createTime" formatter="dateTimeFormatter">创建时间</th>
                <th field="updateTime" formatter="dateTimeFormatter">修改时间</th>
            </tr>
            </thead>
            <thead frozen="true">
            <tr>
                <th field="rowActions" data-options="formatter:function(value, row, index){return formatAction('manage_dmDomain_action',value,row)}">动作</th>
            </tr>
            </thead>
        </table>
        <!-- 每行的Action动作模板 -->
        <div id="manage_dmDomain_action" style="display: none;">
            <div class="btn-group btn-group-xs">
              <button onclick="$.acooly.framework.show('/manage/showcase/daily/dmDomain/show.html?id={0}',500,500);" class="btn btn-outline-primary btn-xs" type="button"><i class="fa fa-info fa-fw fa-col"></i>查看</button>
              <button onclick="$.acooly.framework.edit({url:'/manage/showcase/daily/dmDomain/edit.html',id:'{0}',entity:'dmDomain',width:500,height:500});" class="btn btn-outline-primary btn-xs" type="button"><i class="fa fa-pencil fa-fw fa-col"></i>编辑</button>
              <button onclick="$.acooly.framework.remove('/manage/showcase/daily/dmDomain/deleteJson.html','{0}','manage_dmDomain_datagrid');" class="btn btn-outline-primary btn-xs" type="button"><i class="fa fa-trash fa-fw fa-col"></i>删除</button>
          </div>
        </div>
        <!-- 表格的工具栏 -->
        <div id="manage_dmDomain_toolbar">
            <a href="#" class="easyui-linkbutton" plain="true" onclick="$.acooly.framework.create({url:'/manage/showcase/daily/dmDomain/create.html',entity:'dmDomain',width:500,height:500})"><i class="fa fa-plus-circle fa-fw fa-col"></i>添加</a>
            <a href="#" class="easyui-linkbutton" plain="true" onclick="$.acooly.framework.removes('/manage/showcase/daily/dmDomain/deleteJson.html','manage_dmDomain_datagrid')"><i class="fa fa-trash fa-fw fa-col"></i>批量删除</a>
            <a href="#" class="easyui-menubutton" data-options="menu:'#manage_dmDomain_exports_menu'"><i class="fa fa-cloud-download fa-fw fa-col"></i>批量导出</a>
            <div id="manage_dmDomain_exports_menu" style="width:150px;">
              <div onclick="$.acooly.framework.exports('/manage/showcase/daily/dmDomain/exportXls.html','manage_dmDomain_searchform','dm_domain')"><i class="fa fa-file-excel-o fa-lg fa-fw fa-col"></i>Excel</div>
              <div onclick="$.acooly.framework.exports('/manage/showcase/daily/dmDomain/exportCsv.html','manage_dmDomain_searchform','dm_domain')"><i class="fa fa-file-text-o fa-lg fa-fw fa-col"></i>CSV</div>
            </div>
            <a href="#" class="easyui-linkbutton" plain="true" onclick="$.acooly.framework.imports({url:'/manage/showcase/daily/dmDomain/importView.html',uploader:'manage_dmDomain_import_uploader_file'});"><i class="fa fa-cloud-upload fa-fw fa-col"></i>批量导入</a>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            $.acooly.framework.initPage('manage_dmDomain_searchform', 'manage_dmDomain_datagrid');
        });
    </script>
</div>

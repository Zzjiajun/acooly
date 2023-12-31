<div class="card-body">
	<dl class="row">
		<dt class="col-sm-3">ID:</dt>
		<dd class="col-sm-9">${roweditor.id}</dd>
		<dt class="col-sm-3">会员编码:</dt>
		<dd class="col-sm-9">${roweditor.memberNo}</dd>
		<dt class="col-sm-3">用户名:</dt>
		<dd class="col-sm-9">${roweditor.username}</dd>
		<dt class="col-sm-3">姓名:</dt>
		<dd class="col-sm-9">${roweditor.realName}</dd>
		<dt class="col-sm-3">身份证号码:</dt>
		<dd class="col-sm-9">${roweditor.idcardNo}</dd>
		<dt class="col-sm-3">年龄:</dt>
		<dd class="col-sm-9">${roweditor.age}</dd>
		<dt class="col-sm-3">生日:</dt>
		<dd class="col-sm-9">${roweditor.birthday?string('yyyy-MM-dd')}</dd>
		<dt class="col-sm-3">性别:</dt>
		<dd class="col-sm-9">${roweditor.gender.message()}</dd>
		<dt class="col-sm-3">生肖:</dt>
		<dd class="col-sm-9">${roweditor.animal.message()}</dd>
		<dt class="col-sm-3">手机号码:</dt>
		<dd class="col-sm-9">${roweditor.mobileNo}</dd>
		<dt class="col-sm-3">邮件:</dt>
		<dd class="col-sm-9">${roweditor.mail}</dd>
		<dt class="col-sm-3">网址:</dt>
		<dd class="col-sm-9">${roweditor.website}</dd>
		<dt class="col-sm-3">完成度:</dt>
		<dd class="col-sm-9">${roweditor.doneRatio}</dd>
		<dt class="col-sm-3">薪水:</dt>
		<dd class="col-sm-9">${roweditor.salary}</dd>
		<dt class="col-sm-3">注册渠道:</dt>
		<dd class="col-sm-9">${roweditor.registryChannel.message()}</dd>
		<dt class="col-sm-3">状态:</dt>
		<dd class="col-sm-9">${roweditor.status.message()}</dd>
		<dt class="col-sm-3">创建时间:</dt>
		<dd class="col-sm-9">${roweditor.createTime?string('yyyy-MM-dd HH:mm:ss')}</dd>
		<dt class="col-sm-3">更新时间:</dt>
		<dd class="col-sm-9">${roweditor.updateTime?string('yyyy-MM-dd HH:mm:ss')}</dd>
		<dt class="col-sm-3">备注:</dt>
		<dd class="col-sm-9">${roweditor.comments}</dd>
	</dl>
</div>

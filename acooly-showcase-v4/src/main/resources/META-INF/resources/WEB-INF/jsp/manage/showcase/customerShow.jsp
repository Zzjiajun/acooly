<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/manage/common/taglibs.jsp"%>
<div style="padding: 5px;font-family:微软雅黑;">
<table class="tableForm" width="100%">
	<tr>
		<th>ID:</th>
		<td>${customer.id}</td>
	</tr>					
	<tr>
		<th width="25%">用户名:</th>
		<td>${customer.username}</td>
	</tr>					
	<tr>
		<th>年龄:</th>
		<td>${customer.age}</td>
	</tr>					
	<tr>
		<th>生日:</th>
		<td><fmt:formatDate value="${customer.birthday}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	</tr>					
	<tr>
		<th>性别:</th>
		<td>${allGenders[customer.gender]}</td>
	</tr>					
	<tr>
		<th>姓名:</th>
		<td>${customer.realName}</td>
	</tr>					
	<tr>
		<th>证件类型:</th>
		<td>${customer.idcardType.message}</td>
	</tr>					
	<tr>
		<th>证件号码:</th>
		<td>${customer.idcardNo}</td>
	</tr>					
	<tr>
		<th>手机号码:</th>
		<td>${customer.mobileNo}</td>
	</tr>					
	<tr>
		<th>邮件:</th>
		<td>${customer.mail}</td>
	</tr>					
	<tr>
		<th>摘要:</th>
		<td>${customer.subject}</td>
	</tr>					
	<tr>
		<th>客户类型:</th>
		<td>${customer.customerType.message}</td>
	</tr>					
	<tr>
		<th>手续费:</th>
		<td>${customer.fee}</td>
	</tr>					
	<tr>
		<th>状态:</th>
		<td>${allStatuss[customer.status]}</td>
	</tr>					
	<tr>
		<th>创建时间:</th>
		<td><fmt:formatDate value="${customer.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	</tr>					
	<tr>
		<th>更新时间:</th>
		<td><fmt:formatDate value="${customer.updateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	</tr>					
	<tr>
		<th>备注:</th>
		<td>${customer.comments}</td>
	</tr>					
</table>
</div>

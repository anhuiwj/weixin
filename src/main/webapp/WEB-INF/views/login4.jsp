<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/common/top.jsp" %>
<!DOCTYPE html>

<html lang="zh-cn">
<head>
	<link rel="shortcut icon" href="${ctx}/favicon.ico"/>
	<title>${fns:getDictByCode("00001", "1").name}</title>
	<%@ include file="/WEB-INF/views/common/head.jsp" %>
	<%@ include file="/WEB-INF/views/common/toplib.jsp" %>
	<link rel="stylesheet" href="${ctxStatic}/lib/common/css/pintuer.css">
	<link rel="stylesheet" href="${ctxStatic}/lib/common/css/admin.css">
	<script src="${ctxStatic}/lib/common/js/jquery.js"></script>
	<script src="${ctxStatic}/lib/common/js/pintuer.js"></script>
</head>
<body>
<div class="bg"></div>
<div class="container">
	<div class="line bouncein">
		<div class="xs6 xm4 xs3-move xm4-move">
			<div style="height:150px;"></div>
			<div class="media media-y margin-big-bottom">
			</div>
			<form action="${ctx}/login" method="post">
				<div class="panel loginbox">
					<div class="text-center margin-big padding-big-top"><h1>${fns:getDictByCode("00001", "1").name}</h1></div>
					<div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
						<c:if test="${not empty message}">
							<div class="alert alert-danger ">
								<button class="close" data-close="alert"></button>
								<span id="message">${message}</span>
							</div>
						</c:if>
						<div class="form-group">
							<div class="field field-icon-right">
								<input type="text" class="input input-big" name="userCode" placeholder="登录账号" data-validate="required:请填写账号" />
								<span class="icon icon-user margin-small"></span>
							</div>
						</div>
						<div class="form-group">
							<div class="field field-icon-right">
								<input type="password" class="input input-big" name="password" placeholder="登录密码" data-validate="required:请填写密码" />
								<span class="icon icon-key margin-small"></span>
							</div>
						</div>
					</div>
					<div style="padding:30px;"><input type="submit" class="button button-block bg-main text-big input-big" value="登录"></div>
				</div>
			</form>
		</div>
	</div>
</div>

</body>
</html>
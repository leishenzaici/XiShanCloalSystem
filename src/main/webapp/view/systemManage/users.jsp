<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ include file="/public/tag.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>用户管理</title>
<link href="../css/zTreeStyle.css" rel="stylesheet">
<%@ include file="/public/cssJs.jsp"%>

<!--分页-->
<%-- <script src="<%=path %>/js/public/page.js"></script> --%>

<!--验证-->
<script
	src="${pageContext.request.contextPath }/controls/validate/jquery.validate.js"></script>
<script
	src="${pageContext.request.contextPath }/controls/validate/messages_zh.js"></script>

<!--还有左侧部门树0 -->
<script src="<%=path%>/js/system/role/treeR.js"></script>
<link rel="stylesheet" href="<%=path%>/css/public/tree.css">
<script type="text/javascript">
	var contextPath = "${pageContext.request.contextPath}";
</script>
<script src="<%=path%>/js/system/users.js"></script>

<link rel="stylesheet" href="<%=path%>/css/outDepart/outdepartTree.css">
<style type="text/css">
ul.ztree {
	margin-top: 10px;
	margin-bottom: 10px;
	border: 1px solid #617775;
	background: #ffffff;
	width: 270px;
	height: 500px;
	overflow-y: scroll;
	overflow-x: auto;
}
</style>
<style type="text/css">
.ztree * {
	padding: 0;
	margin: 0;
	font-size: 19px;
	font-family: Verdana, Arial, Helvetica, AppleGothic, sans-serif
}
</style>
</head>
<body>
	<!--头-->
	<%-- 	<jsp:include page="/view/public/header.jsp"></jsp:include> --%>

	<!--中部-->
	<div class="html_middle">

		<%-- 		<!--放菜单框-->
		<div class="el_left">
			<jsp:include page="/view.jsp"></jsp:include>
		</div> --%>

		<!--放主界面内容-->
		<!-- <div class="el_right" style="float:left;"> -->
		<div style="float: left;">
			<!-- <div class="container-fluid"> -->
			<!-- <div class="panel panel-default"> -->
			<!--菜单连接标题-->
			<!-- <div class="panel-heading" style="width:120%"> -->
			<div>
				<div>
					<div
						style="background-color: #f5f5f5; width: 100%; height: 42px; border-bottom: 1px soild #dddddd;">
						<span style="padding: 5px 0 5px 10px; line-height: 42px;">系统管理</span><span>>用户管理</span>
					</div>

					<div class="el_main">
						<!--树-->
						<div class="el_leftTree">
							<!--标题类，添加了一个颜色-->
							<span class="el_treeTitle">部门</span>
							<ul id="tree_systemmanage_department" class="ztree"></ul>
						</div>

						<!--内容-->
						<div class="col-md-10 el_qlmContent">
							<!--索引-->
							<div class="row el_queryBox">
								<form action="" id="userinfo_select">

									<input type="hidden" id="currentPage" name="currentPage">
									<input type="hidden" id="currentCount" name="currentCount">
									<input type="hidden" id="departmentid" name="departmentid">
									<div class="row el_queryBoxrow">
										<div class="col-md-3 el_qlmQuery">
											<div class="input-group" role="toolbar">
												<span class="el_spans">用户姓名：</span> <input type="text"
													class="form-control" name="username" />
											</div>
										</div>

										<div class="col-md-3 el_qlmQuery">
											<div class="input-group" role="toolbar">
												<span class="el_spans el_chooseSpan">角&nbsp;色：</span> <select
													class="selectpicker form-control" name="roleid"
													id="select_rolename" title="请选择">

												</select>
											</div>
										</div>
										<div class="col-md-3 el_qlmQuery">
											<div class="input-group" role="toolbar">
												<span class="el_spans">身份证：</span> <input type="text"
													class="form-control" name="useridcard" />
											</div>
										</div>
									</div>



									<!--提交查询按钮-->
									<button type="reset"
										class="btn btn-default el_queryButton0 btn-sm">清空</button>
									<button type="button" onclick='getUserByCondition()'
										class="btn btn-primary el_queryButton btn-sm">查询</button>
								</form>

							</div>
							<!--结束 查询表单提交-->

							<!--显示内容-->
							<h4 class="el_mainHead">用户管理</h4>
							<div class="panel panel-default el_Mainmain">

								<div class="panel-body">
									<!--按钮面板-->
									<div class="panel panel-default">
										<div class="panel-body el_MainxiaoMain">

											<div class="el_topButton">
												<button class="btn btn-primary" onclick="el_adduse()">
													添加用户</button>
												<button class="btn btn-primary" id="modifyAccount"
													onclick="modifyAcc()">查看/修改用户</button>

												<button type="button" class="btn btn-primary"
													onclick="deleteusers()">批量删除</button>

											</div>
										</div>
									</div>
									<!--表格
                            内容都提取到json里边-->
									<table class="table table-hover table-bordered">
										<thead>
											<tr>
												<th><input type="checkbox" id="el_checkQuanxuan" /></th>
												<th>序号</th>
												<th>用户姓名</th>

												<th>身份证</th>
												<th>所属部门</th>

												<th>联系方式</th>
												<th>角色</th>
												<th width="120">操作</th>
											</tr>
										</thead>
										<tbody id="table_userinfo">
											<!--  <tr>
                                <td><input type="checkbox" class="el_checks"/></td>
                                <td>米特</td>
                                <td>男</td>
                                <td>1254845869584759</td>
                                <td>***部门</td>
                                <td>总经理</td>
                                <td>18468584895</td>
                                <td class="success" onclick="searchAuth()">系统管理员 ...</td>
                                <td>
                                    <a href="javascript:void(0)" class="el_delButton" onClick="delcfm()">删除</a>
                                    <a href="javascript:void(0)" class="el_delButton" onclick="el_configRoles()">配置角色</a>
                                </td>
                            </tr> -->
										</tbody>
									</table>

									<!--分页-->
									<div id="paginationIDU" class="paginationID"></div>
								</div>
							</div>

							<!-- 模态框 添加用户-->
							<div class="modal fade" id="el_adduse" tabindex="-1"
								data-backdrop="static" data-keyboard="false" role="dialog"
								aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">&times;</button>
											<!--关闭符号-->
											<!--标题-->
											<h4 class="modal-title" id="myModalLabel2">添加用户</h4>
										</div>
										<form id="form_adduser">
											<input type="hidden" id="adduser_plantId" name="departmentid">
											<div class="modal-body">
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">身份证：</span> <input type="text"
														class="form-control" placeholder="身份证号" name="useridcard"
														id='idnumber' autofocus> <span style="color: red;"
														id="msg3"></span>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">姓名：</span> <input type="text" id=""
														class="form-control el_modelinput" name="username" /> <span></span>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">密码：</span> <input type="text" id=""
														class="form-control el_modelinput" name="password" /> <span></span>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">电话：</span> <input type="text" id=""
														class="form-control el_modelinput" name="phone" /> <span></span>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default"
													data-dismiss="modal">关闭</button>
												<button type="button" class="btn btn-primary"
													onclick="adduser()">添加用户</button>
											</div>
										</form>

									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal -->
							</div>

							<!-- 模态框 修改账户-->
							<div class="modal fade" id="el_modifyAccount" tabindex="-1"
								data-backdrop="static" data-keyboard="false" role="dialog"
								aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">&times;</button>
											<!--关闭符号-->
											<!--标题-->
											<h4 class="modal-title" id="myModalLabel223">修改用户</h4>
										</div>
										<form id="form_update_userinfo">
											<div class="modal-body">

												<!-- <div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">账号：</span> <input type="text"
														class="form-control el_modelinput" placeholder="账号"
														name="useridcard" id='form_update_userinfo_username'
														disabled="disabled"> <span></span>
												</div> -->
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">账号：</span> <input type="text"
														id="form_update_userinfo_useridcard"
														class="form-control el_modelinput" name="useridcard"
														readonly="readonly" /> <span></span>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">密码：</span> <input type="text"
														id="form_update_userinfo_password"
														class="form-control el_modelinput" name="password" /> <span></span>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">姓名：</span> <input type="text"
														id="form_update_userinfo_username"
														class="form-control el_modelinput" name="username" /> <span></span>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">联系方式：</span> <input type="text"
														id="form_update_userinfo_userphone"
														class="form-control el_modelinput" name="userphone" /> <span></span>
												</div>

											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default"
													data-dismiss="modal">关闭</button>
												<button type="button" class="btn btn-primary"
													onclick="modify_password()">确认</button>
												<!-- <button type="button" class="btn btn-primary"
													onclick="modify_userinfo()">校正账号信息</button> -->
											</div>
										</form>

									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal -->
							</div>

							<!-- 模态框 配置角色-->
							<div class="modal fade" id="el_configRoles" tabindex="-1"
								data-backdrop="static" data-keyboard="false" role="dialog"
								aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">&times;</button>
											<!--关闭符号-->
											<!--标题-->
											<h4 class="modal-title" id="myModalLabel24">配置用户角色</h4>
										</div>
										<form id="updateRoleinfo">
											<input type="hidden" id="updateroleinfo_userid" name="userid">
											<div class="modal-body">
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans el_chooseSpan">选择角色：</span> <span
														id="checkbox_selectrole"></span>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default"
													data-dismiss="modal">关闭</button>
												<button type="button" class="btn btn-primary"
													onclick='updateroleinfo()'>保存</button>
											</div>
										</form>

									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal -->
							</div>

							<!-- 模态框   信息删除确认 -->
							<div class="modal fade" id="delcfmModel" data-backdrop="static"
								data-keyboard="false">
								<div class="modal-dialog">
									<div class="modal-content message_align">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">×</span>
											</button>
											<h4 class="modal-title">提示</h4>
										</div>
										<div class="modal-body">
											<p>您确认要删除该用户吗？</p>
										</div>
										<input type="hidden" class="hidden_delete_userid">
										<div class="modal-footer">
											<input type="hidden" id="url" />
											<button type="button" class="btn btn-default"
												data-dismiss="modal">取消</button>
											<a onclick="deleteuser(this)" class="btn btn-success"
												data-dismiss="modal">确定</a>
										</div>
									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal-dialog -->
							</div>
							<!-- /.modal -->

							<!-- 模态框   批量信息删除确认 -->
							<div class="modal fade" id="delcfmModel2" data-backdrop="static"
								data-keyboard="false">
								<div class="modal-dialog">
									<div class="modal-content message_align">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">×</span>
											</button>
											<h4 class="modal-title">提示</h4>
										</div>
										<div class="modal-body">
											<p>您确认要删除这些用户吗？</p>
										</div>
										<div class="modal-footer">
											<input type="hidden" id="url2" />
											<button type="button" class="btn btn-default"
												data-dismiss="modal">取消</button>
											<a onclick="deleteusers()" class="btn btn-success"
												data-dismiss="modal">确定</a>
										</div>
									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal-dialog -->
							</div>
							<!-- /.modal -->

							<!-- 模态框 查看所有角色-->
							<div class="modal fade" id="searchAuth" tabindex="-1"
								data-backdrop="static" data-keyboard="false" role="dialog"
								aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">&times;</button>
											<!--关闭符号-->
											<!--标题-->
											<h4 class="modal-title" id="myModalLabe">查看该用户的所有角色信息</h4>
										</div>
										<div class="modal-body">
											<table class="el_AuthInfo table table-border">
												<thead>
													<tr>
														<th>角色</th>
														<th>状态</th>
													</tr>
												</thead>
												<tbody id="rolesinfo">

												</tbody>
											</table>

										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">关闭</button>
										</div>

									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal -->
							</div>

						</div>

					</div>

				</div>
			</div>

		</div>
	</div>
	<script>
		var userName = document.getElementById("useridcard");
		var Reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/; //身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X 
		var i = 0;
		userName.onblur = function() {
			var msg = document.getElementById("msg3");

			if (userName.value == "" || userName.value == null) {
				msg.innerHTML = "账号不能为空!";
			} else {
				if (Reg.test(userName.value)) {
					msg.innerHTML = "";
					return i = 1;
				} else {
					msg.innerHTML = "请输入正确的身份证号!";
				}
			}
		}
	</script>
</body>
</html>
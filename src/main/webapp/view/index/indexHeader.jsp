<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%@ include file="/public/tag.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
<%@ include file="/public/indexCssJs.jsp"%>

    <!--输入验证-->
    <script src="<%=path %>/controls/validate/jquery.validate.js"></script>
    <script src="<%=path %>/controls/validate/messages_zh.js"></script>
	<script>
	/*表单验证*/
    $.validator.setDefaults({
        submitHandler:function(form){
            form.submit();//提交时拦截

        },
        errorElement:'div',
        errorPlacement: function(error, element) {
            error.addClass('tooltip tooltip-inner arrow-left');
            if (element.is(":radio")){
                error.appendTo(element.parent().next().next());
            }else if (element.is(":checkbox")){
                error.appendTo(element.next());
            }else{
                element.after(error);
            }
            var pos = $.extend({}, element.offset(), {
                    width: element.outerWidth()
                    , height: element.outerHeight()
                }),
                actualWidth = error.outerWidth(),
                actualHeight = error.outerHeight();
            if((pos.top - actualHeight)<0){actualHeight=0;pos.width+=10;}//如果输入框距离顶端为0情况把提示放右边
            if(element.parents(".blockPage").attr("class")=="blockUI blockMsg blockPage"){//如果是弹出框的，那么设置如下
                error.css({display:'block',opacity:'0.6' ,left:0,top:pos.top - $(document).scrollTop() - actualHeight - 100, "border-left": '0px'});
            }

        },
        highlight: function(element, errorClass) {
            //高亮显示
            $(element).addClass(errorClass);
            $(element).parents('li:first').children('label').addClass(errorClass);
        },
        unhighlight:function(element, errorClass){
            $(element).removeClass(errorClass);
            $(element).parents('li:first').children('label').removeClass(errorClass);
        }
    });

    $("#el_form").validate({
        rules: {
            username:"required",//发现日期
            password:"required"
        },
        messages: {
            username: {required: "不能为空"},
            password:{required: "不能为空"}
        }
    });

	</script>
    <!--验证码-->
    <script src="<%=path %>/controls/indentifyingCode/gVerify.js"></script>

    <link rel="stylesheet" href="<%=path %>/css/index/indexHeader.css">
    <script src="<%=path %>/js/index/indexHeader.js"></script>

</head>
<body>
<!--<导航>-->
<div class="el_nav">
    <div class="el_logoName">
        <img src="<%=path %>/image/logo.png" width="53"/>
        <a href="<%=path %>/index.jsp">
            山西煤电公司
            数据管理系统
        </a>
    </div>
    <div class="el_navUL">
        <ul>
            <a href="<%=path %>/view/index/newPage.jsp">
                <li>新闻中心</li>
            </a>
            <a href="<%=path %>/view/index/studyMainpage2.jsp">
                <li>数据管理</li>
            </a>
            <a href="">
                <li>关于我们</li>
            </a>
        </ul>
    </div>

    <!--右侧登录-->
    <div class="el_navLogin">
        <button class="btn btn-link btn-lg " data-toggle="modal" data-target="#myModal">
            <img src=""/>登录后台
        </button>
    </div>
</div>

<!-- 模态框 用户登录-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true" data-backdrop="false" data-keyboard="false">

    <div class="modal-dialog" id="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">&times;</button><!--关闭符号-->
                <!--标题-->
                <h3 class="modal-title" id="myModalLabel">用户登录</h3>
            </div>
            <form name="form1" method="post" id="el_form">

                <ul>
                    <li>
                        <label>用户名：</label>
                        <input type="text" class="form-control" name="username" placeholder="请输入用户名"/>
                    </li>
                    <li>
                        <label>密&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
                        <input type="password" class="form-control" name="password" placeholder="请输入你的密码"/>
                    </li>
                    <li>
                        <label>用户类型：</label>
                        <select class="form-control" name="el_chooseUser" id="el_userType">
                            <option value="1">员工</option>
                            <option value="2">管理员</option>
                        </select>
                        <!--<span class="tips" id="divpassword2"></span>-->
                    </li>
                    <li>
                        <label>验证码：</label>
                        <input type="text" class="form-control" id="code_input" value="" placeholder="请输入验证码"/>
                        <div class="el_validateCode" id="v_container"></div>
                    </li>
                </ul>
                <!--记住密码-->
                <div class="el_TipPassword">
                    <label>&nbsp;</label>
                    <input type="checkbox" name="isChecked" value="yes"/><span>记住密码</span>
                </div>
                <div class="el_sub_btn">
                    <button type="submit" class="btn btn-lg btn-block" id="my_button">
                        登录
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>
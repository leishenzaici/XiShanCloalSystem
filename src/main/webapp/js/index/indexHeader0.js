/**
 * Created by mafei on 2018/10/10
 */
var login_number = 0, denglu = false;
var verifyCode;
$(function() {
//	alert()
	// 记住密码功能
	var str = getCookie("logininfo");
//	alert(str)
	str = str.substring(1, str.length - 1);
	var username = str.split(",")[0];
	var password = str.split(",")[1];
	// 自动填充用户名和密码
//	alert(username+password)
	$("#form_username").val(username);
	$("#form_password").val(password);
	if (str != '') {
//		alert('bukong')
		$("#form_isRememberme").attr("checked", true);
	}
	// 初始化的时候打开模态框
//	initModal();
})

function modal_login() {
	if (login_number == 0) {
		$("#validate_code").hide();
	} else {
		$("#validate_code").show();
	}
	// 判断是否是直接访问主页
	$("#myModal").modal("show");
}

/**
 * 初始化的时候打开模态框
 */
function initModal() {
	if (login_number == 0) {
		$("#validate_code").hide();
	} else {
		$("#validate_code").show();
	}
	// 判断是否是直接访问主页
	var u = location.pathname;
	u = u.substring(6, u.length);
	if (!denglu && (u.length == 29 || u == "")) {
		if ($("#el_userType").find("[value='3']").length == 0) {
			$("#el_userType").append('<option value="3">学员</option>');
		}
	}
}
function Enter_login() {
	if (event.keyCode == 13) // 回车键的键值为13
		document.getElementById("my_button").click(); // 调用登录按钮的登录事件
}
//function login_error() {
//	verifyCode = new GVerify("v_container");
//	login_number += 1;
//	$("#code_input").val('');
//	$("#validate_code").show();
//	// 登录框的高
//	$("#myModal").find(".modal-content").css("height", "500");
//}

function login() {
//	alert()
	// 如果登录是以学员的身份登录的
//	if ($("#el_userType").val() == "3") {
//		var username_q = $("#form_username").val();
//		var password_q = $("#form_password").val();
//		if (username_q == "" || password_q == "") {
//			alert("用户名或密码不能为空!")
//			return;
//		}
//		// ajax从字典获取账号密码
//		$.ajax({
//			url : contextPath + '/dic_getDicNamesAndIdByUpid.action',
//			data : {
//				"upId" : "500"
//			},
//			type : "post",
//			success : function(response) {
//				var users = response.names;
//				if (users == null||users.length==0) {
//					alert("账号未开放，请联系管理员!");
//					return;
//				}
//				for (var i = 0, length_1 = users.length; i < length_1; i++) { // 登录成功
//					if (username_q == users[i].dictionaryname
//							&& password_q == users[i].discription) {
//						$("#myModal").modal("hide");
//						$("#el_userType option[value='3']").remove();
//						$("#closeModal").css("display", "block");
//						
//						initKnowledgeType();
//						// 页面加载的时候初始化页面的数据
//						initPageData();
//						
//						$(".el_navUL").css("display", "none");
//						$("#showMessage").css("display", "none");
//						return;
//					}
//				}
//				alert("账户或者密码错误!");
//			},
//			dataType : 'json'
//		});
//
//	} else {
//		var res = true;
//		if (login_number > 0) {
//			res = verifyCode
//					.validate(document.getElementById("code_input").value);
//		}
//		if (res) {
			$.ajax({
				url : contextPath + "/System/user/login",
				data : $("#el_form").serialize(),
				type : "POST",
				dataType : "json",
				success : function(data) {
//					console.log(data);
//					alert(data);
//					alert(data.login_result);
					var login_result = data.login_result;
//					var user_type = data.user_type;
					var login_url = data.login_url;
//					if ('2' == user_type) {
//						login_url = data.login_url;
//					}
					switch (login_result) {
					case 'success_manager':
//						console.log(contextPath + login_url);
//						alert(contextPath + login_url);
						window.location.href = contextPath + "/subpage.jsp";
						break;
					case 'error001':
						console.log(data)
						alert("该账号不存在");
//						login_error();
						break;
					case 'error002':
						alert("密码错误");
//						login_error();
						break;
					case 'error003':
						alert("该账号没有任何权限，不能使用该系统，请先分配角色");
//						login_error();
						break;
					case 'error':
						alert("未知错误");
//						login_error();
						break;
					
//						case 'success_employee':
//						window.location.href = baseUrlPath
//								+ "/view/lineExam/examInterface.jsp";
//						break;
					}
					
//					alert("jieshu");
				}
			
			})
//			alert("jieshu1");
}
//}

//
//function getCookie(name) 
//{ 
//    var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
// 
//    if(arr=document.cookie.match(reg))
//
//        return unescape(arr[2]); 
//    else 
//        return null; 
//} 

// 获取cookie
function getCookie(cname) {
	var name = cname + "=";
	var ca = document.cookie.split(';');
//	alert(ca)
	for (var i = 0; i < ca.length; i++) {
		var c = ca[i];
		while (c.charAt(0) == ' ')
			c = c.substring(1);
		if (c.indexOf(name) != -1)
			return c.substring(name.length, c.length);
	}
	return "";
}

//function getCookie(cookie_name)
//{
//    var allcookies = document.cookie;
//    var cookie_start = allcookies.indexOf(cookie_name); //寻找名第一次出现的位置
//    // 如果找到了就代表cookie存在
//    // 反之，就说明不存在。  
//    if (cookie_start != -1)
//    {
//        // 把cookie_start放在值的开始，只要给值加1即可。  
//        cookie_start += cookie_name.length + 1; 
//        var cookie_end = allcookies.indexOf(';', cookie_start);
//        if (cookie_end == -1)
//        {
//            cookie_end = allcookies.length;
//            return unescape(document.cookie.substring(c_start,c_end))
//        } 
//      }
//    return ""
//    }

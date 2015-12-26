<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>Register</title>
        <meta name="description" content="Expand, contract, animate forms with jQuery wihtout leaving the page" />
        <meta name="keywords" content="expand, form, css3, jquery, animate, width, height, adapt, unobtrusive javascript"/>
		<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<script src="js/cufon-yui.js" type="text/javascript"></script>
		<script src="js/ChunkFive_400.font.js" type="text/javascript"></script>
		<script type="text/javascript">
			Cufon.replace('h1',{ textShadow: '1px 1px #fff'});
			Cufon.replace('h2',{ textShadow: '1px 1px #fff'});
			Cufon.replace('h3',{ textShadow: '1px 1px #000'});
			Cufon.replace('.back');
		</script>
    </head>
    <body>
		<div class="wrapper">
			<div class="content">
				<div id="form_wrapper" class="form_wrapper">
					<s:form class="register active" action="register">
						<h3>Register</h3>
						<div class="column">
							<div>
								<label>用户名:</label>
								<input type="text" name="user.username" style="width: 254px; "/>
								<s:fielderror fieldName="usernameError"/>
							</div>
							<div>
								<label>密码:</label>
								<input type="password" name="user.password" style="width: 254px; "/>
								<s:fielderror fieldName="user.password"/>
							</div>
							<div>
								<label>重复密码:</label>
								<input type="password" name="user.rpassword" style="width: 254px; "/>
								<s:fielderror fieldName="user.rpassword"/>
							</div>
							<div>
								<label>性别:</label>
								<select name="user.gender">
									<option value="1">男</option>
									<option value="0">女</option>
								</select>
								<span class="error" >This is an error</span>
							</div>
						</div>
						<div class="bottom">
							<input type="submit" value="注册" />
							<a href="login.jsp" rel="login" class="linkform">已经有账号？点击登录</a>
							<div class="clear"></div>
						</div>
					</s:form>
				</div>
				<div class="clear"></div>
			</div>
		</div>
    </body>
</html>

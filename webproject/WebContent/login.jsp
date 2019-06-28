<!doctype html>
<html>

	<head>
		<title>注册登录</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<meta name="renderer" content="webkit" />
		<meta name="env" content="prod" />
		<meta name="startupDate" content="Fri Feb 01 2019 13:12:36 GMT+0800 (CST)" />
		<meta name="versionDate" content="/passport-node/20180827154234934" />
		<meta name="360-fullscreen" content="true" />
		<meta name="x5-fullscreen" content="true" />
		<meta name="full-screen" content="yes" />
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<link type="image/x-icon" href="//static1.mtime.cn/favicon.ico" rel="icon" />
		<link type="image/x-icon" href="//static1.mtime.cn/favicon.ico" rel="shortcut icon" />
		<link type="image/x-icon" href="//static1.mtime.cn/favicon.ico" rel="bookmark" />
		<link href="//static1.mtime.cn/nodewww/2019010318398/css/common/public.css" rel="stylesheet" />
		<link href="//static1.mtime.cn//passport-node/20180827154234934/style/register.css" rel="stylesheet" />
	</head>

	<body><input type="hidden" id="constScript" data-siteDomain=".mtime.com" /><noscript>您的浏览器不支持javascript，请开启它。否则将不能正常使用本站</noscript>

		<div id="app">
			<div class="regin_out">
				<div class="regin_line"></div>
				<div class="regin_inner fix">
					<div class="regin_left">
						<h5>新会员注册</h5>
						<dl>
							<dd>
								<div class="reg_txt "><input type="text" id="reg_mobile" placeholder="常用手机号" />
									<p class="reg_errtxt" id="reg_mobile_msg"></p>
								</div>
							</dd>
							<dd>
								<div class="reg_txt "><input type="password" id="reg_password" maxlength="20" placeholder="密码 (6-20位字母与数字、符号组合)" />
									<!--密码-->
									<p class="reg_errtxt" id="reg_password_msg">密码强度太低，请使用6-20位字母与数字、符号的组合</p>
									<div id="levelDiv" class="password_box">
										<p id="levelTip">密码强度</p>
										<p><i class="ps1"> </i><i class="ps2"></i><i class="ps3"></i></p>
									</div>
									<div class="password_tog " id="showPwdBtn"></div>
								</div>
							</dd>
							<dd>
								<div class="reg_txt reg_vcode"><input type="text" id="reg_vcode" placeholder="图片验证码" />
									<p class="reg_errtxt" id="reg_vcode_msg"></p>
								</div><span id="vcodeRegion" class="reg_vcodeimg"><span id="img_vcode"><img width="100" height="50" alt="点击更新新图" src="" style="cursor:pointer;" class="v_m mr6"/></span>
								<a id="btn_changevcode" class="px12 normal">刷新</a>
								</span>
							</dd>
							<dd>
								<div class="reg_txt"><input type="text" id="reg_smscode" placeholder="短信验证码" />
									<p class="reg_errtxt" id="reg_smscode_msg"></p>
									<a id="reg_smscodeBtn" href="#" class="get_telcode">获取验证码</a>
								</div>
							</dd>
							<dd>
								<div class="reg_selsex" id="sexRegion">性别：<span class="checkend"><i data-sex="1" data-selector="sex" class="reg_checkbox"></i>男<em class="ico_female"></em></span><span><i data-sex="2" data-selector="sex" class="reg_checkbox"></i>女<em class="ico_male"></em></span>
									<p id="sexErrorMsg" style="display:none;">请选择性别!</p><input type="hidden" id="hidSexValue" /></div>
							</dd>
							<dd>
								<div class="bind_pro"><span id="reg_policy" class="on"></span>
									<a href="http://feature.mtime.com/help/policy.htm" target="_blank">已同意《his影院电影服务》</a>
								</div>
							</dd><dt class="reg_btn"><a id="mobileRegisterBtn" class="btn_blue">注 册</a></dt></dl>
					</div>
					<div class="regin_right">
						<h5>会员登录</h5>
						<form id="loginForm" method="post">
							<dl>
								<dd>
									<div class="reg_txt "><input type="text" id="loginEmailText" name="email" placeholder="输入邮箱 / 手机号码" />
										<p class="reg_errtxt" id="loginEmailText_msg">请使用邮箱 / 手机号或 万达电影 账号登录 </p>
									</div>
								</dd>
								<dd>
									<div class="reg_txt"><input type="password" id="hidepassword" class="c_a5" style="display:none;" /><input type="password" id="loginPasswordText" placeholder="请输入密码" autocomplete="off" />
										<p class="reg_errtxt" id="hidepassword_msg">密码错误</p>
									</div>
								</dd>
								<dd id="login_vcode_hidden" style="display:none;">
									<div class="reg_txt reg_vcode"><input type="text" id="login_vcode" placeholder="图片验证码" />
										<p class="reg_errtxt" id="login_vcode_msg"></p>
									</div><span id="login_vcodeRegion" class="reg_vcodeimg"><span id="login_img_vcode"><img width="100" height="50" alt="点击更新新图" src="" style="cursor:pointer;" class="v_m mr6"/></span>
									<a id="btnlogin_changevcode" class="px12 normal">刷新</a>
									</span>
								</dd>
								<dd>
									<div class="bind_pro">
										<a id="forget_password" href="#" class="fr">忘记密码</a>
										<a href="javascript:;" data-login="loginWayChange" class="fl">短信验证码登录</a>
									</div>
								</dd>
								<dd>
									<p class="err_txt" id="login_errtxt"></p>
								</dd><dt class="reg_btn"><a id="loginButton" class="btn_blue">登 录</a></dt></dl>
						</form>
						<div id="smsLoginBox" style="display:none;">
							<dl>
								<dd>
									<div class="reg_txt "><input type="text" name="mobile" maxlength="11" id="smsLoginIpt" placeholder="请输入手机号" />
										<p class="reg_errtxt"></p>
									</div>
								</dd>
								<dd>
									<div class="reg_txt reg_vcode"><input type="text" id="smsImageIpt" placeholder="图片验证码" />
										<p class="reg_errtxt"></p>
									</div><span class="reg_vcodeimg" id="smsLoginImgvcode"><span><img width="100" height="50" data-login="smsImageGet" alt="点击更新新图" src="" style="cursor:pointer;" class="v_m mr6"/></span>
									<a class="px12 normal" data-login="smsImageGet">刷新</a>
									</span>
								</dd>
								<dd>
									<div class="reg_txt "><input type="text" name="sms" id="smsIpt" placeholder="短信验证码" />
										<p class="reg_errtxt"></p>
										<a href="javascript:;" class="getsmscode" id="smsGet">获取验证码</a>
									</div>
								</dd>
								<dd>
									<div class="bind_pro">
										<a href="javacript:;" data-login="loginWayChange" class="fl">帐号密码登录</a><i class="fr" style="color:#6f6f6f;">未注册手机验证后自动登录</i></div>
								</dd>
								<dd>
									<p class="err_txt"></p>
								</dd><dt class="reg_btn"><a class="btn_blue" id="smsLoginButton">登 录</a></dt></dl>
						</div>
						<dl class="regin_log3 fix">
							<dd>
								<a href="/unitelogin/dispatch/weixin/web/" class="weixin"></a>
								<a href="/unitelogin/dispatch/qq/web/" class="qq"></a>
								<a href="/unitelogin/dispatch/weibo/web/" class="sina"></a>
							</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
	</body>

</html>
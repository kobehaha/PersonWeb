function login() {
	var account = $('.login-account').val();
	var password = $('.login-password').val();
	var data = {
		account : account,
		password : password
	}
	// 本地环境为加上 personal
	$.post('/user/login', data, function(data) {
		if (data.resultCode == 0) {
			location.href = "/admin";
		} else {
			console.log(data.msg);
			$('.admin-login-alert').css('display', 'block');
			$('.admin-login-alert-msg').html(data.msg);
		}

	});
}

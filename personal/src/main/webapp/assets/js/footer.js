function login() {
	var account = $('.login-account').val();
	var password = $('.login-password').val();
	var data = {
		account : account,
		password : password
	}

	$.post('/personal/user/login', data, function(data) {
		if (data.resultCode == 0) {
			location.href = "/personal/admin";
		} else {
			console.log(data.msg);
			$('.admin-login-alert').css('display', 'block');
			$('.admin-login-alert-msg').html(data.msg);
		}

	});
}

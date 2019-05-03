$(document).ready(function() {
	$("#loginForm").validate({
		rules : {
			username : {
				required : true,
				minlength : 3,
				maxlength : 30
			},
			password : {
				required : true,
				minlength : 6,
				maxlength : 30
			}

		},
		message:{
			username : {
				required : "X",
				minlength : "X",
				maxlength : "X"
			},
			password : {
				required : "X",
				minlength : "X",
				maxlength : "X"
			}
		}
	});
});
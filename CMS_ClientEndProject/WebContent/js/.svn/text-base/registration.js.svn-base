
    $(function () {
        $("#submit").click(function () {
            var password = $("#password").val();
            var confirmPassword = $("#cpassword").val();
            var empid = $("#e_id").val();
			var ephoneno = $("#e_phoneno").val();
            
            if(!$.isNumeric(empid)){
            	alert("Enter Valid Employee ID.");
                return false;
            }
            if(!$.isNumeric(ephoneno)){
            	alert("Enter Valid Phone no.");
                return false;
            }
            
            if (password != confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }
            return true;
        });
    });

$(function(){
  		$('#login_button').on('click',function(){
  			var login={
  					login_username: $('#login_username').val(),
  					login_password: $('#login_password').val(),
  					action : 'login'
  			};
  			$.ajax({
  				type: 'POST',
  				url: 'http://localhost:8080/CMS_ClientEndProject/ControllerServlet',
  				data: login, 
  				success: function(data,status,xhr){
  					if(xhr.status==200){
  						window.location.href = data.link;
  					}else{
  						$('#message').html('<p class="text-danger">'+data.message+'</p>');
  					}
  				},
  				error: function(msg){
  					alert('Some error occour at server');
  				}
  			});
  		});
  		
  		$('#registration_button').on('click',function(){
  			var employee={
  					e_fname: $('#e_fname').val(),
  					e_lname: $('#e_lname').val(),
  					e_id: $('#e_id').val(),
  					e_email: $('#e_email').val(),
  					password: $('#password').val(),
  					e_phoneno: $('#e_phoneno').val(),
  					action : 'register'
  			};
  			
  			$.ajax({
  				type: 'POST',
  				url: 'http://localhost:8080/CMS_ClientEndProject/ControllerServlet',
  				data: employee, 
  				success: function(data,status,xhr){
  					if(xhr.status==200){
  						$('#message_reg').html('<p class="text-success">'+data.message+'</p>');
  						
  					}
  					else{
  						$('#message_reg').html('<p class="text-danger">'+data.message+'</p>');
  					}
  				},
  				error: function(msg){
  					alert('Some error occour at server');
  				}
  			});
  		});
  	});

/*$(document).ready(function(){
    $("#login_button").click(function(){
        $.post('http://localhost:8080/CMS_ClientEndProject/ControllerServlet',
        		{
		        	login_username: $('#login_username').val(),
					login_password: $('#login_password').val(),
					action : 'login'
        		},		
        		function(data,status){
        			if(status==200){
        				alert("Data: " + data.e_name);
        			}
        			else{
        				alert("Data: " + data.message);
        			}
            
        });
    });
});*/
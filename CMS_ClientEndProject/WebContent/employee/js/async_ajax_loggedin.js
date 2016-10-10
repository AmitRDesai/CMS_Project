$(function(){
	
		function addItems(items){
			/*$('#items').html('');*/
			$.each(items, function(i, order){
				$('#items').append('<div class="media wow fadeInUp col-md-6 col-sm-12" data-wow-delay="0.3s">'+
          '<div class="media-object pull-left">'+
            '<img src="images/gallery-img1.jpg" class="img-responsive" alt="Food Menu">'+
            '<span class="menu-price">$24</span>'+
          '</div>'+
          '<div class="media-body">'+
            '<h3 class="media-heading">'+order.i_name+'</h3>'+
            '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elitquisque tempus ac eget diam et.</p>'+
          '</div>'+
        '</div>')
			});
		}
	
  		$('.iso-box').on('click',function(){
  			//alert('clicked');
  			var vendor={
  					v_id: this.id,
  					operation: 'get_items'
  			};
  			$.ajax({
  				type: 'POST',
  				url: 'http://localhost:8080/CMS_ClientEndProject/EmployeeController',
  				data: vendor, 
  				success: function(data,status,xhr){
  					if(xhr.status==200){
  						addItems(data);
  					}else if(xhr.status==201){
  						alert(data.message);
  					}
  				},
  				error: function(msg){
  					alert('Some error occour at server');
  				}
  			});
  			//$.scrollTo('#menu');
  			$('html, body').animate({
                scrollTop: $("#menu").offset().top
            }, 500)
  			//window.location.href = 'dashboard.jsp#menu';
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
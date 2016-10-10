$(function() {
	
	$.ajax({
		type : 'POST',
		url : 'http://localhost:8080/CMS_ClientEndProject/EmployeeController',
		data : {
			operation : 'get_vendors'
		},
		success : function(data, status, xhr) {
			if (xhr.status == 200) {
				addVendor(data);
			} else if (xhr.status == 201) {
				alert(data.message);
			}
		},
		error : function(msg) {
			alert('Some error occour at server');
		}

	});
	
	function addVendor(vendors) {
		/* $('#items').html(''); */
		$
				.each(
						vendors,
						function(i, vendor) {
							if(i==0){
								ajaxCallItems(vendor.v_id);
							}
							$('#vendors')
									.append(
											'<div id="'+vendor.v_id+'" class="iso-box '+vendor.v_type+' col-md-4 col-sm-6">'+
					                          '<div class="gallery-thumb">'+
					                           '<img src="images/gallery-img1.jpg" class="fluid-img" alt="Gallery">'+
					                            '<div class="gallery-overlay">'+
					                                  '<div class="gallery-item">'+
					                                    '<i class="fa fa-search"></i>'+
					                                  '</div>'+
					                                '</div>'+
					                          '</div>'+
					                          '<h3>'+vendor.v_name+'</h3>'+
					                        '</div>'
						)});
		
	}

	
	function ajaxCallItems(vid){
		// alert('clicked');
		var vendor = {
			v_id : vid,
			operation : 'get_items'
		};
		$
				.ajax({
					type : 'POST',
					url : 'http://localhost:8080/CMS_ClientEndProject/EmployeeController',
					data : vendor,
					success : function(data, status, xhr) {
						if (xhr.status == 200) {
							addItems(data);
						} else if (xhr.status == 201) {
							$('#items').html('<div style="text-align:center;" class="media wow fadeInUp col-md-12 col-sm-12" data-wow-delay="0.3s">'+
									'<h3>'+data.message+'</h3>'+
									'</div>'); 
						}
					},
					error : function(msg) {
						alert('Some error occour at server');
					}
				});
		// $.scrollTo('#menu');
		// window.location.href = 'dashboard.jsp#menu';
	}
	
	function addItems(items) {
		$('#items').html(''); 
		$
				.each(
						items,
						function(i, order) {
							$('#items')
									.append(
											'<div class="media wow fadeInUp col-md-6 col-sm-12" data-wow-delay="0.3s">'
													+ '<div class="media-object pull-left">'
													+ '<img src="images/gallery-img1.jpg" class="img-responsive" alt="Food Menu">'
													+ '<span class="menu-price">$'+order.i_price+'</span>'
													+ '</div>'
													+ '<div class="media-body">'
													+ '<h3 class="media-heading">'
													+ order.i_name
													+ '</h3>'
													+ '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elitquisque tempus ac eget diam et.</p>'
													+ '</div>' + '</div>')
						});
	}

	$('#vendors')
			.on(
					'click','.iso-box',
					function() {
						ajaxCallItems(this.id);
						$('html, body').animate({
							scrollTop : $("#menu").offset().top
						}, 500)
					});

});

/*
 * $(document).ready(function(){ $("#login_button").click(function(){
 * $.post('http://localhost:8080/CMS_ClientEndProject/ControllerServlet', {
 * login_username: $('#login_username').val(), login_password:
 * $('#login_password').val(), action : 'login' }, function(data,status){
 * if(status==200){ alert("Data: " + data.e_name); } else{ alert("Data: " +
 * data.message); }
 * 
 * }); }); });
 */
for(var i=0;i<3;i++){
	$(document).ready(function() {
		$('#comment'+i).blur(function() {
			$.ajax({
				url : 'GetUserServlet',
				data : {
					userId : $('#userName').val()
				},
				success : function(responseText) {
					$('#ajaxGetUserServletResponse').text(responseText);
				}
			});
		});
	});
}
$(function() {
	$("#closeBtn").click(function() {
		$("#popup").hide();

		// [v]오늘하루보기않기 체크된 값
		//var chkVal = $("input:checkbox[id=inactiveToday]:checked").val();
		var chkVal = $("input[id=inactiveToday]:checked").val();
		if (chkVal == 1) {
			$.ajax({
				type: "get",
				url: "./popupCookie.jsp",
				data: "inactiveToday=1",
				dataType: "text",
				success: function(resData) {
					if (resData != '')
						location.reload();
				}
			});
		}

	});
});
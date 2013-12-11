$(document).ready(function() {
	$('.clue-box').not(':first').hide();
});

$(document).ready(function() {

	$('.new_answer').on('submit', function(event) {
		console.log(event);

		$(this).find('input[type=submit]').prop({
			disabled: true
		});

	});

	$('input[type=submit]').on('click', function() {
		$(this).parent().parent().next().show();

		$(this).parent().append("what");
	});
});

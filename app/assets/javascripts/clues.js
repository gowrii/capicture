$(document).ready(function() {
	$('.clue-box').not(':first').hide();
});

$(document).ready(function() {

	$('.new_answer').on('submit', function(event) {
		event.preventDefault();
		
		// console.log();
		
		$(this).find('input[type=submit]').prop({
			disabled: true
		});

	});

	$('input[type=submit]').on('click', function() {
		$(this).parent().parent().next().show();

		$(this).parent().append($('#answer_input_0').val());
	});
});

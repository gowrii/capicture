$(document).ready(function() {
	$('.clue-box').not(':first').hide();
	// $('.user-input').hide();
});

$(document).ready(function() {
	$('.new_answer').on('submit', function(event) {
		event.preventDefault();

		var url = $(this).attr("action");
		var self = $(this);
		var data = $(this).serialize();

		$.ajax({
			type: "POST",
			url: url,
			data: data,
			dataType: "json"
		}).done(function(result) {
			$('.user-input').last().html(result.input);

			self.find('input[type=submit]').prop({
				disabled: true
			});

			self.parent().next().show();
			self.find('div').show();		
		});

	});
});



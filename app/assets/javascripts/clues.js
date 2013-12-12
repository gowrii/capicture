$(document).ready(function() {
	$('.clue-box').not(':first').hide();
});

$(document).ready(function() {
	$('.new_answer').on('submit', function(event) {
		var self = $(this),
				value = self.find('input[type=text]').val();

		event.preventDefault();
		
		self.find('input[type=submit]').prop({
			disabled: true
		});

		self.parent().next().show();		

		self.find('.user-input').html(value);

	});
});

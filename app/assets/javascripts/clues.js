$(document).ready(function() {
	$('.clue-box').not(':first').hide();
	$('.user-input').hide();
});

$(document).ready(function() {
	$('.new_answer').on('submit', function(event) {
		var self = $(this);
		var value = self.find('input[type=file]').val();

		event.preventDefault();
		
		self.find('input[type=submit]').prop({
			disabled: true
		});

		self.parent().next().show();
		self.find('div').show();		

		self.find('.user-input').html(value);

	});
});

rendering
renderContentOn: html
	html heading
		level: 1;
		with: self trailName.

	html anchor
		callback: [ self call: (self class new count: count+1; yourself) ];
		with: 'Call'.
		
	html space.
		
	html anchor
		callback: [ self answer ];
		with: 'Answer'
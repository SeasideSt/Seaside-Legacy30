rendering
renderMonthNavigationOn: html
	html span
		class: 'calendarPrevious';
		with: [
			html anchor
				callback: [self month: self month previous];
				with: (self month previous name first: 3) ].
	html space.
	html span
		class: 'calendarNext';
		with: [
			html anchor
				callback: [self month: self month next];
				with: (self month next name first: 3) ]
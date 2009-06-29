actions
calendarLoop
	self session presenter
		show: WAMiniCalendar new
		onAnswer: [ :answer | self requestContext closeThisPopup ]
rendering
renderMonthNavigationOn: html
	html table cellspacing:0; with: [	
		html tableRow class: 'monthRow'; with: [
			html tableData class: 'calendarPrevious';
			with: [
				html anchor
					callback: [self previousMonth];
					onClick: ((html evaluator)
						callback: [:script | self previousMonth. self scriptUpdateOn: script];
							return: false);
					with: '<<' ].
			html tableData class: 'monthCurrent'; with: (self month name).
			html tableData
				class: 'calendarNext';
				with: [html anchor
						callback: [self nextMonth];
						onClick: ((html evaluator)
							callback: [:script | self nextMonth. self scriptUpdateOn: script];
							return: false);
						with: '>>'] ] ]
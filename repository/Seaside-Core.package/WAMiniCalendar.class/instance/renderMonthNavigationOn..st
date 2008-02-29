rendering
renderMonthNavigationOn: html
	| tab |
	tab := #(12 1 2 3 4 5 6 7 8 9 10 11 12 1).
	html span
		class: 'calendarPrevious';
		with: 
			[html anchor
				callback: [
					self monthIndex = 1
						ifTrue: [ self monthIndex: 12; year: self year - 1]
						ifFalse: [ self monthIndex: self monthIndex - 1 ]];
				with: ((self monthNames at: (tab at: self monthIndex)) first: 3)].
	html space.
	html span
		class: 'calendarNext';
		with: 
			[html anchor
				callback: [
					self monthIndex = 12
						ifTrue: [ self monthIndex: 1; year: self year + 1]
						ifFalse: [ self monthIndex: self monthIndex + 1 ]];
				with: ((self monthNames at: (tab at: self monthIndex + 2)) first: 3)].
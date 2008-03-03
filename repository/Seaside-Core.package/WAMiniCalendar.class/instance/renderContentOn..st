rendering
renderContentOn: html
	html div
		class: 'calendar';
		with: [
			html span
				class: 'calendarCaption';
				with: [ self renderMonthHeadingOn: html ].
			html table: [
				html tableRow
					class: 'calendarTitle';
						with: [
						self weekDays do: [ :each |
							html tableData: each ] ].
				self month weeksDo: [ :week |
					self renderRowForWeek: week on: html ] ].

			self renderMonthNavigationOn: html.
			html space; space.
			self renderYearNavigationOn: html ]
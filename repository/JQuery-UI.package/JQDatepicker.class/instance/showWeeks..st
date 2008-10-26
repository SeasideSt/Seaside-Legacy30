options
showWeeks: aBoolean
	"Display the week of the year alongside each month. The column header is specified by the ''weekHeader'' setting. The week number is calculated based on the first date shown in each row in the datepicker, and so may not apply to all days in that row. The ''calculateWeek'' setting allows you to change the week of the year calculation from the default ISO 8601 implementation."

	self optionAt: 'showWeeks' put: aBoolean
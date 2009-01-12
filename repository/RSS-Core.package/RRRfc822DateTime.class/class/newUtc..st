instance creation
newUtc: aDateAndTime
	^self
		dateAndTime: aDateAndTime asUTC
		timezoneString: 'UT'
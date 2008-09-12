instance creation
newDateAndTime: aDateAndTime offset: aDuration
	^self
		dateAndTime: aDateAndTime
		timezoneString: (self offsetString:  aDuration)
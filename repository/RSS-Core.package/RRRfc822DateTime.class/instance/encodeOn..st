printing
encodeOn: aDocument
	WAPlatform current
		rfc822StringOfDateTime: dateAndTime
		timezone: timezoneString
		on: aDocument
printing
encodeOn: aDocument 
	GRPlatform current 
		rfc822StringOfDateTime: dateAndTime
		timezone: timezoneString
		on: aDocument
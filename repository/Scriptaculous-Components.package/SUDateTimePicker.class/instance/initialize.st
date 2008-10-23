initialize-release
initialize
	| now |
	super initialize.
	showSeconds := false.
	now := DateAndTime now.
	hours := now hours.
	minutes := now minutes.
	seconds := 0
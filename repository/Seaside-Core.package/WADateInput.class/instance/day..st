private callbacks
day: anIntegerOrString
	day := [anIntegerOrString asNumber] on: Error do: [:e | 1]
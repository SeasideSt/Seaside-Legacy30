private callbacks
hours: anIntegerOrString
	hours := [anIntegerOrString asNumber] on: Error do: [:e | 0]
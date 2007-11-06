private callbacks
year: anIntegerOrString
	year := [anIntegerOrString asNumber] on: Error do: [:e | 1900]
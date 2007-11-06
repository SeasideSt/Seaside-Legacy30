private callbacks
minutes: anIntegerOrString
	minutes := [anIntegerOrString asNumber] on: Error do: [:e | 0]
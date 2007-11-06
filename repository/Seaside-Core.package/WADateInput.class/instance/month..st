private callbacks
month: anIntegerOrString
	month := [anIntegerOrString asNumber] on: Error do: [:e | 1]
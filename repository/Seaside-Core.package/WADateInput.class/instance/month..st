private callbacks
month: anIntegerOrString
	month := [ anIntegerOrString asInteger ] on: Error do: [ :error | 1 ]
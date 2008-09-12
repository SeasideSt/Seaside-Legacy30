private callbacks
minutes: anIntegerOrString
	minutes := [ anIntegerOrString asInteger ] on: Error do: [ :error | 0]
private callbacks
day: anIntegerOrString
	day := [ anIntegerOrString asInteger ] on: Error do: [ :e | 1 ]
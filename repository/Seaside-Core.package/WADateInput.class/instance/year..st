private callbacks
year: anIntegerOrString
	year := [ anIntegerOrString asInteger ] on: Error do: [ :e | 1900 ]
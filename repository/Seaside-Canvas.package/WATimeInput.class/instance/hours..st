private callbacks
hours: anIntegerOrString
	hours := [ anIntegerOrString asInteger ] on: Error do: [ :e | 0 ]
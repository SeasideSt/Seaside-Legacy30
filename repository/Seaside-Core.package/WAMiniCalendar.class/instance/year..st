accessing-delegated
year: anIntegerOrString
	| year |
	year := [ anIntegerOrString asInteger ] on: Error do: [ :error | 1900 ].
	self month: (Month month: self month monthIndex year: year)